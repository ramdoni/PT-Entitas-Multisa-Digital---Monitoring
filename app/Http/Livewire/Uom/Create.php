<?php

namespace App\Http\Livewire\Uom;

use Livewire\Component;
use App\Models\Uom;

class Create extends Component
{
    public $name;
    public function render()
    {
        return view('livewire.uom.create');
    }

    public function save()
    {
        $this->validate([
            'name'=>'required'
        ]);

        Uom::create([
            'name'=>$this->name
        ]);

        $this->emit('reload');$this->emit('modal','hide');
    }
}
