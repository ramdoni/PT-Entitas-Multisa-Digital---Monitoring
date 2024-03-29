<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PurchaseOrderMaterial extends Model
{
    use HasFactory;

    protected $guarded = [];
    protected $casts = [
        'material_row'=>'array'
    ];
}
