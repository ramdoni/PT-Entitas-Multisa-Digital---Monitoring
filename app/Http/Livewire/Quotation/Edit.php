<?php

namespace App\Http\Livewire\Quotation;

use App\Models\Quotation;
use Livewire\Component;

class Edit extends Component
{
    public $form=[],$data;
    public function render()
    {
        return view('livewire.quotation.edit');
    }

    public function mount(Quotation $data)
    {
        $this->data = $data;
    }
}
