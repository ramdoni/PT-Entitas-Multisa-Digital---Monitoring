<?php

namespace App\Http\Livewire\BankAccount;

use Livewire\Component;

class Edit extends Component
{
    public $owner,$bank,$no_rekening,$cabang,$data,$coa_id,$code;

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
        $this->coa_id = $this->data->coa_id;
        $this->code = $this->data->code;
    }

    public function save()
    {
        $this->validate([
            'owner'=>'required',
            'bank'=>'required',
            'no_rekening'=>'required',
            'cabang'=>'required',
            'code'=>'required',
        ]);
        
        $this->data->owner = $this->owner;
        $this->data->bank = $this->bank;
        $this->data->no_rekening = $this->no_rekening;
        $this->data->cabang = $this->cabang;
        $this->data->coa_id = $this->coa_id;
        $this->data->code = $this->code ;
        $this->data->save();
        
        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->to('bank-account');
    }
}
