<?php

namespace App\Http\Livewire\DebitNote;

use Livewire\Component;
use App\Models\DebitNote;
use App\Models\JenisPinjaman;
use App\Models\JenisSimpanan;
use App\Models\Pinjaman;
use App\Models\PinjamanItem;
use App\Models\Simpanan;
use Livewire\WithPagination;

class Edit extends Component
{
    protected $paginationTheme = 'bootstrap';
    use WithPagination;
    public $data,$jenis_simpanan=[],$filter=[],$jenis_pinjaman=[];
    public function render()
    {
        if($this->data->type==1)
            $data = $this->get_simpanan();
        else
            $data = $this->get_pinjaman();

        return view('livewire.debit-note.edit')->with(['details'=>$data->paginate(100)]);
    }

    public function mount(DebitNote $data)
    {
        $this->data = $data;
        $this->jenis_simpanan = JenisSimpanan::get();
        $this->jenis_pinjaman = JenisPinjaman::get();
    }

    public function get_simpanan()
    {
        $simpanan = Simpanan::with(['jenis_simpanan','anggota'])->where('debit_note_id',$this->data->id);

        foreach($this->filter as $field=>$value){
            if($value=="") continue; 
            $simpanan->where($field,$value);
        }

        return $simpanan;
    }

    public function get_pinjaman()
    {
        $pinjaman = PinjamanItem::with('pinjaman')->whereHas('pinjaman',function($table){
            if(isset($this->filter['jenis_pinjaman_id'])){
                $table->where('pinjaman.jenis_pinjaman_id',$this->filter['jenis_pinjaman_id']);
            }
            if(isset($this->filter['no_transaksi'])){
                $table->where('pinjaman.no_pengajuan',$this->filter['no_transaksi']);
            }
        })->where('debit_note_id',$this->data->id);

        
        return $pinjaman;
    }

    public function downloadExcel()
    {
        $objPHPExcel = new \PhpOffice\PhpSpreadsheet\Spreadsheet();
        // Set document properties
        $objPHPExcel->getProperties()->setCreator("ENTIGI System")
                                    ->setLastModifiedBy("ENTIGI System")
                                    ->setTitle("Office 2007 XLSX Product Database")
                                    ->setKeywords("office 2007 openxml php");

        $objPHPExcel->setActiveSheetIndex(0)
                    ->setCellValue('A1', 'NO')
                    ->setCellValue('B1', 'NO TRANSAKSI')
                    ->setCellValue('C1', $this->data->type==1 ? 'JENIS SIMPANAN' : 'JENIS PEMBIAYAAN')
                    ->setCellValue('D1', 'ANGGOTA')
                    ->setCellValue('E1', 'AMOUNT');
                    
        $objPHPExcel->getActiveSheet()->getStyle('A1:E1')->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)->getStartColor()->setRGB('c2d7f3');
        // $objPHPExcel->getActiveSheet()->getRowDimension('1')->setRowHeight(34);
        $objPHPExcel->getActiveSheet()->getColumnDimension('A')->setWidth(5);
        $objPHPExcel->getActiveSheet()->getColumnDimension('B')->setAutoSize(true);
        $objPHPExcel->getActiveSheet()->getColumnDimension('C')->setAutoSize(true);
        $objPHPExcel->getActiveSheet()->getColumnDimension('D')->setAutoSize(true);
        $objPHPExcel->getActiveSheet()->getColumnDimension('E')->setAutoSize(true);
        $objPHPExcel->getActiveSheet()->setAutoFilter('B1:E1');
        $num=2;
        
        if($this->data->type==1){
            $data =  $this->get_simpanan()->get();
        }
        if($this->data->type==2){
            $data =  $this->get_pinjaman()->get();
        }
        foreach($data as $k => $i){
            if($this->data->type==1){
                $objPHPExcel->setActiveSheetIndex(0)
                    ->setCellValue('A'.$num,($k+1))
                    ->setCellValue('B'.$num,$i->no_transaksi)
                    ->setCellValue('C'.$num,$i->jenis_simpanan_detail ? $i->jenis_simpanan_detail['name'] : $i->jenis_simpanan->name)
                    ->setCellValue('D'.$num,$i->user_member_detail ? $i->user_member_detail['name']:$i->anggota->no_anggota_platinum)
                    ->setCellValue('E'.$num,$i->amount);
            }
            if($this->data->type==2){
                $objPHPExcel->setActiveSheetIndex(0)
                    ->setCellValue('A'.$num,($k+1))
                    ->setCellValue('B'.$num,$i->pinjaman->no_pengajuan)
                    ->setCellValue('C'.$num,isset($i->pinjaman->jenis_pinjaman_detail['name'])?$i->pinjaman->jenis_pinjaman_detail['name']:'-')
                    ->setCellValue('D'.$num,isset($i->pinjaman->user_detail['no_anggota_platinum'])?$i->pinjaman->user_detail['no_anggota_platinum']:'-')
                    ->setCellValue('E'.$num,$i->tagihan);
            }

            $objPHPExcel->getActiveSheet()->getStyle('E'.$num)->getNumberFormat()->setFormatCode('#,##0');
            $num++;
        }

        $objPHPExcel->setActiveSheetIndex(0);

        $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($objPHPExcel, "Xlsx");

        // If you're serving to IE over SSL, then the following may be needed
        header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
        header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
        header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
        header ('Pragma: public'); // HTTP/1.0
        return response()->streamDownload(function() use($writer){
            $writer->save('php://output');
        },'debit-note-' .$this->data->id. '-' .date('d-M-Y') .'.xlsx');
    }
}
