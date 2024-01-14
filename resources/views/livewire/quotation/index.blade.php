@section('title', 'Quotation')
@section('sub-title', 'Management Quotation')
<div class="clearfix row">
    <div class="col-lg-12">
        <div class="card">
            <div class="header row">
                <div class="col-md-2">
                    <input type="text" class="form-control" wire:model="keyword" placeholder="Searching..." />
                </div>
                <div class="col-md-1">
                    <a href="{{route('quotation.create')}}" class="btn btn-primary"><i class="fa fa-plus"></i> Quotation</a>
                </div>
            </div>
            <div class="body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover m-b-0 c_list">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Status</th>
                                <th>Project Type</th>
                                <th>Responsibility</th>
                                <th>Project Code</th>
                                <th>Project Name</th>
                                <th>Customer</th>
                                <th>Quotation</th>
                                <th>Quotation Date</th>
                                <th>Submitter</th>
                                <th>Amount(IDR)</th>
                                <th>Discount(%)</th>
                                <th>PPN(%)</th>
                                <th>PPH(%)</th>
                                <th>Nett Amount</th>
                                <th>Remarks</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $k => $item)
                            <tr>
                                <td style="width: 50px;">{{$k+1}}</td>
                                <td></td>
                                <td>{{$item->project_type}}</td>
                                <td>{{$item->responsibility}}</td>
                                <td>{{$item->project_code}}</td>
                                <td>{{$item->project_name}}</td>
                                <td>{{$item->quotation_number}}</td>
                                <td>{{$item->quotation_date?date('d-F-Y',strtotime($item->quotation_date)) : '-'}}</td>
                                <td>{{isset($item->submitter->name) ? $item->submitter->name : '-'}}</td>
                                <td>{{format_idr($item->amount)}}</td>
                                <td>{{$item->discount}}</td>
                                <td>{{$item->ppn}}</td>
                                <td>{{$item->pph}}</td>
                                <td>{{format_idr($item->net_amount)}}</td>
                                <td>{{$item->remarks}}</td>
                                <td>
                                    <a href="javascript:void(0)" wire:click="delete({{$item->id}})"><i class="fa fa-trash text-danger"></i></a>
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
