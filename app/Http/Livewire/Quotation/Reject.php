<?php

namespace App\Http\Livewire\Quotation;

use App\Models\Quotation;
use Livewire\Component;

class Reject extends Component
{
    public $form=[],$data;
    protected $listeners = ['set_id'=>'set_id'];
    public function render()
    {
        return view('livewire.quotation.reject');
    }

    public function mount()
    {
        $this->form['reject_user_id'] = \Auth::user()->id;
        $this->form['reject_date'] = date('Y-m-d');
    }

    public function set_id($id)
    {
        $this->data = Quotation::find($id);
    }

    public function save()
    {
        $this->validate([
            'form.reject_note'=>'required',
            'form.reject_date'=>'required',
        ]);
        $this->form['status'] = 2;
        $this->data->update($this->form);

        session()->flash('message-success',__('Quotation berhasil di proses.'));

        return redirect()->route('quotation.index');
    }
}
