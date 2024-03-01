<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CreditNote extends Model
{
    use HasFactory;

    protected $casts = [
        'data_detail'=>'array',
        'user_member_detail'=>'array'
    ];
    protected $guarded = [];

    public function purchase_order()
    {
        return $this->hasOne(CreditNotePurchaseOrder::class,'credit_note_id','id');
    }
}
