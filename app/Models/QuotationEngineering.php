<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuotationEngineering extends Model
{
    use HasFactory;
    protected $guarded = [],$table='quotation_engineering';

    protected $casts = [
        'vendor_detail' => 'array'
    ];
}
