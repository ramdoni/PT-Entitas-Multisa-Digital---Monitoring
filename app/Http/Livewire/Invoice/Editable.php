<?php

namespace App\Http\Livewire\Invoice;

use Livewire\Component;
use App\Models\Income;

class Editable extends Component
{
    public $data,$field,$value,$edit=false,$type_input='text';
    protected $listeners = ['reload'=>'$refresh'];
    public function render()
    {
        return view('livewire.invoice.editable');
    }

    public function mount($data,$field)
    {
        $this->data = $data; $this->field = $field;$this->value = $data->$field;
        
        if(in_array($field,['payment_date','created_at','invoice_receive','invoice_sent'])) $this->type_input = 'date';
        if(in_array($field,['top_day'])) $this->type_input = 'number';
    }
    public function set_edit($condition)
    {
        $this->edit = $condition;
    }
    public function save()
    {
        $field = $this->field;
        $this->data->$field = $this->value;

        if(in_array($field,['invoice_receive','top_day'])){
            $this->data->due_date = date('Y-m-d',strtotime($this->data->invoice_receive ." +{$this->data->top_day} days"));

            Income::where(['transaction_table'=>'invoices','transaction_id'=>$this->data->id])->update(
                [
                    'due_date'=>$this->data->due_date,
                    'invoice_receive'=>$this->data->invoice_receive
                ]
            );
        }
        
        $this->data->save();

        \LogActivity::add("Bank Book - Edit {$this->data->id}");

        $this->edit=false;
        $this->emit('message-success','data saved successfully');
        $this->emit('reload');
    }
}
