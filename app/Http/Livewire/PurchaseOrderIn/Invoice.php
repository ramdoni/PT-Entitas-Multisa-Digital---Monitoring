<?php

namespace App\Http\Livewire\PurchaseOrderIn;

use App\Models\Income;
use App\Models\Invoice as ModelsInvoice;
use App\Models\PurchaseOrder;
use Livewire\Component;
use Livewire\WithFileUploads;

class Invoice extends Component
{
    use WithFileUploads;
    public $form = [
        'purchase_order_id'=>'',
        'invoice_number'=>'',
        'top_day'=>0,
        'discount'=>0,
        'tax'=>0
    ],$temp=[
        'nett_amount'=>0
    ],$use_tax=0;
    public $purchase_order,$file;
    protected $listeners = ['selected_id'=>'selected_id'];
    public function render()
    {
        return view('livewire.purchase-order-in.invoice');
    }

    public function mount()
    {
        $this->form['user_id'] = \Auth::user()->id;
    }
    public function updated($propertyName)
    {
        if(in_array($propertyName,['form.amount','form.discount','use_tax'])){
            $this->calculate();
        }
    }

    public function calculate()
    {
        $this->form['nett_amount'] = $this->form['amount'];

        if($this->form['discount']>0) $this->form['nett_amount'] -= $this->form['discount'];
        if($this->use_tax>0){
            $this->form['tax'] = (11/100*$this->form['nett_amount']);
            $this->form['nett_amount'] += $this->form['tax'];
        } 

        $this->temp['nett_amount'] = format_idr($this->form['nett_amount']);
        $this->temp['tax'] = format_idr($this->form['tax']);
    }

    public function selected_id($id)
    {
        $this->purchase_order = PurchaseOrder::find($id);
        $this->form['purchase_order_id'] = $this->purchase_order->id;
        $this->form['invoice_number'] = 'INV/'.$id.'/'.date('dY');
        $this->form['invoice_date'] = date('Y-m-d');
        $this->form['purchase_order_detail'] = $this->purchase_order;
    }

    public function save()
    {
        $this->validate([
            'form.top_day'=>'required',
            'form.invoice_number'=>'required',
            'form.amount'=>'required'
        ]);

        $data = ModelsInvoice::create($this->form);

        Income::create([
            'transaction_id'=>$data->id,
            'transaction_table'=>'invoices',
            'nominal'=>$this->form['nett_amount'],
            'reference_no'=>$this->form['invoice_number'],
            'reference_date'=>$this->form['invoice_date'],
            'client'=>isset($data->purchase_order->quotation->project_name) ? $data->purchase_order->quotation->project_name : '',
            'status'=>1,
            'payment_amount'=>$this->form['nett_amount'],
            'invoice_detail'=>$data,
            'purchase_order_detail'=>$data->purchase_order,
            'quotation_detail'=>$data->purchase_order->quotation
        ]);

        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->route('invoice.index');
    }
}
