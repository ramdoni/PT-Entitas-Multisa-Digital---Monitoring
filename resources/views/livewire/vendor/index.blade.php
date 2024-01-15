@section('title', 'Vendor')
@section('sub-title', 'Management Vendor')
<div class="clearfix row">
    <div class="col-lg-12">
        <div class="card">
            <div class="header row">
                <div class="col-md-2">
                    <input type="text" class="form-control" wire:model="keyword" placeholder="Searching..." />
                </div>
                <div class="col-md-1">
                    <a href="{{route('vendor.create')}}" class="btn btn-primary"><i class="fa fa-plus"></i> Vendor</a>
                </div>
            </div>
            <div class="body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover m-b-0 c_list">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Type</th>
                                <th>Vendor ID</th>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Phone</th>
                                <th>Person</th>
                                <th>Position</th>
                                <th>Mobile</th>
                                <th>Email</th>
                                <th>Description</th>
                                <th>Proposed</th>
                                <th>Rekening</th>
                                <th>Bank</th>
                                <th>Account Name</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $k => $item)
                            <tr>
                                <td style="width: 50px;">{{$k+1}}</td>
                                <td>{{$item->type==1?'Material' : 'Services'}}</td>
                                <td>
                                    <a href="{{route('vendor.edit',$item->id)}}">{{$item->vendor_code}}</a>
                                </td>
                                <td>{{$item->name}}</td>
                                <td>{{$item->address}}</td>
                                <td>{{$item->phone}}</td>
                                <td>{{$item->person}}</td>
                                <td>{{$item->position}}</td>
                                <td>{{$item->mobile}}</td>
                                <td>{{$item->email}}</td>
                                <td>{{$item->description}}</td>
                                <td>{{$item->proposed}}</td>
                                <td>{{$item->rekening}}</td>
                                <td>{{$item->bank}}</td>
                                <td>{{$item->account_name}}</td>
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
