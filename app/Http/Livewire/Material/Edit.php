<?php

namespace App\Http\Livewire\Material;

use Livewire\Component;
use App\Models\Material;

class Edit extends Component
{
    public $data,$form=[];

    public function render()
    {
        return view('livewire.material.edit');
    }

    public function mount(Material $data)
    {
        $this->data = $data;
        $this->form = $data->toArray();
    }

    public function save()
    {
        $this->validate([
            'form.name'=>'required',
            'form.brand_id'=>'required',
            // 'form.model_code_id'=>'required',
            'form.uom_id'=>'required',
            'form.price'=>'required',
        ]);
        
        $this->data->update($this->form);

        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->route('material.edit',$this->data->id);
    }
}
