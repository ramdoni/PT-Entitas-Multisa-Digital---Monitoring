<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Alignment;

class CheckDouble extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'check:double';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $data = \DB::table('transaksi')
            ->selectRaw("amount,
                    no_transaksi,count(id) as counting, 
                    concat(year(created_at),'-',month(created_at),'-',day(created_at),' ', hour(created_at),':',minute(created_at)) as waktu,
                    created_at")
            ->groupBy('waktu','user_member_id','amount')
            ->whereIn('status',[1,2,3])
            ->get();

        $total = 0;
        
        ini_set('memory_limit', '-1');

        // Create new PHPExcel object
        $objPHPExcel = new \PhpOffice\PhpSpreadsheet\Spreadsheet();

		// Set document properties
		$objPHPExcel->getProperties()->setCreator("EpL System")
									 ->setLastModifiedBy("EpL System")
									 ->setTitle("Office 2007 XLS Procurment Monitoring  Database")
									 ->setSubject("Procurement Monitoring Database")
									 ->setDescription("Procurement Monitoring Database.")
									 ->setKeywords("office 2007 openxml php")
									 ->setCategory("vehicle");

		$activeSheet = $objPHPExcel->setActiveSheetIndex(0);
        $activeSheet
                    ->setCellValue('A4', 'No')
                    ->setCellValue('B4', 'No Transaksi')
                    ->setCellValue('C4', 'Tanggal')
                    ->setCellValue('D4', 'Amount');

        $activeSheet->getStyle('A4:D4')->getFill()
                            ->setFillType(Fill::FILL_SOLID)
                            ->getStartColor()->setRGB('e2efd9');

        $activeSheet->getStyle('A4:D4')->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);;
        $activeSheet->getStyle('A4:D4')->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
        $activeSheet->getRowDimension('4')->setRowHeight(24);
        $activeSheet->getColumnDimension('A')->setWidth(5);
       
        $num=5;
        $no=1;

        $progressbar = $this->output->createProgressBar($data->count());
        $progressbar->start();
       
        foreach($data as $key => $item){
            $progressbar->advance();
            
            if($item->counting <= 1) continue;

            $activeSheet
                    ->setCellValue('A'.$num, ($no))
                    ->setCellValue('B'.$num, $item->no_transaksi)
                    ->setCellValue('C'.$num, $item->created_at)
                    ->setCellValue('D'.$num, $item->amount)
                    ;
            $activeSheet->getStyle('D'.$num)->getNumberFormat()->setFormatCode('#,##0');
            $activeSheet->getStyle('D'.$num)->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);;
            $num++;
            $no++;
        }
		
        // Rename worksheet
       	$activeSheet->setTitle('Report');

        $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($objPHPExcel, "Xlsx");
		
		$file = '/public/excel/';
		$file_dir = dirname(__DIR__, 3).$file;
		if (!file_exists($file_dir)) {
			if (!mkdir($file_dir, 0777, true) && !is_dir($file)) {
				throw new \RuntimeException(sprintf('Directory "%s" was not created', $file));
			}
		}
		$file = $file_dir.date('Y-m-d_H-i-s').'.xlsx';
        $this->error('Uploaded to server.......');
		$writer->save($file);
    }
}
