<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Modelcode extends Model
{
    use HasFactory;

    protected $table = 'model_codes',$guarded=[];
}
