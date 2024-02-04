<?php

namespace App\Http\Livewire\InvoiceIn;

use Livewire\Component;
use App\Models\Invoice;

class Index extends Component
{
    public function render()
    {
        $data = Invoice::orderBy('id','DESC');

        return view('livewire.invoice-in.index')->with(['data'=>$data->paginate(100)]);
    }
}
