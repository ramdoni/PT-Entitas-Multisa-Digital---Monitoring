<?php

namespace App\Http\Livewire\Quotation;

use Livewire\Component;
use App\Models\Quotation;

class Index extends Component
{
    public function render()
    {
        $data = Quotation::orderBy('id','DESC');

        return view('livewire.quotation.index')->with(['data'=>$data->paginate(100)]);
    }
}
