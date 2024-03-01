<?php

namespace App\Http\Livewire\PurchaseOrderIn;

use App\Models\CreditNotePurchaseOrder;
use App\Models\PurchaseOrder;
use App\Models\Expense;
use App\Models\CreditNote as ModelCreditNote;
use Livewire\Component;

class CreditNote extends Component
{
    public $data;
    protected $listeners = ['set_id'=>'set_id'];
    public $form = [
        'type'=>1
    ];

    public function render()
    {
        return view('livewire.purchase-order-in.credit-note');
    }

    public function set_id($id)
    {
        $this->data = PurchaseOrder::find($id);
    }

    public function mount()
    {
        $this->form['user_id'] = \Auth::user()->id;
        $this->form['data_detail'] = \Auth::user()->toArray();
        $this->generate_nomor_pengajuan();
    }

    public function generate_nomor_pengajuan()
    {
        $id = ModelCreditNote::latest()->first();

        $this->form['nomor_pengajuan'] =  str_pad(($id?($id->id+1) : 1),4, '0', STR_PAD_LEFT)."/KOPERASI-GS/CN/".getRomawi(date('m'))."/".date('Y');
    }

    public function save()
    {
        $this->validate([
                'form.description'=>'required',
                'form.nominal'=>'required',
                // 'form.coa_id'=>'required',
        ],[
            'form.description.required'=>'Keterangan harus diisi',
            // 'form.coa_id.required'=>'Journal / Coa harus dipilih'
        ]);

        $this->generate_nomor_pengajuan();

        $data = ModelCreditNote::create($this->form);

        CreditNotePurchaseOrder::create([
            'credit_note_id'=>$data->id,
            'purchase_order_id'=>$this->data->id,
            'credit_note_raw'=> $data->toArray(),
            'purchase_order_raw'=>$this->data->toArray()
        ]);

        Expense::create([
            'reference_no'=>$data->nomor_pengajuan,
            'payment_amount'=>$data->nominal,
            'nominal'=>$data->nominal,
            'status'=>0,
            'transaction_id'=>$data->id,
            'transaction_table'=>'credit_notes',
            'recipient'=> $data->description,
            'coa_id'=>$data->coa_id
        ]);

        session()->flash('message-success','Transaksi berhasil disimpan');

        return redirect()->route('credit-note.index');
    }
}
