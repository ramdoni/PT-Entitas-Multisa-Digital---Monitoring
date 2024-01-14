<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Provinsi;
use App\Models\Kabupaten;

class Customer extends Model
{
    use HasFactory;

    protected $table = 'customer';

    protected $guarded=[];

    public function provinsi()
    {
        return $this->hasOne(Provinsi::class,'id','provinsi_id');
    }

    public function kabupaten()
    {
        return $this->hasOne(Kabupaten::class,'id','kabupaten_id');
    }
}
