<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DebitNote extends Model
{
    use HasFactory;

    protected $casts = [
        'jenis_simpanan'=>'array',
        'jenis_pinjaman'=>'array'
    ],$guarded = [];


    public function simpanan()
    {
        return $this->hasMany(Simpanan::class,'debit_note_id','id');
    }
}
