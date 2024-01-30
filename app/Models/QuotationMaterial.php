<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class QuotationMaterial extends Model
{
    use HasFactory;

    protected $guarded = [],$table = 'quotation_material';

    protected $casts = [
        'material_detail' => 'array'
    ];

    public function material()
    {
        return $this->hasONe(Material::class,'id','material_id');
    }
}
