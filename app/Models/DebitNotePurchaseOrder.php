<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DebitNotePurchaseOrder extends Model
{
    use HasFactory;
    protected $guarded = [];

    protected $casts = [
        'purchase_order_raw'=>'array',
        'debit_note_raw'=>'array'
    ];
}
