<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Quotation;
use App\Models\User;

class PrintController extends Controller
{
    public function quotation(Quotation $data)
    {
        $param['data'] = $data;
        $param['company'] = $data->company;
        $param['materials'] = $data->parts;

        $pdf = \App::make('dompdf.wrapper');
        $pdf->loadView('livewire.quotation.print', $param);

        return $pdf->stream();
    }
}
