<?php

namespace App\Http\Livewire\DebitNote;

use App\Jobs\BayarDebitNote;
use App\Models\Simpanan;
use App\Models\DebitNote;
use Livewire\Component;
use Livewire\WithFileUploads;

class Pembayaran extends Component
{
    use WithFileUploads;
    public $data;
    public $form = [];
    public $payment_file;
    public function render()
    {
        return view('livewire.debit-note.pembayaran');
    }

    public function mount($id)
    {
        $this->data = DebitNote::find($id);
        $this->form = [
            'payment_date'=>date('Y-m-d'),
            'payment_user'=>\Auth::user()->toArray(),
            'payment_submitted_date'=>date('Y-m-d H:i:s'),
            'payment_method'=>1
        ];
    }

    public function save()
    {
        $this->validate([
            'payment_file'=>'required|mimes:jpeg,bmp,png,gif,svg,pdf,jpg'
        ],[
            'payment_file.required'=>'Bukti Pembayaran harus tidak boleh kosong.'
        ]);

        $payment_file = "debit-notes/{$this->data->id}/".date('Ymdhis').'.'.$this->payment_file->extension();
        $this->payment_file->storePubliclyAs('public',$payment_file);

        $this->form['payment_file'] = "storage/{$payment_file}";
        $this->form['status'] = 1;
        $this->data->update($this->form);

        Simpanan::with('jenis_simpanan')->where(['debit_note_id'=>$this->data->id])->update(['status'=>1]);

        session()->flash('message-success',__('Pembayaran berhasil disubmit'));

        return redirect()->route('debit-note.edit',$this->data->id);
    }
}
