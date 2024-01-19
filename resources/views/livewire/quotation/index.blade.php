@section('title', 'Quotation')
@section('sub-title', 'Management Quotation')
<div class="clearfix row">
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-info"><i class="fa fa-building"></i> </div>
                <div class="content">
                    <div class="text">Total Quotation ({{format_idr($total)}})</div>
                    <h5 class="number">{{format_idr($total_amount)}}</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-warning"><i class="fa fa-area-chart"></i> </div>
                <div class="content">
                    <div class="text">Proposed</div>
                    <h5 class="number">{{format_idr($proposed)}}</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-danger"><i class="fa fa-shopping-cart"></i> </div>
                <div class="content">
                    <div class="text">Success</div>
                    <h5 class="number">{{format_idr($success)}}</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-warning"><i class="fa fa-area-chart"></i> </div>
                <div class="content">
                    <div class="text">Reject</div>
                    <h5 class="number">{{format_idr($reject)}}</h5>
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
                    <a href="{{route('quotation.create')}}" class="btn btn-primary"><i class="fa fa-plus"></i> Quotation</a>
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
                                <th>Project Type</th>
                                <th>Responsibility</th>
                                <th>Project Code</th>
                                <th>Project Name</th>
                                <th>Customer</th>
                                <th>Quotation Number</th>
                                <th>Quotation Date</th>
                                <th>Submitter</th>
                                <th  class="text-right">Amount(IDR)</th>
                                <!-- <th>Discount(%)</th> -->
                                <!-- <th class="text-right">PPN(%)</th>
                                <th class="text-right">PPH(%)</th> -->
                                <th class="text-right">Nett Amount</th>
                                <th>Remarks</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $k => $item)
                            <tr>
                                <td style="width: 50px;">{{$k+1}}</td>
                                <td class="text-center">
                                    @if($item->status==0)
                                        <span class="badge badge-warning">PROPOSED</span>
                                    @endif
                                    @if($item->status==1)
                                        <span class="badge badge-success">SUCCESS</span>
                                    @endif
                                    @if($item->status==2)
                                        <span class="badge badge-danger">REJECT</span>
                                    @endif
                                </td>
                                <td>{{$item->project_type}}</td>
                                <td>{{$item->responsibility}}</td>
                                <td>{{$item->project_code}}</td>
                                <td>{{$item->project_name}}</td>
                                <td>{{$item->customer?$item->customer->name : '-'}}</td>
                                <td><a href="{{route('quotation.edit',$item->id)}}">{{$item->quotation_number}}</a></td>
                                <td>{{$item->quotation_date?date('d-M-Y',strtotime($item->quotation_date)) : '-'}}</td>
                                <td>{{isset($item->submitter->name) ? $item->submitter->name : '-'}}</td>
                                <td class="text-right">{{format_idr($item->total_quotation)}}</td>
                                <!-- <td>{{$item->discount}}</td> -->
                                <!-- <td class="text-right">{{$item->ppn}}</td>
                                <td class="text-right">{{$item->pph}}</td> -->
                                <td class="text-right">{{format_idr($item->grand_total)}}</td>
                                <td>{{$item->remarks}}</td>
                                <td>
                                    <!-- <a href="javascript:void(0)" wire:click="delete({{$item->id}})"><i class="fa fa-trash text-danger"></i></a> -->
                                    <a href="{{route('purchase-order.create',$item->id)}}" class="badge badge-info badge-active"><i  class="fa fa-plus"></i> Create PO</a>
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
