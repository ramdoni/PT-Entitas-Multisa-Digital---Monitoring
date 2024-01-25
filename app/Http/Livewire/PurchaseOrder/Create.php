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
    $row_material_id,$row_material_qty=1,$selected_material,$row_material_price,$row_material_total,$row_material_detail,
    $row_materials=[];

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
        $this->row_materials = $this->quotation->parts->toArray();
    }

    public function assign_part()
    {
        $this->row_materials[] = [
            'description'=> $this->selected_material->material_detail?$this->selected_material->material_detail['name'] : '-',
            'detail'=> $this->row_material_detail,
            'qty'=> $this->row_material_qty,
            'price'=> $this->row_material_price,
            'total'=> $this->row_material_total
        ];
    }

    public function updated($propertyName)
    {
        if($propertyName=='form.vendor_id'){
            $vendor = Vendor::find($this->form['vendor_id']);
            if($vendor){
                $this->vendor_code = $vendor->vendor_code;
                $this->generate_po();
            }
        }

        if($propertyName=='row_material_id'){
            $this->selected_material = QuotationMaterial::find($this->row_material_id);
            $this->row_material_price = $this->selected_material->price;
            $this->row_material_total = $this->selected_material->price;
        }

        // if(in_array($propertyName,['row_material_price','row_material_qty'])){
        // }

        $this->calculate();
    }

    public function generate_po()
    {
        $this->form['po_number'] = $this->quotation->responsibility .'/'.date('m/Y/').$this->vendor_code."/".$this->quotation->customer->customer_code;
    }

    public function calculate()
    {
        $this->form['sub_total_amount']=0; $this->form['sub_total_qty']=0;
        foreach($this->row_materials as $k=>$item){
            $this->row_materials[$k]['total'] = $item['qty'] * $item['price'];
            if($item['qty']>0){
                $this->form['sub_total_amount'] += $this->row_materials[$k]['total']; 
                $this->form['sub_total_qty'] += $item['qty'];
            }
        }
    }

}
