<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $casts = [
        'purchase_order_detail'=>'array',
        'quotation_detail'=>'array',
    ];

    public function purchase_order()
    {
        return $this->hasOne(PurchaseOrder::class,'id','purchase_order_id');
    }
}
