<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PurchaseOrder extends Model
{
    use HasFactory;

    protected $guarded = [];
    public function vendor()
    {
        return $this->hasOne(Vendor::class,'id','vendor_id');
    }

    public function quotation()
    {
        return $this->hasOne(Quotation::class,'id','quotation_id');
    }
    public function materials()
    {
        return $this->hasMany(PurchaseOrderMaterial::class,'purchase_order_id','id');
    }
}
