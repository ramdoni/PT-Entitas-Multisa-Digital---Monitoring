<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\Reas;
use App\Models\ReasuradurRate;

class SinkronReas extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'date';

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

    public function convert($size)
    {
        $unit=array('b','kb','mb','gb','tb','pb');
        return @round($size/pow(1024,($i=floor(log($size,1024)))),2).' '.$unit[$i];
    }
    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $serial_port = 'COM9'; // Sesuaikan dengan port serial yang Anda gunakan
        $baud_rate = 9600; // Sesuaikan dengan baud rate yang diperlukan
        
        exec("mode COM9: BAUD=9600 PARITY=n DATA=8 STOP=1 to=off dtr=off rts=off");

        // Buka koneksi serial
        $serial_handle = fopen($serial_port, 'w+');

        if ($serial_handle==true) {
            try {
                fwrite($serial_handle, "\x0C");
                
                $space="";
                for($num=0;$num<=28;$num++){
                    fwrite($serial_handle, "\x0C");
                    $space .= " ";
                    fwrite($serial_handle,$space."Aksa & Ganes");

                    usleep(1000000); // 100,000 mikrodetik (0.1 detik)
                    if($num>=28){
                        $num=0;
                        $space = "";
                    }
                }

                // while(true){
                    
                //     // fwrite($serial_handle, "\x0C");
                //     usleep(1000000); // 100,000 mikrodetik (0.1 detik)
                //     // sendVfdData(date('d M Y H:i:s'));
                    
                //     $date = date('d-M-Y');
                //     fwrite.($serial_handle, $date."      \r\n".date("H:i:s")."            ");
                //     // fwrite($serial_handle,  "\r".$date."\r\n".date("H:i:s"));

                //     $this->info($date . date(' H:i:s'));
                // }
                

            } finally {
                // Tutup koneksi serial saat selesai
                fclose($serial_handle);
            }
        }
    }
}
