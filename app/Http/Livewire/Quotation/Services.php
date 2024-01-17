<?php

namespace App\Http\Livewire\Quotation;

use App\Models\Services as ModelsServices;
use Livewire\Component;

class Services extends Component
{
    public $name;
    public function render()
    {
        return view('livewire.quotation.services');
    }

    public function save()
    {
        $this->validate([
            'name'=>'required'
        ]);

        ModelsServices::create([
            'name'=>$this->name
        ]);
        $this->reset('name');
        $this->emit('reload');$this->emit('modal','hide');
    }
}
