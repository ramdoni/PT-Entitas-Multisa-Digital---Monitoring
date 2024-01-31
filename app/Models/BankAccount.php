<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\BankBooksSummary;

class BankAccount extends Model
{
    protected $dates = ['deleted_at'];
    use HasFactory;
    
    public function coa()
    {
        return $this->hasOne(Coa::class,'id','coa_id');
    }
}
