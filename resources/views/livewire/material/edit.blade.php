@section('title', 'Material / Part')
@section('sub-title', 'Create')

<div class="row clearfix">
    <div class="col-md-6">
        <div class="card">
            <div class="body">
                <form id="basic-form" method="post" wire:submit.prevent="save">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>{{ __('Name') }}</label>
                            <input type="text" class="form-control" wire:model="form.name" >
                            @error('form.name')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        
                        <div class="form-group col-md-6">
                            <label>{{ __('Brand') }}</label>
                            <select class="form-control" wire:model="form.brand_id">
                                <option value=""> -- Select -- </option>
                                @foreach(\App\Models\Brand::orderBy('name')->get() as $item)
                                    <option value="{{$item->id}}">{{$item->name}}</option>
                                @endforeach
                            </select>
                            <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_add_brand"><i class="fa fa-plus"></i> Add Brand</a>
                            @error('form.brand_id')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Model Code Type') }}</label>
                            <select class="form-control" wire:model="form.model_code_id">
                                <option value=""> -- Select -- </option>
                                @foreach(\App\Models\Modelcode::orderBy('name')->get() as $item)
                                    <option value="{{$item->id}}">{{$item->name}}</option>
                                @endforeach
                            </select>
                            <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_add_model_code"><i class="fa fa-plus"></i> Add Model Code Type</a>
                            @error('form.model_code_id')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('UOM') }}</label>
                            <select class="form-control" wire:model="form.uom_id">
                                <option value=""> -- Select -- </option>
                                @foreach(\App\Models\Uom::orderBy('name')->get() as $item)
                                    <option value="{{$item->id}}">{{$item->name}}</option>
                                @endforeach
                            </select>
                            <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_add_uom"><i class="fa fa-plus"></i> Add UOM</a>
                            @error('form.uom_id')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Price') }}</label>
                            <input type="text" class="form-control"  wire:model="form.price" >
                            @error('form.price')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                    </div>
                    <hr>
                    <a href="{{route('material.index')}}"><i class="fa fa-arrow-left"></i> {{ __('Back') }}</a>
                    <button type="submit" class="btn btn-primary ml-3"><i class="fa fa-save"></i> {{ __('Save') }}</button>
                </form>
            </div>
        </div>
    </div>
</div>
@livewire('uom.create')
@livewire('modelcode.create')
@livewire('brand.create')
