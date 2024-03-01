<?php

namespace App\Http\Livewire\DebitNote;

use Livewire\Component;
use App\Models\DebitNote;
use App\Models\Simpanan;

class Index extends Component
{
    public $form = [];
    public function render()
    {
        $data = DebitNote::orderBy('id','DESC');

        $total_amount = clone $data;
        $total_amount_paid = clone $data;
        $total_amount_unpaid = clone $data;
        
        return view('livewire.debit-note.index')->with(['data'=>$data->paginate(100),
                    'total_amount'=>$total_amount->sum('amount'),
                    'total_amount_paid'=>$total_amount_paid->sum('amount'),
                    'total_amount_unpaid'=>$total_amount_unpaid->sum('amount')
                ]);
    }

    public function delete($id)
    {
        DebitNote::find($id)->update(['status'=>2]);

        $simpanan = Simpanan::where('debit_note_id',$id);
        if($simpanan->count()>0){
            $simpanan->delete();
        }

        session()->flash('message-success',__('Data berhasil di hapus.'));

        return redirect()->route('debit-note.index');
    }
}
