<?php

namespace App\Http\Livewire\PurchaseOrderIn;

use App\Models\PurchaseOrder;
use Livewire\Component;

class Edit extends Component
{
    public $data;
    public function render()
    {
        return view('livewire.purchase-order-in.edit');
    }
    public function mount(PurchaseOrder $data)
    {
        $this->data = $data;
    }
}
