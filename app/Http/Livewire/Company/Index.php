<?php

namespace App\Http\Livewire\Company;

use App\Models\Company;
use Livewire\Component;

class Index extends Component
{
    public function render()
    {
        $data = Company::get();

        return view('livewire.company.index')->with(['data'=>$data]);
    }
}
