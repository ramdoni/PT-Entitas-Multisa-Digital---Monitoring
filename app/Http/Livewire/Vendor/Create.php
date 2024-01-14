<?php

namespace App\Http\Livewire\Vendor;

use Livewire\Component;
use App\Models\Vendor;

class Create extends Component
{
    public $vendor_id,$name,$phone,$address,$person,$position,$mobile,$email,$proposed,$rekening,$bank,$account_name;
    public function render()
    {
        return view('livewire.vendor.create');
    }

    public function mount()
    {
        $this->vendor_id = 'V'.str_pad((Vendor::count()+1),4, '0', STR_PAD_LEFT);
    }

    public function save()
    {
        $this->validate([
            'vendor_id'=>'required',
            'name'=>'required',
            'address'=>'required'
        ]);

        Vendor::create([
            'vendor_code'=>$this->vendor_id,
            'name'=>$this->name,
            'address'=>$this->address,
            'person'=>$this->person,
            'position'=>$this->position,
            'mobile'=>$this->mobile,
            'email'=>$this->email,
            'proposed'=>$this->proposed,
            'rekening'=>$this->rekening,
            'bank'=>$this->bank,
            'account_name'=>$this->account_name
        ]);

        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->route('vendor.index');
    }
}
