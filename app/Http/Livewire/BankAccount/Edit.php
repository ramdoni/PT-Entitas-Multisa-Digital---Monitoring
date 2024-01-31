<?php

namespace App\Http\Livewire\BankAccount;

use Livewire\Component;

class Edit extends Component
{
    public $owner,$bank,$no_rekening,$cabang,$data,$open_balance,$code,$coa_id,$is_clien=0;
    public function render()
    {
        return view('livewire.bank-account.edit');
    }
    public function mount($id)
    {
        $this->data = \App\Models\BankAccount::find($id);
        $this->owner = $this->data->owner;
        $this->bank = $this->data->bank;
        $this->no_rekening = $this->data->no_rekening;
        $this->cabang = $this->data->cabang;
        $this->open_balance = $this->data->open_balance;
        $this->code = $this->data->code;
        $this->coa_id = $this->data->coa_id;
        $this->is_client = $this->data->is_client;

        \LogActivity::add("Bank Account Edit {$this->data->id}");
    }
    public function save()
    {
        $this->validate([
            // 'code'=>'required',
            'owner'=>'required',
            'bank'=>'required',
            'no_rekening'=>'required',
            'cabang'=>'required',
            'open_balance'=>'required',
            // 'coa_id'=>'required'
        ]);
        $this->data->owner = $this->owner;
        $this->data->bank = $this->bank;
        $this->data->no_rekening = $this->no_rekening;
        $this->data->cabang = $this->cabang;
        $this->data->open_balance = $this->open_balance;
        $this->data->code = $this->code;
        $this->data->coa_id = $this->coa_id;
        $this->data->is_client = $this->is_client;
        $this->data->save();
        session()->flash('message-success',__('Data saved successfully'));
        \LogActivity::add("Bank Account Submit {$this->data->id}");
        return redirect()->to('bank-account');
    }
}
