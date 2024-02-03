<?php

namespace App\Http\Livewire\Invoice;

use App\Models\Invoice;
use Livewire\Component;

class Index extends Component
{
    protected $listeners = ['reload'=>'$refresh'];

    public function render()
    {
        $data = Invoice::orderBy('id','DESC');
        
        $total = clone $data;
        $total_amount = clone $data;

        return view('livewire.invoice.index')->with(['data'=>$data->paginate(100),
                    'total'=>$total->count(),
                    'total_amount'=>$total->sum('nett_amount'),
                ]);
    }
}
