<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Expense extends Model
{
    use HasFactory;
    protected $guarded=[];

    public function credit_note()
    {
        return $this->hasOne(CreditNote::class,'id','transaction_id')->where('trasaction_table','credit_note');
    }

}
