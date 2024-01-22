<?php

namespace App\Http\Livewire\Company;

use App\Models\Company;
use Livewire\WithFileUploads;
use Livewire\Component;

class Edit extends Component
{
    use WithFileUploads;

    public $data,$company,$logo;

    public function render()
    {
        return view('livewire.company.edit');
    }

    public function mount(Company $data)
    {
        $this->data = $data;
        $this->form = $data->toArray();
    }

    public function save()
    {
        $this->validate([
            'form.code'=>'required',
            'form.name'=>'required',
            'form.phone'=>'required'
        ]);

        if($this->logo!=""){
            $this->validate([
                'logo' => 'image:max:5120,image', // 5Mb Max
            ],[
                'logo.max' => 'Maksimal 5 MB'
            ]);
            $name = 'logo'.date('Ymdhis').'.'.$this->logo->extension();
            $this->logo->storePubliclyAs('public',$name);
            $this->form['logo'] = $name;
        }

        $this->data->update($this->form);

        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->route('company.index');
    }
}
