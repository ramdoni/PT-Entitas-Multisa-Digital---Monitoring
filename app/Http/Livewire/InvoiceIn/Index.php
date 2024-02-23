<?php

namespace App\Http\Livewire\InvoiceIn;

use Livewire\Component;
use App\Models\Invoice;

class Index extends Component
{
    public function render()
    {
        $data = Invoice::orderBy('id','DESC')
                    ->where('invoices.type',2);
        $total = clone $data;
        $total_amount = clone $data;

        return view('livewire.invoice-in.index')->with(['data'=>$data->paginate(100),
                    'total'=>$total->count(),
                    'total_amount'=>$total->sum('nett_amount'),
                ]);
    }
}
