<?php

namespace App\Http\Livewire\Vendor;

use Livewire\Component;
use App\Models\Vendor;

class Index extends Component
{
    public function render()
    {
        $data = Vendor::orderBy('id','DESC');

        return view('livewire.vendor.index')->with(['data'=>$data->paginate(100)]);
    }
}
