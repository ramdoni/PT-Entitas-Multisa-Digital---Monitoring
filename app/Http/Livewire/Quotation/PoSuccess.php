<?php

namespace App\Http\Livewire\Quotation;

use App\Models\Brand;
use App\Models\Modelcode;
use App\Models\PurchaseOrder;
use App\Models\PurchaseOrderMaterial;
use App\Models\Quotation;
use App\Models\Uom;
use Livewire\Component;
use Livewire\WithFileUploads;

class PoSuccess extends Component
{
    use WithFileUploads;
    public $parts = [];
    public $form=[
        'quotation_id'=>'',
        'status'=>0,
        'po_date'=>'',
        'inclusive_taxes'=>1,
        'inclusive_taxes_amount'=>0,
        'grand_total'=>0,
        'type'=>1,
        'amount'=>0
    ],$file,
    $temp=[];
    public $quotation,$tax=11;
    public $check_id=[];
    public $valid = [
        'form.quotation_id'=>'required',
        'form.po_number'=>'required',
        'form.po_date'=>'required',
        'form.amount'=>'required|numeric|min:0|not_in:0',
    ];

    protected $listeners = ['set_id'=>'set_id'];
    public function render()
    {
        return view('livewire.quotation.po-success');
    }

    public function mount()
    {
        $this->form['po_date'] = date('Y-m-d');
    }

    public function updated($propertyName)
    {
        $this->calculate();
    }

    public function calculate()
    {
        $this->form['amount']=0;
        foreach($this->parts as $k=>$item){
            if($this->check_id[$k]) $this->form['amount'] +=$item['qty']*$item['price'];
        }

        if($this->form['inclusive_taxes']){
            $this->form['inclusive_taxes_amount'] = $this->tax/100* $this->form['amount'];
            $this->temp['inclusive_taxes_amount'] = format_idr($this->form['inclusive_taxes_amount']);
        }else{
            $this->form['inclusive_taxes_amount'] = 0;
            $this->temp['inclusive_taxes_amount'] = 0;
        }

        $this->form['grand_total'] = $this->form['amount'] + $this->form['inclusive_taxes_amount'];
        $this->temp['grand_total'] = format_idr($this->form['grand_total']);

    }

    public function set_id($id)
    {
        $this->form['quotation_id'] = $id;
        $this->quotation = Quotation::find($id);
        $this->parts=[];$this->check_id=[];$this->form['amount']=0;
        foreach($this->quotation->parts as $k=>$item){
            $this->check_id[] = $item->id;

            $brand = Brand::find(@$item->material_detail['brand_id']);
            $model = Modelcode::find(@$item->material_detail['model_code_id']);
            $uom = Uom::find(@$item->material_detail['uom_id']);

            $this->parts[] = [
                'id'=>$item->id,
                'quotation_id'=>$id,
                'material_id'=>$item->material_id,
                'qty'=>$item->qty,
                'price'=>$item->price,
                'total'=>$item->qty * $item->price,
                'material_row'=>$item->material_detail,
                'brand'=>$brand?$brand->name:'',
                'uom'=>$uom?$uom->name:'',
                'model'=>$model?$model->name:'',
            ];
            $this->form['amount'] += $this->parts[$k]['total'];
        }

        $this->calculate();
    }

    public function save()
    {
        if($this->file) $this->valid['file'] = 'mimes:jpeg,bmp,png,gif,svg,pdf,doc,docx';

        $this->validate($this->valid);

        if($this->file){
            $name = 'po-'.date('dmYHis').'.'.$this->file->extension();
            $this->file->storePubliclyAs("public/quotation/{$this->form['quotation_id']}/",$name);
            $this->form['file'] = "storage/quotation/{$this->form['quotation_id']}/{$name}";
        }

        $po = PurchaseOrder::create($this->form);

        foreach($this->parts as $k=>$item){
            PurchaseOrderMaterial::create([
                'purchase_order_id'=>$po->id,
                'material_id'=>$item['material_id'],
                'qty'=>$item['qty'],
                'price'=>$item['price'],
                'total'=>$item['total'],
                'material_row'=>$item['material_row'],
                'brand'=>$item['brand'],
                'uom'=>$item['uom'],
                'model'=>$item['model']
            ]);
        }

        Quotation::find($this->form['quotation_id'])->update(['status'=>1]);

        session()->flash('message-success',__('Purchase Order berhasil di submit'));

        return redirect()->route('quotation.index');
    }
}
