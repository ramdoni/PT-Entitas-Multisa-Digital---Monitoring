<?php

namespace App\Http\Livewire\Customer;

use Livewire\Component;
use App\Models\Customer;

class Edit extends Component
{
    public $data,$form=[],$kabupaten=[],$pic=[],$insert_pic=false;
    public function render()
    {
        return view('livewire.customer.edit');
    }

    public function mount(Customer $data)
    {
        $this->data = $data;
        $this->form = $data->toArray();
    }

    public function save()
    {
        $this->validate([
            'form.name'=>'required',
            'form.phone'=>'required',
        ]);

        $this->data->update([
            'name'=>$this->form['name'],
            'phone'=>$this->form['phone'],
            'address'=>$this->form['address'],
            'customer_code'=>$this->form['customer_code'],
            'provinsi_id'=>$this->form['provinsi_id'],
            'kabupaten_id'=>$this->form['kabupaten_id']
        ]);

        // foreach($this->pic as $k => $item){
        //     CustomerPic::create([
        //         'customer_id'=>$data->id,
        //         'name'=>$item['name'],
        //         'position'=>$item['position'],
        //         'mobile'=>$item['mobile'],
        //         'email'=>$item['email'],
        //     ]);
        // }

        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->route('customer.edit',$this->data->id);
    }
}
