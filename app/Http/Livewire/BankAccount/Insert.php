<?php

namespace App\Http\Livewire\BankAccount;

use Livewire\Component;

class Insert extends Component
{
    public $owner,$bank,$no_rekening,$cabang,$coa_id,$code;
    public function render()
    {
        return view('livewire.bank-account.insert');
    }

    public function save()
    {
        $this->validate([
            'owner'=>'required',
            'bank'=>'required',
            'no_rekening'=>'required',
            'cabang'=>'required',
            'code'=>'required'
        ]);
        
        $data = new \App\Models\BankAccount();
        $data->owner = $this->owner;
        $data->bank = $this->bank;
        $data->no_rekening = $this->no_rekening;
        $data->cabang = $this->cabang;
        $data->coa_id = $this->coa_id;
        $data->code = $this->code;
        $data->is_client = 0;
        $data->save();
        
        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->to('bank-account');
    }
}
