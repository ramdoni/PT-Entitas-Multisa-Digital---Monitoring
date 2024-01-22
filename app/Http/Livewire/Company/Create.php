<?php

namespace App\Http\Livewire\Company;

use App\Models\Company;
use Livewire\Component;
use Livewire\WithFileUploads;

class Create extends Component
{
    use WithFileUploads;
    public $form=[],$logo;
    public function render()
    {
        return view('livewire.company.create');
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

        Company::create($this->form);

        session()->flash('message-success',__('Data saved successfully'));

        return redirect()->route('company.index');
    }
}
