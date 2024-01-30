<?php

namespace App\Http\Livewire\Quotation;

use App\Models\PurchaseOrder;
use App\Models\Quotation;
use Livewire\Component;
use Livewire\WithFileUploads;

class PoSuccess extends Component
{
    use WithFileUploads;

    public $form=[
        'quotation_id'=>'',
        'status'=>0,
        'po_date'=>'',
        'inclusive_taxes'=>1,
        'inclusive_taxes_amount'=>0,
        'grand_total'=>0,
        'type'=>1
    ],$file,
    $temp=[];

    public $valid = [
        'form.quotation_id'=>'required',
        'form.po_number'=>'required',
        'form.po_date'=>'required',
        'form.amount'=>'required',
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
        if(in_array($propertyName,['form.amount','form.inclusive_taxes'])){
            if($this->form['inclusive_taxes']){
                $this->form['inclusive_taxes_amount'] = 11/100* $this->form['amount'];
                $this->temp['inclusive_taxes_amount'] = format_idr($this->form['inclusive_taxes_amount']);
            }

            $this->form['grand_total'] = $this->form['amount'] + $this->form['inclusive_taxes_amount'];
            $this->temp['grand_total'] = format_idr($this->form['grand_total']);
        }
    }

    public function set_id($id)
    {
        $this->form['quotation_id'] = $id;
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
        
        PurchaseOrder::create($this->form);

        Quotation::find($this->form['quotation_id'])->update(['status'=>1]);
        
        session()->flash('message-success',__('Purchase Order berhasil di submit'));

        return redirect()->route('quotation.index');
    }
}
