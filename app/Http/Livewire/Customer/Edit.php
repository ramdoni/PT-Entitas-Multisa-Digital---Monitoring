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
}
