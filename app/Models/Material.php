<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Material extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function brand()
    {
        return $this->hasOne(Brand::class,'id','brand_id');
    }

    public function modelcode()
    {
        return $this->hasOne(Modelcode::class,'id','model_code_id');
    }

    public function uom()
    {
        return $this->hasOne(Uom::class,'id','uom_id');
    }
}
