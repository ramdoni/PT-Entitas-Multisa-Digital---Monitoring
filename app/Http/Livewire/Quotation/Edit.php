<?php

namespace App\Http\Livewire\Quotation;

use App\Models\Quotation;
use Livewire\Component;

class Edit extends Component
{
    public $form = [];
    public $material_selected_id,$arr_part=[],$materials=[],$material_selected,$material_qty=0,$arr_parts=[],$total_quotation=0,
            $ujrah=0,$ujrah_amount=0;
    public $vendors=[],$arr_vendor=[],$vendor_selected,$vendor_selected_id,$engineer_description,$engineer_qty,$engineer_price,$engineer_unit;
    public $is_revisi=false;

    public $data;
    public function render()
    {
        return view('livewire.quotation.edit');
    }

    public function mount(Quotation $data)
    {
        $this->data = $data;
        $this->form = $data->toArray();
    }
}
