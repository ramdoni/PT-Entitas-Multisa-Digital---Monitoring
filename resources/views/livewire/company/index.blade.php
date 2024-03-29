@section('title', 'Company')
@section('sub-title', 'Management Company')
<div class="clearfix row">
    <div class="col-lg-12">
        <div class="card">
            <div class="header row">
                <div class="col-md-2">
                    <input type="text" class="form-control" wire:model="keyword" placeholder="Searching..." />
                </div>
                <div class="col-md-1">
                    <a href="{{route('company.create')}}" class="btn btn-primary"><i class="fa fa-plus"></i> Company</a>
                </div>
            </div>
            <div class="body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover m-b-0 c_list">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Code</th>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Phone</th>
                                <th>Website</th>
                                <th>Logo</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($data as $k => $item)
                            <tr>
                                <td style="width: 50px;">{{$k+1}}</td>
                                <td>
                                    <a href="{{route('company.edit',$item->id)}}">{{$item->code}}</a>
                                </td>
                                <td>{{$item->name}}</td>
                                <td>{{$item->address}}</td>
                                <td>{{$item->phone}}</td>
                                <td>{{$item->website}}</td>
                                <td>
                                    @if($item->logo)
                                        <a href="{{asset("storage/{$item->logo}")}}" target="_blank"><i class="fa fa-image"></i></a>
                                    @endif
                                </td>
                                <td></td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
