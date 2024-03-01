@section('title', __('Debit Note'))
@section('sub-title', $data->nomor_pengajuan)
<div class="row clearfix">
    <div class="col-md-4">
        <div class="card">
            <div class="body">
                <form id="basic-form" method="post" wire:submit.prevent="save">
                    <div class="row">
                        <div class="form-group col-md-12" wire:ignore>
                            <label>{{ __('No Anggota / Nama Anggota') }}</label><br />
                            {{$data->nomor_pengajuan}}
                            @if($data->status==0)
                                <span class="badge badge-warning badge-active">Unpaid</span>
                            @endif
                            @if($data->status==1)
                                <span class="badge badge-success badge-active"><i class="fa fa-check-circle"></i> Paid</span>
                            @endif
                            @if($data->status==2)
                                <span class="badge badge-danger badge-active">Cancel</span>
                            @endif
                            <hr />
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Total Anggota') }}</label><br />
                            {{format_idr($data->total_anggota)}}
                            <hr />
                        </div>               
                        <div class="form-group col-md-6">
                            <label>{{ __('Nominal') }}</label><br />
                            Rp. {{format_idr($data->amount)}}
                            <hr />
                        </div>           
                    </div>
                    <a href="{{route('pinjaman.index')}}"><i class="fa fa-arrow-left"></i> {{ __('Kembali') }}</a>
                    @if ($data->status==0)
                        <!-- <a href="javascript:void(0)" class="ml-2 btn btn-info" data-toggle="modal" data-target="#modal_pembayaran"><i class="fa fa-check-circle"></i> Tambah Pembayaran</a> -->
                    @endif
                    <span wire:loading wire:target="submit,hitung">
                        <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i>
                        <span class="sr-only">{{ __('Loading...') }}</span>
                    </span>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-8">
        <div class="card">
            <ul class="nav nav-tabs-new2">
                <li class="nav-item"><a class="nav-link active show" data-toggle="tab" href="#tab_detail_angsuran">Detail Anggota</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane show active" id="tab_detail_angsuran">
                    <div class="body pt-2">
                        <div class="row">
                            <div class="col-md-3 form-group">
                                <input type="text" class="form-control" wire:model="filter.no_transaksi" placeholder="No Transaksi">
                            </div>
                            <div class="col-md-4 form-group">
                                @if ($data->type==1)
                                    <select class="form-control" wire:model="filter.jenis_simpanan_id">
                                        <option value=""> -- Jenis Simpanan -- </option>
                                        @foreach($jenis_simpanan as $item)
                                            <option value="{{$item->id}}">{{$item->name}}</option>
                                        @endforeach
                                    </select>
                                @endif
                                @if ($data->type==2)
                                    <select class="form-control" wire:model="filter.jenis_pinjaman_id">
                                        <option value=""> -- Jenis Pembiayaan -- </option>
                                        @foreach($jenis_pinjaman as $item)
                                            <option value="{{$item->id}}">{{$item->name}}</option>
                                        @endforeach
                                    </select>
                                @endif
                            </div>
                            <div class="col-md-4 pt-1">
                                <a href="javascript:void(0)" class="ml-2"><i class="fa fa-print"></i> Print</a>
                                <a href="javascript:void(0)" wire:click="downloadExcel" class="ml-2"><i class="fa fa-download"></i> Download Excel</a>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table m-b-0 c_list">
                                <thead style="background-color: #efefef;;">
                                    <tr>
                                        <th>No</th>                                    
                                        <th>No Transaksi</th>     
                                        @if ($data->type==1)
                                            <th>Jenis Simpanan</th>
                                        @endif
                                        @if ($data->type==2)
                                            <th>Jenis Pembiayaan</th>
                                        @endif                                    
                                        <th>NPK</th>
                                        <th>Nama Anggota</th>
                                        <th class="text-right">Nominal</th>     
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($data->type==1)
                                        @php($number= $details->total() - (($details->currentPage() -1) * $details->perPage()))
                                        @foreach($details as $k=>$item)
                                            <tr>
                                                <td>{{format_idr($number)}}</td>
                                                <td>{{$item->no_transaksi}}</td>
                                                <td>{{$item->jenis_simpanan_detail ? $item->jenis_simpanan_detail['name'] : $item->jenis_simpanan->name}}</td>
                                                <td>{{$item->user_member_detail ? $item->user_member_detail['no_anggota_platinum'] : $item->anggota->no_anggota_platinum}}</td>
                                                <td>{{$item->user_member_detail ? $item->user_member_detail['name'] : $item->anggota->name}}</td>
                                                <td class="text-right">{{format_idr($item->amount)}}</td>
                                            </tr>
                                            @php($number--)
                                        @endforeach
                                    @endif
                                    @if ($data->type==2)
                                        @php($number= $details->total() - (($details->currentPage() -1) * $details->perPage()))
                                        @foreach($details as $k=>$item)
                                            <tr>
                                                <td>{{format_idr($number)}}</td>
                                                <td>
                                                    <a href="{{route('pinjaman.edit',$item->pinjaman_id)}}" target="_blank" >
                                                        {{$item->pinjaman->no_pengajuan}}
                                                    </a>
                                                </td>
                                                <td>{{@$item->pinjaman->jenis_pinjaman_detail['name']}}</td>
                                                <td>{{@$item->pinjaman->user_detail['no_anggota_platinum']}}</td>
                                                <td>{{@$item->pinjaman->user_detail['name']}}</td>
                                                <td class="text-right">{{format_idr($item->tagihan)}}</td>
                                            </tr>
                                            @php($number--)
                                        @endforeach
                                    @endif
                                </tbody>
                            </table>    
                        </div>
                        {{$details->links()}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@livewire('debit-note.pembayaran',['id'=>$data->id])