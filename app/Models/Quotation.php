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

    public function customer_pic()
    {
        return $this->hasOne(CustomerPic::class,'id','customer_pic_id');
    }

    public function submitter()
    {
        return $this->hasOne(User::class,'id','submitted_id');
    }

    public function company()
    {
        return $this->hasOne(Company::class,'id','company_id');
    }

    public function parts()
    {
        return $this->hasMany(QuotationMaterial::class,'quotation_id','id');
    }
}
