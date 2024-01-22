<?php

namespace App\Http\Livewire\PurchaseOrder;

use App\Models\Quotation;
use App\Models\QuotationMaterial;
use App\Models\Vendor;
use Livewire\Component;

class Create extends Component
{
    public $form=[
        'sub_total_amount'=>0,
        'sub_total_qty'=>0,
        'tax_amount'=>0,
        'grand_total'=>0,
        'po_number'=>'',
        'vendor_id'=>''
    ],$quotation,$vendor_code,$vendors=[],$parts=[],
    $row_material_id,$row_material_qty=1,$selected_material;

    public function render()
    {
        return view('livewire.purchase-order.create');
    }

    public function mount(Quotation $quotation)
    {
        $this->quotation = $quotation;
        $this->form['po_date'] = date('Y-m-d');
        $this->generate_po();
        $this->vendors = Vendor::orderBy('name','ASC')->get();
        $this->parts = $this->quotation->parts;
    }

    public function updated($propertyName)
    {
        if($propertyName=='form.vendor_id'){
            $this->vendor = Vendor::find($this->form['vendor_id']);
            if($this->vendor){
                $this->vendor_code = $this->vendor->vendor_code;
                $this->generate_po();
            }
        }

        if($propertyName=='row_material_id'){
            $this->selected_material = QuotationMaterial::find($this->row_material_id);
        }
    }

    public function generate_po()
    {
        $this->form['po_number'] = $this->quotation->responsibility .'/'.date('m/Y/').$this->vendor_code."/".$this->quotation->customer->customer_code;

    }
}
