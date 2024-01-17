<?php

namespace App\Http\Livewire\Quotation;

use Livewire\Component;
use App\Models\Quotation;

class Index extends Component
{
    public $filter=[];
    public function render()
    {
        $data = $this->data();
        $total = clone $data;
        $total_amount = clone $data;
        $success = clone $data;
        $reject = clone $data;
        $proposed = clone $data;

        return view('livewire.quotation.index')->with(['data'=>$data->paginate(100),
            'total'=>$total->count(),
            'total_amount'=>$total_amount->sum('total_quotation'),
            'proposed'=>$proposed->where('status',0)->sum('total_quotation'),
            'success'=>$success->where('status',1)->sum('total_quotation'),
            'reject'=>$reject->where('status',2)->sum('total_quotation'),
        ]);
    }

    public function data()
    {
        $data = Quotation::orderBy('id','DESC');

        foreach($this->filter as $field=>$value){
            if($field=='keyword'){
                foreach(['project_type','responsibility','project_code','project_name','quotation_number','remarks'] as $key){
                    $data->orWhere($key,"LIKE","%{$value}%");
                }
            }else
                $data->where($field,$value);
        }

        return $data;
    }
}
