<?php

namespace App\Http\Livewire\Quotation;

use Livewire\Component;
use App\Models\Quotation;
use App\Models\Material;
use App\Models\Vendor;

class Create extends Component
{
    protected $listeners = ['reload'=>'$refresh'];

    public $form=[
        'total_quotation'=>0,
        'ujrah'=>0,
        'ujrah_amount'=>0,
        'factor'=>0,
        'factor_amount'=>0,
        'grand_total'=>0,
        'tabbaru'=>0
    ];
    public $material_selected_id,$arr_part=[],$materials=[],$material_selected,$material_qty=0,$arr_parts=[],$total_quotation=0,
            $ujrah=0,$ujrah_amount=0;
    public $vendors=[],$arr_vendor=[],$vendor_selected,$vendor_selected_id,$engineer_description,$engineer_qty,$engineer_price,$engineer_unit;

    public function render()
    {
        return view('livewire.quotation.create');
    }

    public function mount()
    {
        $this->materials = Material::orderBy('name','ASC')->get();
        $this->vendors = Vendor::where('type',2)->orderBy('name','ASC')->get();
    }

    public function updated($propertyName)
    {
        if($propertyName=='material_selected_id'){
            $this->material_selected = Material::find($this->material_selected_id);
            $this->material_qty = 1;
        }

        if($propertyName=='form.responsibility'){
            $this->form['project_code'] = $this->form['responsibility'] .'/'.str_pad(( Quotation::count()+1),4, '0', STR_PAD_LEFT);;
        }   

        if($propertyName=='vendor_selected_id'){
            $this->vendor_selected = Vendor::find($this->vendor_selected_id);
            $this->engineer_qty = 1;
        }

        $this->calculate();
    }

    public function assign_part()
    {
        if($this->material_selected_id){
            $item = Material::find($this->material_selected_id);

            $find = array_search($this->material_selected_id, array_column($this->arr_parts, 'id'));

            if($find!=""){
                foreach($this->arr_parts as $k=>$i){
                    if($i['id']==$this->material_selected_id) $this->arr_parts[$k]['qty'] +=  $this->material_qty;

                    $this->arr_parts[$k]['total'] = ($this->arr_parts[$k]['price'] and $this->arr_parts[$k]['qty']>0) ? ($this->arr_parts[$k]['price'] * $this->arr_parts[$k]['qty']) : 0;
                }
            }else{
                $this->arr_parts[] = [
                    'id'=>$item->id,
                    'name'=>$item->name,
                    'brand'=>$item->brand?$item->brand->name:'-',
                    'modelcode'=>$item->modelcode?$item->modelcode->name:'-',
                    'qty'=>$this->material_qty,
                    'uom'=>$item->uom?$item->uom->name:'-',
                    'price'=>$item->price,
                    'total'=>($item->price and $this->material_qty>0) ? ($item->price * $this->material_qty) : 0,
                ];
            }

            $this->calculate();
        }
        $this->reset('material_selected','material_selected_id','material_qty');
    }

    public function assign_engineer()
    {
        if($this->vendor_selected_id){

            $find = array_search($this->vendor_selected_id, array_column($this->arr_vendor, 'id'));
            
            if($find!=""){
                foreach($this->arr_vendor as $k=>$i){
                    if($i['id']==$this->vendor_selected_id) $this->arr_vendor[$k]['qty'] +=  $this->vendor_qty;

                    $this->arr_vendor[$k]['total'] = ($this->arr_vendor[$k]['price'] and $this->arr_vendor[$k]['qty']>0) ? ($this->arr_vendor[$k]['price'] * $this->arr_vendor[$k]['qty']) : 0;
                }
            }else{
                $this->arr_vendor[] = [
                    'vendor_detail'=>json_encode($this->vendor_selected),
                    'id'=>$this->vendor_selected_id,
                    'name'=>$this->vendor_selected->name,
                    'description'=>$this->engineer_description,
                    'qty'=>$this->engineer_qty,
                    'unit'=>$this->engineer_unit,
                    'price'=>$this->engineer_price,
                    'total'=>($this->engineer_price and $this->engineer_qty>0) ? ($this->engineer_price * $this->engineer_qty) : 0,
                ];
            }

            $this->calculate();

            $this->reset('vendor_selected_id','vendor_selected','engineer_description','engineer_qty','engineer_unit','engineer_price');
        }
    }

    public function calculate()
    {
        $this->form['total_quotation'] = 0;
        foreach($this->arr_parts as $k=>$i){
            $this->arr_parts[$k]['total'] = ($this->arr_parts[$k]['price'] and $this->arr_parts[$k]['qty']>0) ? ($this->arr_parts[$k]['price'] * $this->arr_parts[$k]['qty']) : 0;
            $this->form['total_quotation'] += $this->arr_parts[$k]['total'];
        }

        foreach($this->arr_vendor as $k=>$i){
            $this->arr_vendor[$k]['total'] = ($this->arr_vendor[$k]['price'] and $this->arr_vendor[$k]['qty']>0) ? ($this->arr_vendor[$k]['price'] * $this->arr_vendor[$k]['qty']) : 0;
            $this->form['total_quotation'] += $this->arr_vendor[$k]['total'];
        }

        if($this->form['factor'] and $this->form['total_quotation']){
            $this->form['factor_amount'] = $this->form['factor'] /100 * $this->form['total_quotation'];
        }

        $this->form['tabbaru'] = $this->form['total_quotation'] + $this->form['factor_amount'];

        if($this->form['ujrah'] and $this->form['tabbaru']){
            $this->form['ujrah_amount'] = $this->form['ujrah'] /100 * $this->form['tabbaru'];
        }
        
        $this->form['grand_total'] = $this->form['tabbaru'] + $this->form['ujrah_amount'];
    }

    public function delete_part($key)
    {
        unset($this->arr_parts[$key]);
    }

    public function delete_vendor($key)
    {
        unset($this->arr_vendor[$key]);
    }

    public function save()
    {
        $this->validate([
            'form.project_type'=>'required'
        ]);

        Quotation::create($this->form);

        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->route('quotation.index');
    }
}
