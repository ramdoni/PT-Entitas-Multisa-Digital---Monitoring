<?php

namespace App\Http\Livewire\Customer;

use Livewire\Component;
use App\Models\Customer;
use App\Models\CustomerPic;

class Insert extends Component
{
    public $name,$phone,$address,$email,$pic=[],$insert_pic=false,$arr_form=[];
    public function render()
    {
        return view('livewire.customer.insert');
    }

    public function save()
    {
        $this->validate([
            'name'=>'required',
            'phone'=>'required',
        ]);

        $data = Customer::create([
            'name'=>$this->name,
            'phone'=>$this->phone
        ]);

        foreach($this->pic as $k => $item){
            CustomerPic::create([
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
