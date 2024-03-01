<?php

namespace App\Http\Livewire\DebitNote;

use App\Models\DebitNote;
use App\Models\Income;
use Livewire\Component;

class Create extends Component
{
    public $form=[
        'type'=>2 // Non Project
    ];
    public function render()
    {
        return view('livewire.debit-note.create');
    }

    public function mount()
    {
        $this->form['user_id'] = \Auth::user()->id;
        // $this->form['data_detail'] = \Auth::user()->toArray();
        $this->generate_nomor_pengajuan();
    }

    public function generate_nomor_pengajuan()
    {
        $id = DebitNote::latest()->first();

        $this->form['nomor_pengajuan'] =  str_pad(($id?($id->id+1) : 1),4, '0', STR_PAD_LEFT)."/KOPERASI-GS/DN/".getRomawi(date('m'))."/".date('Y');
    }

    public function save()
    {
        $this->validate([
                'form.description'=>'required',
                'form.amount'=>'required',
                'form.coa_id'=>'required',
        ],[
            'form.description.required'=>'Keterangan harus diisi',
            'form.coa_id.required'=>'Journal / Coa harus dipilih'
        ]);

        $this->generate_nomor_pengajuan();

        $data = DebitNote::create($this->form);

        Income::create([
            'reference_no'=>$data->nomor_pengajuan,
            'payment_amount'=>$data->amount,
            'nominal'=>$data->amount,
            'status'=>0,
            'transaction_id'=>$data->id,
            'transaction_table'=>'credit_notes',
            'client'=> $data->description,
            'coa_id'=>$data->coa_id
        ]);

        session()->flash('message-success','Transaksi berhasil disimpan');

        return redirect()->route('debit-note.index');
    }
}
