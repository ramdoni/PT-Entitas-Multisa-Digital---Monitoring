<?php

namespace App\Http\Livewire\Quotation;

use App\Models\QuotationEngineering;
use Livewire\Component;
use App\Models\Quotation;
use App\Models\Material;
use App\Models\QuotationMaterial;
use App\Models\QuotationService;
use App\Models\Vendor;
use App\Models\Services;
use App\Models\Customer;
use App\Models\CustomerPic;
use App\Models\Company;

class Create extends Component
{
    protected $listeners = ['reload'=>'$refresh'];

    public $form=[
        'total_quotation'=>0,
        'ujrah'=>0,
        'ujrah_amount'=>0,
        'factor'=>0,
        'factor_amount'=>0,
        'grand_total'=>0,
        'tabbaru'=>0,
        'responsibility'=>'',
        'project_code'=>'',
        'use_tax'=>1,
        'tax_amount'=>0,
        'total_material'=>0,
        'total_services'=>0,
        'total_cadangan'=>0,
        'komisi'=>0,
        'komisi_amount'=>0
    ];
    public $material_selected_id,$arr_part=[],$materials=[],$material_selected,$material_qty=0,$material_factor=0,$material_factor_amount=0,$arr_parts=[],$total_quotation=0,
            $ujrah=0,$ujrah_amount=0,$customer_code;
    public $vendors=[],$arr_vendor=[],$vendor_selected,$vendor_selected_id,$engineer_description,$engineer_qty,$engineer_price,$engineer_unit;
    public $service_selected_id, $service_selected,$service_qty=0,$service_factor=0,$service_factor_amount=0,$service_price=0,$arr_services=[],$service_unit,$service_description;
    public $is_generate_number=false,$companies=[],$customer_pics=[],$system_requirement=[],$term_and_conditions=[];
    public $text_system_requirement,$text_term_and_conditions;
    public function render()
    {
        return view('livewire.quotation.create');
    }
    public function mount()
    {
        $this->materials = Material::orderBy('name','ASC')->get();
        $this->vendors = Vendor::where('type',2)->orderBy('name','ASC')->get();
        $this->form['project_code'] = $this->form['responsibility'] .'/'.str_pad(( Quotation::count()+1),4, '0', STR_PAD_LEFT);
        $this->form['quotation_date'] = date('Y-m-d');
        $this->form['valid_until'] = date('Y-m-d',strtotime("+30 Days"));
        $this->generate_quotation();
        $this->companies = Company::orderBy('name','ASC')->get();
    }

    public function generate_quotation()
    {
        // 0001/VIII/23/WIPO/GM
        $this->form['quotation_number'] = "QT/".$this->form['project_code']."/".date('dY',strtotime($this->form['quotation_date']))."/".numberToRomawi(date('m',strtotime($this->form['quotation_date'])))."/" . $this->customer_code;
        $this->is_generate_number = true;
    }

    public function updated($propertyName)
    {
        if($propertyName=='material_selected_id'){
            $this->material_selected = Material::find($this->material_selected_id);
            $this->material_qty = 1;
        }

        if($propertyName=='form.responsibility'){
            $this->form['project_code'] = $this->form['responsibility'] .'/'.str_pad(( Quotation::count()+1),4, '0', STR_PAD_LEFT);
            $this->generate_quotation();
        }

        if($propertyName=='vendor_selected_id'){
            $this->vendor_selected = Vendor::find($this->vendor_selected_id);
            $this->engineer_qty = 1;
        }

        if($propertyName=='service_selected_id'){
            $this->service_selected = Services::find($this->service_selected_id);
            $this->service_qty = 1;
        }

        if($propertyName=='form.customer_id'){
            $customer = Customer::find($this->form['customer_id']);
            if($customer) {
                $this->customer_code = $customer->customer_code;
                $this->form['customer_detail'] = $customer->toArray();
            }
            $this->customer_pics = CustomerPic::where('customer_id',$this->form['customer_id'])->get();
        }

        if($propertyName=='form.company_id'){
            $company = Company::find($this->form['company_id']);
            $this->form['company_detail'] = $company;
            $this->form['responsibility'] = $company->code;
            $this->form['project_code'] = $this->form['responsibility'] .'/'.str_pad(( Quotation::count()+1),4, '0', STR_PAD_LEFT);
        }

        if(in_array($propertyName,['form.quotation_date','form.customer_id','form.responsibility','form.company_id'])){
            $this->generate_quotation();
        }

        $this->calculate();
    }

    public function add_system_requirement()
    {
        $this->system_requirement[] = nl2br($this->text_system_requirement);
        $this->reset('text_system_requirement');
    }

    public function delete_system_requirement($k)
    {
        unset($this->system_requirement[$k]);
    }

    public function add_term_and_conditions()
    {
        $this->term_and_conditions[] = nl2br($this->text_term_and_conditions);
        $this->reset('text_term_and_conditions');
    }

    public function delete_term_and_conditions($k)
    {
        unset($this->term_and_conditions[$k]);
    }

    public function assign_part()
    {
        if($this->material_selected_id){
            $item = Material::find($this->material_selected_id);

            $find = find_array($this->arr_parts,"id",$this->material_selected_id);
            
            if(count($find)>=1){
                foreach($this->arr_parts as $k=>$i){
                    if($i['id']==$this->material_selected_id) $this->arr_parts[$k]['qty'] =  $this->material_qty;

                    $this->arr_parts[$k]['total'] = ($this->arr_parts[$k]['price'] and $this->arr_parts[$k]['qty']>0) ? ($this->arr_parts[$k]['price'] * $this->arr_parts[$k]['qty']) : 0;
                }
            }else{
                $total = ($item->price and $this->material_qty>0) ? ($item->price * $this->material_qty) : 0;

                if($this->material_factor>0) {
                    $this->material_factor_amount = $this->material_factor / 100 * $total;
                    $total += $this->material_factor_amount;
                }

                $this->arr_parts[] = [
                    'id'=>$item->id,
                    'name'=>$item->name,
                    'brand'=>$item->brand?$item->brand->name:'-',
                    'modelcode'=>$item->modelcode?$item->modelcode->name:'-',
                    'qty'=>$this->material_qty,
                    'uom'=>$item->uom?$item->uom->name:'-',
                    'price'=>$item->price,
                    'factor'=>$this->material_factor,
                    'factor_amount'=>$this->material_factor_amount,
                    'total'=> $total,
                ];
            }

            $this->calculate();
        }
        
        $this->reset('material_selected','material_selected_id','material_qty','material_factor');
    }

    public function assign_engineer()
    {
        if($this->vendor_selected_id){

            $find = find_array($this->arr_vendor,"id",$this->vendor_selected_id);

            if($find!=""){
                foreach($this->arr_vendor as $k=>$i){
                    if($i['id']==$this->vendor_selected_id) $this->arr_vendor[$k]['qty'] +=  $this->vendor_qty;

                    $this->arr_vendor[$k]['total'] = ($this->arr_vendor[$k]['price'] and $this->arr_vendor[$k]['qty']>0) ? ($this->arr_vendor[$k]['price'] * $this->arr_vendor[$k]['qty']) : 0;
                }
            }else{
                $this->arr_vendor[] = [
                    'vendor_detail'=>json_encode($this->vendor_selected),
                    'id'=>$this->vendor_selected_id,
                    'name'=>$this->vendor_selected->name,
                    'description'=>$this->engineer_description,
                    'qty'=>$this->engineer_qty,
                    'unit'=>$this->engineer_unit,
                    'price'=>$this->engineer_price,
                    'total'=>($this->engineer_price and $this->engineer_qty>0) ? ($this->engineer_price * $this->engineer_qty) : 0,
                ];
            }

            $this->calculate();

            $this->reset('vendor_selected_id','vendor_selected','engineer_description','engineer_qty','engineer_unit','engineer_price');
        }
    }

    public function assign_service()
    {
        if($this->service_selected_id){
            //$find = array_search($this->service_selected_id, array_column($this->arr_services, 'id'));
            $find = find_array($this->arr_services,"id",$this->service_selected_id);
            if(count($find)>=1){
                foreach($this->arr_services as $k=>$i){
                    if($i['id']==$this->service_selected_id) $this->arr_services[$k]['qty'] +=  $this->service_qty;

                    $this->arr_services[$k]['total'] = ($this->arr_services[$k]['price'] and $this->arr_services[$k]['qty']>0) 
                                                ? ($this->arr_services[$k]['price']+($this->arr_services[$k]['factor']??0) * $this->arr_services[$k]['qty']) 
                                                : 0;
                }
            }else{
                $total = ($this->service_price and $this->service_qty>0) ? ($this->service_price * $this->service_qty)  : 0;

                if($this->service_factor>0) {
                    $this->service_factor_amount = $this->service_factor / 100 * $total;
                    $total += $this->service_factor_amount;
                }
                $this->arr_services[] = [
                    'service_detail'=>json_encode($this->service_selected),
                    'id'=>$this->service_selected_id,
                    'name'=>$this->service_selected->name,
                    'description'=>$this->service_description,
                    'qty'=>$this->service_qty,
                    'unit'=>$this->service_unit,
                    'price'=>$this->service_price,
                    'factor'=>$this->service_factor,
                    'factor_amount'=>$this->service_factor_amount,
                    'total'=>$total,
                ];
            }

            $this->reset('service_factor_amount','service_selected_id','service_description','service_qty','service_unit','service_price','service_factor');

            $this->calculate();
        }
    }

    public function calculate()
    {
        $this->form['total_quotation'] = 0;$this->form['total_material']=0;$this->form['total_services']=0;
        $this->form['factor_amount'] = 0;
        foreach($this->arr_parts as $k=>$i){
            $this->arr_parts[$k]['total'] = ($this->arr_parts[$k]['price'] and $this->arr_parts[$k]['qty']>0) ? ($this->arr_parts[$k]['price'] * $this->arr_parts[$k]['qty']) : 0;
            
            if($this->arr_parts[$k]['factor']>0){
                $this->arr_parts[$k]['factor_amount'] = $this->arr_parts[$k]['factor'] / 100 * $this->arr_parts[$k]['total'];
            }

            $this->arr_parts[$k]['total'] = $this->arr_parts[$k]['total'] + $this->arr_parts[$k]['factor_amount']??0;

            $this->form['factor_amount'] += $this->arr_parts[$k]['factor_amount'];
            $this->form['total_quotation'] += $this->arr_parts[$k]['total'];
            $this->form['total_material'] += $this->arr_parts[$k]['total'];
        }

        foreach($this->arr_services as $k=>$i){
            $this->arr_services[$k]['total'] = ($this->arr_services[$k]['price'] and $this->arr_services[$k]['qty']>0) ? ($this->arr_services[$k]['price'] * $this->arr_services[$k]['qty']) : 0;
            
            if($this->arr_services[$k]['factor']>0) {
                $this->arr_services[$k]['factor_amount'] = $this->arr_services[$k]['factor'] / 100 * $this->arr_services[$k]['total'];
            }

            $this->arr_services[$k]['total'] += $this->arr_services[$k]['factor_amount']??0;
            $this->form['total_quotation'] += $this->arr_services[$k]['total'];
        }

        $factor = $this->form['factor_amount'];
        if($this->form['ujrah']>0){
            $this->form['ujrah_amount'] = ($this->form['ujrah']/100) * $factor;
            $factor = $factor-$this->form['ujrah_amount'];
        }

        $this->form['total_cadangan'] = $factor;

        if($this->form['komisi'] and $this->form['total_quotation']){
            $this->form['komisi_amount'] = ($this->form['komisi']/100) * $this->form['total_cadangan'];
        }
        
        $this->form['tabbaru']=$this->form['total_quotation']-$this->form['ujrah_amount']-$this->form['komisi_amount'];

        /**
         * Factor
         * 
         * Ujroh= Factor*persentase
         * Tabbarur=Factor-Ujroh
         * Komisi=tabbaru*persentase
         */
        $this->form['grand_total'] = $this->form['total_quotation'];

        if($this->form['use_tax']==1 and $this->form['grand_total']>0){
            $this->form['tax_amount'] = (11/100*$this->form['grand_total']);
            $this->form['grand_total'] = $this->form['tax_amount'] + $this->form['grand_total'];
        }
    }

    public function delete_part($key)
    {
        unset($this->arr_parts[$key]);
    }

    public function delete_vendor($key)
    {
        unset($this->arr_vendor[$key]);
    }

    public function delete_service($key)
    {
        unset($this->arr_services[$key]);
    }

    public function save()
    {
        $this->validate([
            'form.company_id'=>'required',
            'form.project_type'=>'required',
            'form.quotation_number'=>'required',
            'form.valid_until'=>'required',
            // 'arr_parts'=>'required|array'
        ]);

        $this->form['submitted_id'] = \Auth::user()->id;
        $this->form['system_requirement'] = $this->system_requirement;
        $this->form['term_and_conditions'] = $this->term_and_conditions;

        $quot = Quotation::create($this->form);

        if(count($this->arr_parts)>0){
            foreach($this->arr_parts as $k=>$item){
                $material = Material::find($item['id']);
                QuotationMaterial::create([
                    'quotation_id'=>$quot->id,
                    'material_id'=>$item['id'],
                    'qty'=>$item['qty'],
                    'price'=>$item['price'],
                    'factor'=>$item['factor'],
                    'total'=>$item['total'],
                    'material_detail'=>$material
                ]);
            }
        }

        if(count($this->arr_vendor)>0){
            foreach($this->arr_vendor as $k=>$item){
                $vendor = Vendor::find($item['id']);
                QuotationEngineering::create([
                    'quotation_id'=>$quot->id,
                    'vendor_id'=>$item['id'],
                    'description'=>$item['description'],
                    'unit'=>$item['unit'],
                    'qty'=>$item['qty'],
                    'price'=>$item['price'],
                    'factor'=>$item['factor'],
                    'total'=>$item['total'],
                    'vendor_detail'=>$vendor
                ]);
            }
        }

        if(count($this->arr_services)>0){
            foreach($this->arr_services as $k=>$item){
                $service = Services::find($item['id']);
                QuotationService::create([
                    'quotation_id'=>$quot->id,
                    'service_id'=>$item['id'],
                    'description'=>$item['description'],
                    'unit'=>$item['unit'],
                    'qty'=>$item['qty'],
                    'price'=>$item['price'],
                    'factor'=>$item['factor'],
                    'total'=>$item['total'],
                    'service_detail'=>$service
                ]);
            }
        }

        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->route('quotation.index');
    }
}
