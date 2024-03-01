<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\BankBookPairing;
use App\Models\IncomeSettle;
use App\Models\BankBookTransactionItem;
use App\Models\BankBook;
use App\Models\IncomePayment;
use App\Models\IncomeOthersCoa;
use App\Models\BankAccount;

class Income extends Model
{
    use HasFactory;
    protected $guarded = [];

    protected $table="income";

    public static function boot()
    {
        parent::boot();

        self::creating(function($model){
            $model->no_voucher = 'IN/'.str_pad((Income::count()+1),8, '0', STR_PAD_LEFT).'/'.date('m').'/'.date('Y');
        });

        self::created(function($model){
            // ... code here
        });

        self::updating(function($model){
            // ... code here
        });

        self::updated(function($model){
            // ... code here
        });

        self::deleting(function($model){
            // ... code here
        });

        self::deleted(function($model){
            // ... code here
        });
    }
    public function income_other_coa()
    {
        return $this->hasMany(IncomeOthersCoa::class,'income_id','id');
    }
    
    public function others_payment()
    {
        return $this->hasMany(IncomePayment::class,'income_id','id');
    }
    
    public function bank_books_direct()
    {
        return $this->hasMany(BankBook::class,'bank_book_transaction_id','bank_book_transaction_id');
    }
    
    public function to_bank()
    {
        return $this->hasOne(BankAccount::class,'id','rekening_bank_id');
    }

    public function bank_book()
    {
        return $this->hasOne(BankBook::class,'id','bank_book_id');
    }

    public function bank_books()
    {
        return $this->hasMany(BankBookTransactionItem::class,'transaction_id','id')->where('type','Premium Receivable');
    }

    public function settle()
    {
        return $this->hasMany(IncomeSettle::class,'income_id');
    }

    public function migration()
    {
        return $this->belongsTo(MigrationData::class,'transaction_id');
    }

    public function expense()
    {
        return $this->belongsTo(\App\Models\Expenses::class,'transaction_id');
    }

    public function vouchers()
    {
        return $this->hasMany(BankBookPairing::class,'transaction_id','id')->where('transaction_table','premium receivable');
    }
    
    public function policys()
    {
        return $this->hasOne('\App\Models\Policy','id','policy_id');
    }
    public function bank_account()
    {
        return $this->hasOne('\App\Models\BankAccount','id','rekening_bank_id');
    }
    public function coa()
    {
        return $this->hasMany('\App\Models\IncomeCoa','income_id','id');
    }
    public function journals()
    {
        return $this->hasMany('\App\Models\Journal','transaction_id','id')->where('transaction_table','income');
    }
    public function uw()
    {
        return $this->hasOne('\App\Models\KonvenUnderwriting','id','transaction_id');
    }
    public function uw_syariah()
    {
        return $this->hasOne('\App\Models\SyariahUnderwriting','id','transaction_id');
    }
    public function cancelation_syariah()
    {
        return $this->hasMany(\App\Models\IncomeCancel::class,'income_id')->where('transaction_table','syariah_cancel');
    }
    public function cancelation_konven()
    {
        return $this->hasMany(\App\Models\IncomeCancel::class,'income_id')->where('transaction_table','konven_memo_pos');
    }
    public function endorsement_syariah()
    {
        return $this->hasMany(\App\Models\IncomeEndorsement::class,'income_id')->where('transaction_table','syariah_cancel');
    }
    public function endorsement_konven()
    {
        return $this->hasMany(\App\Models\IncomeEndorsement::class,'income_id')->where('transaction_table','konven_memo_pos');
    }
    public function total_cancelation()
    {
        return $this->hasMany('\App\Models\KonvenUnderwritingCancelation','income_id','id');
    }
    public function from_bank_account()
    {
        return $this->belongsTo(\App\Models\BankAccount::class,'from_bank_account_id');
    }
    public function titipan_premi()
    {
        return $this->hasMany(\App\Models\IncomeTitipanPremi::class,'income_titipan_id')->orderBy('id','DESC');
    }
}