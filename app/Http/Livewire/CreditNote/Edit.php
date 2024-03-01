<?php

namespace App\Http\Livewire\CreditNote;

use App\Models\CreditNote;
use Livewire\Component;

class Edit extends Component
{
    public $data;
    public function render()
    {
        return view('livewire.credit-note.edit');
    }

    public function mount(CreditNote $data)
    {
        $this->data = $data;
    }
}
