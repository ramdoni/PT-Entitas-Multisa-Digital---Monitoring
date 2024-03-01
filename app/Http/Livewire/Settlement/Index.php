<?php

namespace App\Http\Livewire\Settlement;

use App\Jobs\CalculateUjks;
use App\Models\BankBook;
use App\Models\Coa;
use App\Models\CreditNote;
use App\Models\DebitNote;
use App\Models\Expense;
use App\Models\Income;
use App\Models\Labarugi;
use App\Models\MarginHistory;
use App\Models\Neraca;
use App\Models\PinjamanItem;
use App\Models\Settlement;
use App\Models\Simpanan;
use Livewire\Component;

class Index extends Component
{
    public $transaksis=[],$transaksi,$transaksi_type=0,$transaksi_amount=0,$transaksi_keterangan,$transaksi_no_transaksi;
    public $bank_books=[],$bank_book_id,$bank_book,$type=1,$transaksi_id;
    public $total_bank_book=0,$total_transaksi=0;
    public $transaksi_type_ = [
        1=>'Income',
        2=>'Expense'
    ];

    public function render()
    {
        $data = $this->get_data();

        return view('livewire.settlement.index')->with(['data'=>$data->paginate(100)]);
    }

    public function updated($propertyName)
    {
        if($propertyName=='bank_book_id'){
            $this->bank_book = BankBook::find($this->bank_book_id);
            $this->assign_bank_book();
        }

        if($propertyName=='transaksi_id'){
            if($this->transaksi_type==1){
                $this->transaksi = Income::find($this->transaksi_id);
                $this->transaksi_amount = $this->transaksi->nominal;
                $this->transaksi_keterangan = $this->transaksi->description;
                $this->transaksi_no_transaksi = $this->transaksi->reference_no;
            }
                
            if($this->transaksi_type==2){
                $this->transaksi = Expense::find($this->transaksi_id);
                $this->transaksi_amount = $this->transaksi->nominal;
                $this->transaksi_no_transaksi = $this->transaksi->reference_no;
                $this->transaksi_keterangan = $this->transaksi->client;
            }
            $this->assign_transaksi();
        }

        if($propertyName=='transaksi_type'){
            $this->emit('transaksi_type',$this->transaksi_type);
        }

        $this->calculate();
    }

    public function assign_bank_book()
    {
        $this->bank_books[] = $this->bank_book->toArray();
        $this->calculate();
    }

    public function assign_transaksi()
    {
        $this->transaksis[] = [
            'id'=>$this->transaksi->id,
            'type'=>$this->transaksi_type,
            'no_transaksi'=>$this->transaksi_no_transaksi,
            'keterangan'=>$this->transaksi_keterangan,
            'amount'=>$this->transaksi_amount
        ];
        
        $this->calculate();
    }

    public function get_data()
    {
        $data = BankBook::orderBy('id','DESC');
        
        return $data;
    }

    public function calculate()
    {
        $this->total_bank_book=0; $this->total_transaksi=0;
        foreach($this->bank_books as $item){
            $this->total_bank_book += $item['amount'];
        }
        foreach($this->transaksis as $item){
            $this->total_transaksi += $item['amount'];
        }
    }

    public function delete($k)
    {
        unset($this->bank_books[$k]);
        $this->calculate();
    }

    public function delete_transaksi($k)
    {
        unset($this->transaksis[$k]);
        $this->calculate();
    }
    
    public function save()
    {
        $this->calculate();

        if($this->total_bank_book != $this->total_transaksi){
            $this->emit('message-error','Total transaksi belum sesuai dengan total Bank Book');
            return;
        }

        $this->validate([
            'bank_books'=>'required|array',
            'transaksis'=>'required|array'
        ]);

        $settle = Settlement::create([
            'user_id'=>\Auth::user()->id,
            'total_settlement'=>count($this->transaksis),
            'total_amount'=>$this->total_transaksi,
            'data_left'=>$this->bank_books,
            'data_right'=>$this->transaksis
        ]);

        $payment_date = date('Y-m-d');

        foreach($this->bank_books as $item){
            $bank_book = BankBook::find($item['id']);
            
            $bank_book->update([
                'status'=>1,
                'settlement_id'=>$settle->id,
                'date_pairing'=>date('Y-m-d')
            ]);

            $payment_date = $bank_book->payment_date;
        }

        foreach($this->transaksis as $item){
            if($item['type']==1){
                $income = Income::find($item['id']);
                
                $income->update([
                    'status'=>1,
                    'settlement_id'=>$settle->id,
                    'settle_date'=>date('Y-m-d')
                ]);

                if($income->coa_id){
                    $coa = Coa::find($income->coa_id);
                    if($coa->is_neraca==1){
                        $neraca = Neraca::where(['coa_id'=>$coa->id,'bulan'=>(int)date('m'),'tahun'=>date('Y')])->first();
                        if($neraca){
                            $neraca->update([
                                'amount'=>$neraca->amount + $income->nominal,
                                'coa_detail'=>$coa->toArray()
                            ]);
                        }else 
                            Neraca::create([
                                'amount'=>$income->nominal,
                                'coa_detail'=>$coa->toArray(),
                                'coa_id'=>$coa->id,
                                'bulan'=>(int)date('m'),
                                'tahun'=>date('Y')
                            ]);
                    }

                    if($coa->is_laba_rugi==1){
                        $neraca = Labarugi::where(['coa_id'=>$coa->id,'bulan'=>(int)date('m'),'tahun'=>date('Y')])->first();
                        if($neraca){
                            $neraca->update([
                                'amount'=>$neraca->amount + $income->nominal,
                                'coa_detail'=>$coa->toArray()
                            ]);
                        }else 
                            Labarugi::create([
                                'amount'=>$income->nominal,
                                'coa_detail'=>$coa->toArray(),
                                'coa_id'=>$coa->id,
                                'bulan'=>(int)date('m'),
                                'tahun'=>date('Y')
                            ]);
                    }
                }

                if($income->transaction_table=='debit_notes'){
                    $dn = DebitNote::find($income->transaction_id);
                    $dn->update([
                        'status'=>1,
                        'payment_date'=>$payment_date,
                        'payment_submitted_date'=>date('Y-m-d H:i:s'),
                        'payment_user'=>\Auth::user()->toArray()
                    ]);

                    if($dn->type==1){
                        Simpanan::where('debit_note_id',$dn->id)
                                ->update([
                                    'status'=>1,
                                    'payment_date'=>$payment_date
                                ]);
                    }
                    if($dn->type==2){
                        $pinjaman = PinjamanItem::where('debit_note_id',$dn->id)->get();
                        foreach($pinjaman as $item){
                            MarginHistory::create([
                                'nominal'=>$item->jasa_nominal,
                                'margin'=>$item->jasa,
                                'transaction_table'=>'pinjaman_items',
                                'transaction_id'=>$item->id
                            ]);
                        }
                    }
                }               
            }
            
            if($item['type']==2){
                $expense = Expense::find($item['id']);
                $expense->update([
                    'status'=>1,
                    'settlement_id'=>$settle->id,
                    'settle_date'=>date('Y-m-d')
                ]);

                 /**
                 * Update status credit notes
                 */
                if($expense->transaction_table=='credit_notes'){
                    $cn  = CreditNote::find($expense->transaction_id);
                    $cn->update([
                        'status'=>1,
                        'payment_date'=>$payment_date,
                        'payment_submitted_date'=>date('Y-m-d H:i:s')
                    ]);

                     /**
                     *  JIK ADA COA - PIUTANG JUAL BELI
                     */
                    if($expense->coa_id==4 and isset($cn->pinjaman->jasa)){
                        $jasa = $cn->pinjaman->jasa;
                        // MARGIN JUAL BELI DITANGGUHKAN
                        $margin = Coa::find(7);
                        if($margin->is_laba_rugi==1){
                            update_laba_rugi(7,-$jasa);
                        }
                        if($margin->is_neraca==1){
                            update_neraca(7,-$jasa);
                        }
                    }
                }

                if($expense->coa_id){
                    $coa = Coa::find($expense->coa_id);
                    if($coa->is_neraca==1){
                       update_neraca($coa->id,$expense->nominal);
                    }
                    if($coa->is_laba_rugi==1){
                        update_laba_rugi($coa->id,$expense->nominal);
                    }  
                }
            }
        }

        CalculateUjks::dispatch();

        session()->flash('message-success','Data berhasil di settlement');

        return redirect()->route('bank-book.index');
    }
}
