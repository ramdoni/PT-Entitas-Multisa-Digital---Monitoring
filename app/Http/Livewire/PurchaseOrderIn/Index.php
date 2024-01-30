<?php

namespace App\Http\Livewire\PurchaseOrderIn;

use App\Models\PurchaseOrder;
use App\Models\PurchaseOrderMaterial;
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

        return view('livewire.purchase-order-in.index')->with($param);
    }

    public function data()
    {
        $data = PurchaseOrder::orderBy("created_at","desc")
                ->where('type',1);

        return $data;
    }

    public function delete($id)
    {
        PurchaseOrder::find($id)->delete();
        PurchaseOrderMaterial::where('purchase_order_id',$id)->delete();

        session()->flash('message-success','Purchase Order deleted.');

        return redirect()->route('purchase-order-in.index');
    }
}
