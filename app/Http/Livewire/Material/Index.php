<?php

namespace App\Http\Livewire\Material;

use Livewire\Component;
use App\Models\Material;

class Index extends Component
{
    public function render()
    {
        $data = Material::orderBy('id','DESC');

        return view('livewire.material.index')->with(['data'=>$data->paginate(100)]);
    }

    public function delete($id)
    {
        Material::find($id)->delete();
        
        $this->emit('message-success','Deleted');
    }
}
