<?php

namespace App\Http\Livewire\Quotation;

use Livewire\Component;
use App\Models\Quotation;
use App\Models\Material;

class Create extends Component
{
    public $form=[],$material_selected_id,$arr_part=[],$materials=[],$material_selected,$material_qty=0,$arr_parts=[],$total_quotation=0;

    public function render()
    {
        return view('livewire.quotation.create');
    }

    public function mount()
    {
        $this->materials = Material::orderBy('name','ASC')->get();
    }

    public function updated($propertyName)
    {
        if($propertyName=='material_selected_id'){
            $this->material_selected = Material::find($this->material_selected_id);
            $this->material_qty = 1;
        }

        if($propertyName=='form.responsibility'){
            $this->form['project_code'] = $this->form['responsibility'] .'/'.str_pad(( Quotation::count()+1),4, '0', STR_PAD_LEFT);;
        }
    }

    public function assign_part()
    {
        if($this->material_selected_id){
            $item = Material::find($this->material_selected_id);

            $find = array_search($this->material_selected_id, array_column($this->arr_parts, 'id'));

            if($find!=""){
                foreach($this->arr_parts as $k=>$i){
                    if($i['id']==$this->material_selected_id) $this->arr_parts[$k]['qty'] +=  $this->material_qty;

                    $this->arr_parts[$k]['total'] = ($this->arr_parts[$k]['price'] and $this->arr_parts[$k]['qty']>0) ? ($this->arr_parts[$k]['price'] * $this->arr_parts[$k]['qty']) : 0;
                }
            }else{
                $this->arr_parts[] = [
                    'id'=>$item->id,
                    'name'=>$item->name,
                    'brand'=>$item->brand?$item->brand->name:'-',
                    'modelcode'=>$item->modelcode?$item->modelcode->name:'-',
                    'qty'=>$this->material_qty,
                    'uom'=>$item->uom?$item->uom->name:'-',
                    'price'=>$item->price,
                    'total'=>($item->price and $this->material_qty>0) ? ($item->price * $this->material_qty) : 0,
                ];
            }

            $this->calculate();
        }
        $this->reset('material_selected','material_selected_id','material_qty');
    }

    public function calculate()
    {
        $this->total_quotation = 0;
        foreach($this->arr_parts as $k=>$i){
            $this->arr_parts[$k]['total'] = ($this->arr_parts[$k]['price'] and $this->arr_parts[$k]['qty']>0) ? ($this->arr_parts[$k]['price'] * $this->arr_parts[$k]['qty']) : 0;
            $this->total_quotation += $this->arr_parts[$k]['total'];
        }
    }

    public function delete_part($key)
    {
        unset($this->arr_parts[$key]);
    }

    public function save()
    {
        $this->validate([
            'form.project_type'=>'required'
        ]);

        $data = Quotation::create($this->form);

        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->route('quotation.index');
    }
}
