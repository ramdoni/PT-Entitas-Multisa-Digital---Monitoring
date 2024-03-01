@section('title', 'Credit Note')
@section('sub-title', 'Index')
<div class="clearfix row">
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
                                <th>Keterangan</th>
                                <th>Tanggal Transaksi</th>
                                <th>Tanggal Pembayaran</th>
                                <th class="text-right">Nominal</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $k => $item)
                                <tr>
                                    <td>{{$k+1}}</td>
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
                                    <td><a href="{{route('credit-note.edit',$item->id)}}">{{$item->nomor_pengajuan}}</a></td>
                                    <td>{{$item->description}}</td>
                                    <td>{{date('d-M-Y',strtotime($item->created_at))}}</td>
                                    <td>{{$item->payment_date ? date('d-M-Y',strtotime($item->payment_date)) : '-'}}</td>
                                    <td class="text-right">{{format_idr($item->nominal)}}</td>
                                    <td class="text-right">
                                        <a href="{{route('credit-note.edit',$item->id)}}"><i class="fa fa-edit"></i></a>
                                        @if($item->status==0)
                                            <a href="javascript:void(0)" class="badge badge-danger badge-active" wire:click="delete({{$item->id}})"><i class="fa fa-trash"></i> Delete</a>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                {{$data->links()}}
            </div>
        </div>
    </div>
</div>
@livewire('credit-note.create')
