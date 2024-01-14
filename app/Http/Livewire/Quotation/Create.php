<?php

namespace App\Http\Livewire\Quotation;

use Livewire\Component;
use App\Models\Quotation;

class Create extends Component
{
    public $form=[];
    public function render()
    {
        return view('livewire.quotation.create');
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
