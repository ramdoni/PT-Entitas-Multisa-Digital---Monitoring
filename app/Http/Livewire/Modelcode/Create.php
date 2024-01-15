<?php

namespace App\Http\Livewire\Modelcode;

use Livewire\Component;
use App\Models\Modelcode;

class Create extends Component
{
    public $name;
    public function render()
    {
        return view('livewire.modelcode.create');
    }

    public function save()
    {
        $this->validate([
            'name'=>'required'
        ]);

        Modelcode::create([
            'name'=>$this->name
        ]);

        $this->emit('reload');$this->emit('modal','hide');
    }
}
