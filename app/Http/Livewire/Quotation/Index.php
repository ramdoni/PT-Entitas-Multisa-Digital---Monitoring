<?php

namespace App\Http\Livewire\Quotation;

use App\Models\QuotationEngineering;
use App\Models\QuotationMaterial;
use Livewire\Component;
use App\Models\Quotation;
use App\Models\QuotationService;

class Index extends Component
{
    public $filter=[],$is_delete=false;
    public function render()
    {
        $data = $this->data();
        $total = clone $data;
        $total_amount = clone $data;
        $success = clone $data;
        $reject = clone $data;
        $proposed = clone $data;
        $total_amount_material = clone $data;
        $total_amount_services = clone $data;

        return view('livewire.quotation.index')->with(['data'=>$data->paginate(100),
            'total'=>$total->count(),
            'total_amount'=>$total_amount->sum('total_quotation'),
            'proposed'=>$proposed->where('status',0)->sum('total_quotation'),
            'success'=>$success->where('status',1)->sum('total_quotation'),
            'reject'=>$reject->where('status',2)->sum('total_quotation'),
            'total_amount_material'=>$total_amount_material->sum('total_material'),
            'total_amount_services'=>$total_amount_services->sum('total_services')
        ]);
    }

    public function mount()
    {
        if(isset($_GET['delete'])) $this->is_delete=true;
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

    public function delete($id)
    {
        Quotation::find($id)->delete();
        QuotationService::where('quotation_id',$id)->delete();
        QuotationMaterial::where('quotation_id',$id)->delete();
        QuotationEngineering::where('quotation_id',$id)->delete();

        $this->emit('message-success','deleted');
    }
}
