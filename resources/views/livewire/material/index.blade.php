@section('title', 'Material')
@section('sub-title', 'Management Material')
<div class="clearfix row">
    <div class="col-lg-12">
        <div class="card">
            <div class="header row">
                <div class="col-md-2">
                    <input type="text" class="form-control" wire:model="keyword" placeholder="Searching..." />
                </div>
                <div class="col-md-1">
                    <a href="{{route('material.create')}}" class="btn btn-primary"><i class="fa fa-plus"></i> Material</a>
                </div>
            </div>
            <div class="body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover m-b-0 c_list">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Material / Part</th>
                                <th>Brand</th>
                                <th>Model Code Type</th>
                                <th>UOM</th>
                                <th>Price</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $k => $item)
                            <tr>
                                <td style="width: 50px;">{{$k+1}}</td>
                                <td>{{$item->name}}</td>
                                <td>{{$item->brand ? $item->brand->name : '-'}}</td>
                                <td>{{$item->modelcode ? $item->modelcode->name : '-'}}</td>
                                <td>{{$item->uom ? $item->uom->name : '-'}}</td>
                                <td>{{format_idr($item->price)}}</td>
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
