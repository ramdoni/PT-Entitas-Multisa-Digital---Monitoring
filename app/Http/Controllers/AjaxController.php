<?php

namespace App\Http\Controllers;

use App\Models\BankBook;
use App\Models\Expense;
use App\Models\Income;
use Illuminate\Http\Request;
use App\Models\UserMember;

class AjaxController extends Controller
{
    protected $respon;

    public function getMember(Request $request)
    {
        $params = [];
        if($request->ajax())
        {
            $user = \Auth::user();
            $data =  UserMember::where('name', 'LIKE', "%". $request->name . "%")->orWhere('Id_Ktp', 'LIKE', '%'. $request->name .'%')->get();

            foreach($data as $k => $item)
            {
                if($k >= 10) continue;

                $params[$k]['id'] = $item->id;
                $params[$k]['value'] = $item->Id_Ktp .' - '. $item->name;
            }
        }
        return response()->json($params);
    }

    public function getBankbook(Request $request)
    {
        $params = [];
        $data =  BankBook::where('status',0)
        ->where(function($table) use($request){
            $table
                ->where('no_voucher', 'LIKE', "%". $request->search . "%")
                ->orWhere('amount', 'LIKE', '%'. $request->search .'%')
                ->orWhere('note', 'LIKE', '%'. $request->search .'%');
        });
        

        foreach($data->paginate(20) as $k => $item){
            $params[$k]['id'] = $item->id;
            $params[$k]['text'] = $item->no_voucher .' - '. format_idr($item->amount) .' - '. $item->note;
        }

        return response()->json(['message'=>'success','items'=>$params,'total_count'=>count($params)], 200);
    }

    public function getIncome(Request $request)
    {
        $params = [];
        $data =  Income::where('status',0)
                        ->where(function($table) use($request){
                            $table->where('reference_no', 'LIKE', "%". $request->search . "%")
                            ->orWhere('client', 'LIKE', '%'. $request->search .'%')
                            ->orWhere('nominal', 'LIKE', '%'. $request->search .'%');
                        });
                        

        foreach($data->paginate(20) as $k => $item){
            $params[$k]['id'] = $item->id;
            $params[$k]['text'] = $item->reference_no .' - '. format_idr($item->nominal) .' - '. $item->client;
        }

        return response()->json(['message'=>'success','items'=>$params,'total_count'=>count($params)], 200);
    }

    public function getExpense(Request $request)
    {
        $params = [];
        $data =  Expense::where('status',0)
                        ->where(function($table) use($request){
                            $table->where('reference_no', 'LIKE', "%". $request->search . "%")
                                ->orWhere('recipient', 'LIKE', '%'. $request->search .'%')
                                ->orWhere('nominal', 'LIKE', '%'. $request->search .'%');
                        });

        foreach($data->paginate(20) as $k => $item){
            $params[$k]['id'] = $item->id;
            $params[$k]['text'] = $item->reference_no .' - '. format_idr($item->nominal) .' - '. $item->recipient;
        }

        return response()->json(['message'=>'success','items'=>$params,'total_count'=>count($params)], 200);
    }

    public function getMember2(Request $request)
    {
        $params = [];
        $data =  UserMember::where('name', 'LIKE', "%". $request->search . "%")->orWhere('no_anggota_platinum', 'LIKE', '%'. $request->search .'%');

        foreach($data->paginate(20) as $k => $item){
            $params[$k]['id'] = $item->id;
            $params[$k]['name'] = $item->no_anggota_platinum .' - '. $item->name;
            $params[$k]['text'] = $item->no_anggota_platinum .' - '. $item->name;
        }

        return response()->json(['message'=>'success','items'=>$params,'total_count'=>count($params)], 200);
    }

    public function data()
    {   
        $keyword = isset($_GET['search']) ? $_GET['search'] : '';

        $data = Product::orderBy('keterangan','ASC');

        if($keyword) $data->where(function($table) use($keyword){
                            $table->where('kode_produksi','LIKE',"%{$keyword}%")->orWhere('keterangan','LIKE',"%{$keyword}%");
                        });
        $items = [];
        foreach($data->paginate(10) as $k => $item){
            $items[$k]['id'] = $item->id;
            $items[$k]['keterangan'] = $item->nama;
            $items[$k]['text'] = $item->barcode .' / '. $item->keterangan;
        }

        return response()->json(['message'=>'success','items'=>$items,'total_count'=>count($items)], 200);
    }
}
