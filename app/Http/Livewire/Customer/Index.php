<?php

namespace App\Http\Livewire\Customer;

use Livewire\Component;
use App\Models\Customer;

class Index extends Component
{
    public function render()
    {
        $data = Customer::orderBy('id','DESC');

        return view('livewire.customer.index')->with(['data'=>$data->paginate(100)]);
    }
}
