<?php

namespace App\Http\Livewire\PurchaseOrder;

use App\Models\PurchaseOrder;
use Livewire\Component;
use Livewire\WithPagination;

class Index extends Component
{
    use WithPagination;
    protected $paginationTheme = 'bootstrap';

    public function render()
    {
        $data = $this->data();
        $total = clone $data;
        $total_amount = clone $data;

        $param['data'] = $data->paginate(100);
        $param['total'] = $total->count();
        $param['total_amount'] = $total->sum('amount');

        return view('livewire.purchase-order.index')->with($param);
    }

    public function data()
    {
        $data = PurchaseOrder::orderBy("created_at","desc");

        return $data;
    }
}
