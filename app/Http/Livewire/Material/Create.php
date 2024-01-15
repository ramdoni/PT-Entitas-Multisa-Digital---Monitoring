<?php

namespace App\Http\Livewire\Material;

use Livewire\Component;
use App\Models\Material;

class Create extends Component
{
    public $form;
    protected $listeners = ['reload'=>'$refresh'];
    public function render()
    {
        return view('livewire.material.create');
    }

    public function save()
    {
        $this->validate([
            'form.name'=>'required',
            'form.brand_id'=>'required',
            'form.model_code_id'=>'required',
            'form.uom_id'=>'required',
            'form.price'=>'required',
        ]);

        Material::create($this->form);

        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->route('material.index');
    }
}
