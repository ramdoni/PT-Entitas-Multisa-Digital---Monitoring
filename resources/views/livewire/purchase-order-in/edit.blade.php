@section('title', __('Purchase Order'))
@section('sub-title', $data->po_number)
<div class="row clearfix">
    <div class="col-md-12">
        <div class="card">
            <div class="body">
                <form id="basic-form" method="post" wire:submit.prevent="save">
                    <div class="row">
                        <div class="form-group col-md-4" wire:ignore>
                            <label>{{ __('Purchase Order Number') }}</label><br />
                            {{$data->po_number}}
                            @if($data->status==0)
                                <span class="badge badge-warning">ACTIVE</span>
                            @endif
                            @if($data->status==1)
                                <span class="badge badge-success">INVOICE</span>
                            @endif
                            @if($data->status==2)
                                <span class="badge badge-danger">CLOSED</span>
                            @endif
                            <hr />
                        </div>
                        <div class="form-group col-md-4">
                            <label for="">Tanggal Pengajuan</label><br>
                            {{date('d-M-Y',strtotime($data->created_at))}}
                            <hr>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover m-b-0 c_list">
                            <thead style="background:#eeeeeeb0">
                                <tr>
                                    <th></th>
                                    <th>Description</th>
                                    <th>Brand</th>
                                    <th>Model Code Type</th>
                                    <th>Unit</th>
                                    <th class="text-right">Total / QTY</th>
                                    <th class="text-right">Unit Price List(IDR)</th>
                                    <th class="text-right">Sub Total(IDR)</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($data->materials as $k=>$item)
                                    <tr>
                                        <td>{{$k+1}}</td>
                                        <td>{{$item->material_row?$item->material_row['name']:'-'}}</td>
                                        <td>{{$item->brand}}</td>
                                        <td>{{$item->model}}</td>
                                        <td>{{$item->uom}}</td>
                                        <td class="text-right">{{$item->qty}}</td>
                                        <td class="text-right">{{format_idr($item->price)}}</td>
                                        <td class="text-right">{{format_idr($item->total)}}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                            <tfoot style="background:#eeeeeeb0">
                                <tr>
                                    <th colspan="7" class="text-right">Sub Total</th>
                                    <td class="text-right">{{format_idr($data->amount)}}</td>
                                </tr>
                                <tr>
                                    <th colspan="7" class="text-right">Tax</th>
                                    <td class="text-right">{{format_idr($data->inclusive_taxes_amount)}}</td>
                                </tr>
                                <tr>
                                    <th colspan="7" class="text-right">Grand Total</th>
                                    <td class="text-right">{{format_idr($data->grand_total)}}</td>
                                </tr>
                            </tfoot>
                        </table>
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
