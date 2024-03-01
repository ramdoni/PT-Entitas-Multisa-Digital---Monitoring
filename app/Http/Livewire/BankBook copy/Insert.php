<?php

namespace App\Http\Livewire\BankBook;

use App\Models\Neraca;
use Livewire\Component;
use App\Models\BankBook;
use App\Models\BankAccount;

class Insert extends Component
{
    public $generate_no_voucher,$type,$data,$amount,$note,$payment_date,$propose,$bank_code;
    protected $listeners = ['set_active'=>'set_active'];

    public function render()
    {
        return view('livewire.bank-book.insert');
    }

    public function set_active($data)
    {
        $this->data = BankAccount::find($data);
        $this->generate_no_voucher = $this->type.$this->propose.str_pad((BankBook::count()+1),8, '0', STR_PAD_LEFT).$this->data->code;
        $this->payment_date = date('Y-m-d');
        $this->bank_code = $this->data->code;
    }

    public function save()
    {
        $this->validate([
            'type'=>'required',
            'amount'=>'required',     
            'payment_date'=>'required',
            'bank_code' => 'required'
        ]);
        
        $this->generate_no_voucher = $this->type.$this->propose.str_pad((BankBook::count()+1),8, '0', STR_PAD_LEFT).$this->data->code;

        $data = new BankBook();
        $data->from_bank_id = $this->data->id;
        $data->type = $this->type;
        $data->propose = $this->propose;
        $data->amount = str_replace(',','',$this->amount);
        $data->note = $this->note;
        $data->no_voucher = $this->generate_no_voucher;
        $data->payment_date = $this->payment_date;
        $data->save();
        
        $this->generate_no_voucher = $this->type.$this->propose.str_pad((BankBook::count()+1),8, '0', STR_PAD_LEFT).$this->data->code;
        $this->emit('refresh');
        $this->reset(['amount','note']);

        $amount  = $data->type=='P' ? -$data->amount : $data->amount;

        $neraca = Neraca::where(['bulan'=>(int)date('m'),'tahun'=>date('Y'),'coa_id'=>$data->from_bank->coa_id])->first();
        if($neraca){
            $neraca->amount = $neraca->amount + $amount;
            $neraca->save();
        }else{
            Neraca::create([
                'bulan'=>(int)date('m'),
                'tahun'=>date('Y'),
                'amount'=>$amount,
                'coa_id'=>$data->from_bank->coa_id
            ]);
        }   

        \LogActivity::add("Bank Book - Insert #{$data->id}");
    }
}
