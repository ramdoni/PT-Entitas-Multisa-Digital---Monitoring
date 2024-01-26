<?php

namespace App\Http\Livewire\Quotation;

use App\Models\Quotation;
use Livewire\Component;

class Cancel extends Component
{
    public $form=[],$data;
    protected $listeners = ['set_id'=>'set_id'];
    public function render()
    {
        return view('livewire.quotation.cancel');
    }

    public function mount()
    {
        $this->form['cancel_user_id'] = \Auth::user()->id;
        $this->form['cancel_date'] = date('Y-m-d');
    }

    public function set_id($id)
    {
        $this->data = Quotation::find($id);
    }

    public function save()
    {
        $this->validate([
            'form.cancel_note'=>'required',
            'form.cancel_date'=>'required',
        ]);
        $this->form['status'] = 3;
        $this->data->update($this->form);

        session()->flash('message-success',__('Quotation berhasil di proses.'));

        return redirect()->route('quotation.index');
    }
}
