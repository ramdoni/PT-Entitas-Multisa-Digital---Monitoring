@section('title', 'Customer')
@section('sub-title', 'Insert')

<div class="row clearfix">
    <div class="col-md-6">
        <div class="card">
            <div class="body">
                <form id="basic-form" method="post" wire:submit.prevent="save">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>{{ __('Customer ID') }}</label>
                            <input type="text" class="form-control" wire:model="customer_id" >
                            @error('customer_id')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Name') }}</label>
                            <input type="text" class="form-control" wire:model="name" >
                            @error('name')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Phone') }}</label>
                            <input type="text" class="form-control"  wire:model="phone" >
                            @error('phone')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Address') }}</label>
                            <input type="text" class="form-control"  wire:model="address" >
                            @error('address')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Provinsi') }}</label>
                            <select class="form-control" wire:model="provinsi_id">
                                <option value=""> -- Select -- </option>
                                @foreach(\App\Models\Provinsi::orderBy('nama')->get() as $item)
                                    <option value="{{$item->id}}">{{$item->nama}}</option>
                                @endforeach
                            </select>
                            @error('provinsi_id')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Kabupaten') }}</label>
                            <select class="form-control" wire:model="kabupaten_id">
                                <option value=""> -- Select -- </option>
                                @foreach($kabupaten as $item)
                                    <option value="{{$item->id}}">{{$item->name}}</option>
                                @endforeach
                            </select>
                            @error('provinsi_id')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                    </div>
                    <hr>
                    <a href="{{route('users.index')}}"><i class="fa fa-arrow-left"></i> {{ __('Back') }}</a>
                    <button type="submit" class="btn btn-primary ml-3"><i class="fa fa-save"></i> {{ __('Save') }}</button>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card">
            <div class="body">
                <h6>PIC</h6>
                <hr />
                <table class="table">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Name</th>
                            <th>Position</th>
                            <th>Mobile</th>
                            <th>Email</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($pic as $k => $item)
                            <tr>
                                <td>{{$k+1}}</td>
                                <td>{{$item['name']}}</td>
                                <td>{{$item['position']}}</td>
                                <td>{{$item['mobile']}}</td>
                                <td>{{$item['email']}}</td>
                                <td>
                                    <a href="javascript:void(0)" class="text-danger" wire:click="deletePic({{$k}})"><i class="fa fa-close"></i></a>
                                </td>
                            </tr>
                        @endforeach
                        @if($insert_pic)
                            <tr>
                                <td></td>
                                <td>
                                    <input type="text" class="form-control" wire:model="arr_form.name" />
                                </td>
                                <td>
                                    <input type="text" class="form-control" wire:model="arr_form.position" />
                                </td>
                                <td>
                                    <input type="text" class="form-control" wire:model="arr_form.mobile" />
                                </td>
                                <td>
                                    <input type="email" class="form-control" wire:model="arr_form.email" />
                                </td>
                                <td>
                                    <a href="javascript:void(0)" wire:click="addPic"><i class="fa fa-save"></i></a>
                                </td>
                            </tr>
                        @endif
                    </tbody>
                </table>
                <a href="javascript:void(0)" wire:click="$set('insert_pic',true)"><i class="fa fa-plus"></i> Tambah</a>
            </div>
        </div>
    </div>
</div>
