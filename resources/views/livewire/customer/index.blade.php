@section('title', 'Customer')
@section('sub-title', 'Management Customer')
<div class="clearfix row">
    <div class="col-lg-12">
        <div class="card">
            <div class="header row">
                <div class="col-md-2">
                    <input type="text" class="form-control" wire:model="keyword" placeholder="Searching..." />
                </div>
                <div class="col-md-2">
                    <select class="form-control" wire:model="user_access_id">
                        <option value="">--- Provinsi ---</option>
                        @foreach(\App\Models\Provinsi::all() as $i)
                            <option value="{{$i->id}}">{{$i->nama}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-1">
                    <a href="{{route('customer.insert')}}" class="btn btn-primary"><i class="fa fa-plus"></i> Customer</a>
                </div>
            </div>
            <div class="body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover m-b-0 c_list">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Customer ID</th>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Provinsi</th>
                                <th>Kabupaten / Kota</th>
                                <th>Phone</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $k => $item)
                            <tr>
                                <td style="width: 50px;">{{$k+1}}</td>
                                <td><a href="{{route('customer.edit',$item->id)}}">{{$item->customer_code}}</a></td>
                                <td>{{$item->name}}</td>
                                <td>{{$item->address}}</td>
                                <td>{{isset($item->provinsi->nama) ? $item->provinsi->nama : '-'}}</td>
                                <td>{{isset($item->kabupaten->nama) ? $item->kabupaten->nama : '-'}}</td>
                                <td>{{$item->phone}}</td>
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
