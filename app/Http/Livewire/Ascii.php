<?php

namespace App\Http\Livewire;

use App\Models\Ascii as ModelsAscii;
use Livewire\Component;

class Ascii extends Component
{
    public $ascii,$char;
    public function render()
    {
        return view('livewire.ascii');
    }

    public function updated($propertyName)
    {
        if($this->ascii){
            $char = [];
            foreach(explode(' ',$this->ascii) as $item){
                $ascii = ModelsAscii::where('ascii',$item)->first();
                if($ascii){
                    $char[] = $ascii->char;
                }
            }

            $this->char = implode(" ",$char);
        }
    }
}
