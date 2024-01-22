<?php

namespace App\Http\Livewire\Customer;

use Livewire\Component;
use App\Models\Customer;
use App\Models\CustomerPic;
use App\Models\Kabupaten;

class Insert extends Component
{
    public $customer_id,$name,$phone,$address,$email,$pic=[],$insert_pic=false,$arr_form=[],$kabupaten=[];
    public $provinsi_id,$kabupaten_id;
    public function render()
    {
        return view('livewire.customer.insert');
    }

    public function updated($propertyName)
    {
        if($propertyName=='provinsi_id'){
            $this->kabupaten = Kabupaten::where('provinsi_id',$this->provinsi_id)->get();
        }
    }

    public function save()
    {
        $this->validate([
            'name'=>'required',
            'phone'=>'required',
        ]);

        $data = Customer::create([
            'name'=>$this->name,
            'phone'=>$this->phone,
            'address'=>$this->address,
            'customer_code'=>$this->customer_id,
            'provinsi_id'=>$this->provinsi_id,
            'kabupaten_id'=>$this->kabupaten_id
        ]);

        foreach($this->pic as $k => $item){
            CustomerPic::create([
                'customer_id'=>$data->id,
                'name'=>$item['name'],
                'position'=>$item['position'],
                'mobile'=>$item['mobile'],
                'email'=>$item['email'],
            ]);
        }

        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->route('customer.index');
    }

    public function addPic()
    {
        $this->pic[] = $this->arr_form;
        $this->arr_form = [];
        $this->insert_pic = false;
    }

    public function deletePic($id)
    {
        unset($this->pic[$id]);
    }
}
