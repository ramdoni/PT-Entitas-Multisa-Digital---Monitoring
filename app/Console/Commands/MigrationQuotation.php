<?php

namespace App\Console\Commands;

use App\Models\Customer;
use App\Models\Quotation;
use Illuminate\Console\Command;

class MigrationQuotation extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'migrate:quotation';

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
        ini_set('memory_limit', '-1');
        $inputFileName = './public/migrasi/quotation.xlsx';

        /** Load $inputFileName to a Spreadsheet Object  **/
        $spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load($inputFileName);
        $sheetData = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);

        $arr = [];
        $key=0;
        $num=0;
        $double=0;
        foreach($sheetData as $k => $item){
            $num++;
            if($num<1) continue;
            if($item['F']=="") continue;
            $cus = explode('-',$item['F']);

            $customer = Customer::where('customer_code',$cus[0])->first();
            if(!$customer){
                $customer = Customer::create([
                    'customer_code'=>$cus[0],
                    'name'=>@$cus[1]
                ]);
            }

            $st = $item['P'];
            $status = 0;
            if($st=='SUCCESS')
                $status=1;
            if($st=='REJECT')
                $status=2;
            if($st=='CANCELED')
                $status=3;

            Quotation::updateOrCreate([
                'quotation_number'=>$item['G']
            ],[
                'quotation_number'=>$item['G'],
                'project_name'=>$item['E'],
                'quotation_date'=>date('Y-m-d',strtotime($item['H'])),
                'amount'=>$item['J'],
                'net_amount'=>$item['N'],
                'grand_total'=>$item['N'],
                'customer_id'=>$customer->id,
                'project_code'=>$item['D'],
                'responsibility'=>$item['C'],
                'project_type'=>$item['B'],
                'status'=>$status
            ]);

            $this->info("{$k}. {$item['G']}");
        }
        return 0;
    }
}
