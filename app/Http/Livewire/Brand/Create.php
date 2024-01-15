<?php

namespace App\Http\Livewire\Brand;

use Livewire\Component;
use App\Models\Brand;

class Create extends Component
{
    public $name;
    public function render()
    {
        return view('livewire.brand.create');
    }

    public function save()
    {
        $this->validate([
            'name'=>'required'
        ]);

        Brand::create([
            'name'=>$this->name
        ]);

        $this->emit('reload');$this->emit('modal','hide');
    }

}
