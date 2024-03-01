@section('title', __('Credit Note'))
@section('sub-title', $data->nomor_pengajuan)
<div class="row clearfix">
    <div class="col-md-12">
        <div class="card">
            <div class="body">
                <form id="basic-form" method="post" wire:submit.prevent="save">
                    <div class="row">
                        <div class="form-group col-md-4" wire:ignore>
                            <label>{{ __('Nomor Pengajuan') }}</label><br />
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
                        <div class="form-group col-md-4">
                            <label for="">Tanggal Pengajuan</label><br>
                            {{date('d-M-Y',strtotime($data->created_at))}}
                            <hr>
                        </div>
                        <div class="form-group col-md-4">
                            <label>{{ __('Type') }}</label><br />
                            @if($data->type==1)
                                Project :
                                @if($data->purchase_order)
                                    @if($data->purchase_order->purchase_order_raw)
                                        <a href="{{route('purchase-order.edit',$data->purchase_order->purchase_order_raw['id'])}}" target="_blank">{{$data->purchase_order->purchase_order_raw['po_number']}}</a>
                                    @endif
                                @endif
                            @endif
                            @if($data->type==2)
                                Non Project
                            @endif
                            <hr />
                        </div>
                        <div class="form-group col-md-4">
                            <label>{{ __('Nominal') }}</label><br />
                            Rp. {{format_idr($data->nominal)}}
                            <hr />
                        </div>
                        <div class="form-group col-md-4">
                            <label>Keterangan</label><br />
                            {{$data->description}}
                            <hr />
                        </div>
                    </div>
                    <a href="{{route('credit-note.index')}}"><i class="fa fa-arrow-left"></i> {{ __('Kembali') }}</a>
                    <span wire:loading wire:target="submit,hitung">
                        <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i>
                        <span class="sr-only">{{ __('Loading...') }}</span>
                    </span>
                </form>
            </div>
        </div>
    </div>
</div>
