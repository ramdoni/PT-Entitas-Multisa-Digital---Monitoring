<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Quotation extends Model
{
    use HasFactory;
    protected $guarded = [];

    public function customer()
    {
        return $this->hasOne(Customer::class,'id','customer_id');
    }

    public function submitter()
    {
        return $this->hasOne(User::class,'id','submitted_id');
    }
}
