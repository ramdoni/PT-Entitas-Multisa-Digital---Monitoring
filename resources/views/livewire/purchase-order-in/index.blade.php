@section('title', 'Purchase Order IN')
@section('sub-title', 'Management Purchase Order')
<div class="clearfix row">
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-info"><i class="fa fa-building"></i> </div>
                <div class="content">
                    <div class="text">Total Purchase Order ({{format_idr($total)}})</div>
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
                                <th>Quotation No</th>
                                <th>Purchase Order No</th>
                                <th>Date</th>
                                <th class="text-right">Amount</th>
                                <th class="text-right">Inclusive Taxes</th>
                                <th class="text-right">Grand Total</th>
                                <th>Bast Number</th>
                                <th>Bast Date</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $k => $item)
                            <tr>
                                <td style="width: 50px;">{{$k+1}}</td>
                                <td class="text-center">
                                    @if($item->status==0)
                                        <span class="badge badge-warning">SUBMITTED</span>
                                    @endif
                                    @if($item->status==1)
                                        <span class="badge badge-success">SUCCESS</span>
                                    @endif
                                    @if($item->status==2)
                                        <span class="badge badge-danger">REJECT</span>
                                    @endif
                                </td>
                                <td>
                                    @if($item->quotation)
                                        <a href="{{route('quotation.edit',$item->quotation_id)}}">{{$item->quotation?$item->quotation->quotation_number:''}}</a>
                                    @endif
                                </td>
                                <td>{{$item->po_number}}</td>
                                <td>{{date('d-M-Y',strtotime($item->po_date))}}</td>
                                <td class="text-right">{{format_idr($item->amount)}}</td>
                                <td class="text-right">{{format_idr($item->inclusive_taxes_amount)}}</td>
                                <td class="text-right">{{format_idr($item->grand_total)}}</td>
                                <td></td>
                                <td></td>
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
