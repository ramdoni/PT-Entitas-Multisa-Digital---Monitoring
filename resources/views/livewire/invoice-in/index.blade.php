@section('title', 'Invoice')
@section('sub-title', 'Management Invoice')
<div class="clearfix row">
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-info"><i class="fa fa-building"></i> </div>
                <div class="content">
                    <div class="text">Total Invoice ({{format_idr($total)}})</div>
                    <h5 class="number">{{format_idr($total_amount)}}</h5>
                </div>
            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <div class="card">
            <div class="header row">
                <div class="col-md-2">
                    <input type="text" class="form-control" wire:model="filter.keyword" placeholder="Searching..." />
                </div>
                <div class="col-md-2">
                    <select class="form-control" wire:model="filter.status">
                        <option value="">-- Status -- </option>
                        <option value="0">PROPOSED</option>
                        <option value="1">SUCCESS</option>
                        <option value="2">REJECT</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <span wire:loading wire:target="filter.status,filter.keyword">
                        <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i>
                        <span class="sr-only">{{ __('Loading...') }}</span>
                    </span>
                </div>
            </div>
            <div class="body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover m-b-0 c_list">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th class="text-center">Status</th>
                                <th>Purchase Order No</th>
                                <th>Invoice No</th>
                                <th>Invoice Date</th>
                                <th>Top</th>
                                <th>Invoice Sent</th>
                                <th>Invoice Received</th>
                                <th>Invoice Aging</th>
                                <th>Due Date</th>
                                <th>Payment Date</th>
                                <th class="text-right">Amount</th>
                                <th class="text-right">Inclusive Taxes</th>
                                <th class="text-right">Nett Total</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $k => $item)
                            <tr>
                                <td style="width: 50px;">{{$k+1}}</td>
                                <td class="text-center">
                                    @if($item->status==0)
                                        <span class="badge badge-warning">UNPAID</span>
                                    @endif
                                    @if($item->status==1)
                                        <span class="badge badge-success">PAID</span>
                                    @endif
                                </td>
                                <td>
                                    @if($item->purchase_order)
                                        <a href="{{route('purchase-order.edit',$item->purchase_order_id)}}">{{$item->purchase_order?$item->purchase_order->po_number:''}}</a>
                                    @endif
                                </td>
                                <td>{{$item->invoice_number}}</td>
                                <td>{{date('d-M-Y',strtotime($item->invoice_date))}}</td>
                                <td>@livewire('invoice.editable',['data'=>$item,'field'=>'top_day'],key('top_day_'.$item->id))</td>
                                <td>@livewire('invoice.editable',['data'=>$item,'field'=>'invoice_sent'],key('invoice_sent_'.$item->id))</td>
                                <td>@livewire('invoice.editable',['data'=>$item,'field'=>'invoice_receive'],key('invoice_receive_'.$item->id))</td>
                                <td>
                                    @if($item->invoice_receive and $item->payment_date=="")
                                        {{calculate_aging($item->invoice_receive,date('Y-m-d'))}}
                                    @elseif($item->payment_date)
                                        {{calculate_aging($item->invoice_receive,$item->payment_date)}}
                                    @endif
                                </td>
                                <td>{{$item->due_date ? date('d-M-Y',strtotime($item->due_date)) : '-'}}</td>
                                <td>{{$item->payment_date ? date('d-M-Y',strtotime($item->payment_date)) : ''}}</td>
                                <td class="text-right">{{format_idr($item->amount)}}</td>
                                <td class="text-right">{{format_idr($item->tax)}}</td>
                                <td class="text-right">{{format_idr($item->nett_amount)}}</td>
                                <td>
                                    <a href="javascript:void(0)" wire:click="delete({{$item->id}})" wire:loading.remove wire:target="delete({{$item->id}})" class="text-danger"><i  class="fa fa-trash"></i></a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
                <br />
                {{$data->links()}}
            </div>
        </div>
    </div>
</div>