@section('title', 'Debit Note')
@section('sub-title', 'Index')
<div class="clearfix row">
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter currency_state">
            <div class="body">
                <div class="icon"><i class="fa fa-database text-info"></i></div>
                <div class="content">
                    <div class="text text-info">Total</div>
                    <h5 class="number">{{format_idr($total_amount)}}</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter currency_state">
            <div class="body">
                <div class="icon"><i class="fa fa-check-circle text-success"></i></div>
                <div class="content">
                    <div class="text text-info">Paid</div>
                    <h5 class="number">{{format_idr($total_amount_paid)}}</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter currency_state">
            <div class="body">
                <div class="icon"><i class="fa fa-history text-danger"></i></div>
                <div class="content">
                    <div class="text text-info">Unpaid</div>
                    <h5 class="number">{{format_idr($total_amount_unpaid)}}</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-12">
        <div class="card">
            <div class="header row">
                <div class="col-md-2">
                    <input type="text" class="form-control" wire:model="filter.user_member_detail" placeholder="Pencarian" />
                </div>
                <div class="col-md-2">
                    <select class="form-control" wire:model="filter.type">
                        <option value=""> --- Type --- </option>
                        <option value="1">Project</option>
                        <option value="2">Non Project</option>
                    </select>
                </div>
                <div class="col-md-8">
                    <div class="btn-group" role="group">
                        <button id="btnGroupDrop1" type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action</button>
                        <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                            <a class="dropdown-item" href="javascript:void(0);" onclick="alert('Fitur masih dalam pengembangan')"><i class="fa fa-download"></i> Download</a>
                        </div>
                    </div>
                    <a href="javascript:void(0)" class="btn btn-success" data-toggle="modal" data-target="#modal_create"><i class="fa fa-plus"></i> Transaksi</a>
                    <a href="javascript:void(0)" class="float-right btn btn-warning" data-toggle="modal" data-target="#modal_setting_simpanan"><i class="fa fa-gear"></i> Pengaturan</a>
                    <span wire:loading>
                        <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i>
                        <span class="sr-only">{{ __('Loading...') }}</span>
                    </span>
                </div>
            </div>
            <div class="body pt-0">
                <div class="table-responsive mb-2" style="min-height:400px;">
                    <table class="table table-hover m-b-0 c_list">
                        <thead style="background: #eee;">
                            <tr>
                                <th>No</th>
                                <th>Status</th>
                                <th>Type</th>
                                <th>No Transaksi</th>
                                <th>Tanggal Transaksi</th>
                                <th>Keterangan</th>
                                <th>Tanggal Pembayaran</th>
                                <th class="text-right">Nominal</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @php($number= $data->total() - (($data->currentPage() -1) * $data->perPage()))
                            @foreach($data as $k => $item)
                                <tr>
                                    <td>{{$number}}</td>
                                    <td>
                                        @if($item->status==0)
                                            <span class="badge badge-warning">Unpaid</span>
                                        @endif
                                        @if($item->status==1)
                                            <span class="badge badge-success">Paid</span>
                                        @endif
                                        @if($item->status==2)
                                            <span class="badge badge-danger">Cancel</span>
                                        @endif
                                    </td>
                                    <td>
                                        @if($item->type==1)
                                            Project
                                        @endif
                                        @if ($item->type==2)
                                            Non Project
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{route('debit-note.edit',$item->id)}}">{{$item->nomor_pengajuan}}</a>
                                    </td>
                                    <td>{{date('d-M-Y',strtotime($item->created_at))}}</td>
                                    <td>{{$item->description}}</td>
                                    <td>{{$item->payment_date ? date('d-M-Y',strtotime($item->payment_date)) : '-'}}</td>
                                    <td class="text-right">{{format_idr($item->amount)}}</td>
                                    <td class="text-right">
                                        @if($item->status==0)
                                            <a href="javascript:void(0)" class="badge badge-danger badge-active" wire:click="delete({{$item->id}})"><i class="fa fa-trash"></i> Cancel</a>
                                        @endif
                                        <a href="{{route('debit-note.edit',$item->id)}}"><i class="fa fa-edit"></i></a>
                                    </td>
                                </tr>
                                @php($number--)
                            @endforeach
                        </tbody>
                    </table>
                </div>
                {{$data->links()}}
            </div>
        </div>
    </div>
</div>
@livewire('debit-note.create')
