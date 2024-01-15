<?php

namespace App\Http\Livewire\Vendor;

use App\Models\Vendor;
use Livewire\Component;

class Edit extends Component
{
    public $data,$vendor_id,$name,$phone,$address,$person,$position,$mobile,$email,$proposed,$rekening,$bank,$account_name,$type;
    public $description;
    public function render()
    {
        return view('livewire.vendor.edit');
    }

    public function mount(Vendor $id)
    {
        $this->data = $id;

        $this->type =$this->data->type;
        $this->name =$this->data->name;
        $this->address =$this->data->address;
        $this->person =$this->data->person;
        $this->position =$this->data->position;
        $this->mobile =$this->data->mobile;
        $this->email =$this->data->email;
        $this->proposed =$this->data->proposed;
        $this->rekening =$this->data->rekening;
        $this->bank =$this->data->bank;
        $this->account_name =$this->data->account_name;
        $this->description =$this->data->description;
    }

    public function save()
    {
        $this->validate([
            'vendor_id'=>'required',
            'name'=>'required',
            'address'=>'required',
            'type'=>'required'
        ]);

        $this->data->update([
            'type'=>$this->type,
            'name'=>$this->name,
            'address'=>$this->address,
            'person'=>$this->person,
            'position'=>$this->position,
            'mobile'=>$this->mobile,
            'email'=>$this->email,
            'proposed'=>$this->proposed,
            'rekening'=>$this->rekening,
            'bank'=>$this->bank,
            'account_name'=>$this->account_name,
            'description'=>$this->description,
        ]);

        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->route('vendor.index');
    }
}
