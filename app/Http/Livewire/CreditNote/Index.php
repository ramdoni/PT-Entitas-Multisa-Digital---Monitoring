<?php

namespace App\Http\Livewire\CreditNote;

use App\Models\CreditNote;
use App\Models\Income;
use Livewire\Component;

class Index extends Component
{
    protected $listeners = ['reload'=>'$refresh'];
    public $filter=[];
    public function render()
    {
        $data = $this->get_data();

        return view('livewire.credit-note.index')->with(['data'=>$data->paginate(100)]);
    }

    public function get_data()
    {
        $data = CreditNote::orderBy('id','DESC');

        return $data;
    }

    public function delete($id)
    {
        CreditNote::find($id)->delete();

        Income::where(['transaction_table'=>'credit_notes','transaction_id'=>$id])->delete();

        $this->emit('reload'); $this->emit('message-success','Data berhasil dihapus');
    }
}
