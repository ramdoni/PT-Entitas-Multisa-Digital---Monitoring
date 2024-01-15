@section('title', 'Quotaton')
@section('sub-title', 'Create')
<div class="row clearfix">
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-info"><i class="fa fa-building"></i> </div>
                <div class="content">
                    <div class="text">Total Quotation</div>
                    <h5 class="number">{{format_idr($total_quotation)}}</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-warning"><i class="fa fa-area-chart"></i> </div>
                <div class="content">
                    <div class="text">Ujroh</div>
                    <h5 class="number">0</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-danger"><i class="fa fa-shopping-cart"></i> </div>
                <div class="content">
                    <div class="text">Tabbaru</div>
                    <h5 class="number">0</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon"><i class="fa fa-tag"></i> </div>
                <div class="content">
                    <div class="text">Grand Total</div>
                    <h5 class="number">0</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="card">
            <div class="body">
                <form id="basic-form" method="post" wire:submit.prevent="save">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Project Type</label>
                                <select class="form-control" wire:model="form.project_type">
                                    <option value=""> -- Select -- </option>
                                    <option>Control System</option>
                                    <option>Software</option>
                                </select>
                                @error('form.project_type')
                                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                @enderror
                            </div>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label>Resonsibility</label>
                                    <select class="form-control" wire:model="form.responsibility">
                                        <option value=""> -- Select -- </option>
                                        <option>ENTIGI</option>
                                        <option>WIPO</option>
                                        <option>STLV</option>
                                    </select>
                                    @error('form.responsibility')
                                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                    @enderror
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Project Code <small>*Auto Generate</small></label>
                                    <input type="text" class="form-control" readonly="true" wire:model="form.project_code" />
                                    @error('form.project_code')
                                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                    @enderror
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Project Name</label>
                                <input type="text" class="form-control" wire:model="form.project_name" />
                                @error('form.project_name')
                                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Customer</label>
                                <select class="form-control" wire:model="form.customer_id">
                                    <option value=""> -- Select -- </option>
                                    @foreach(\App\Models\Customer::get() as $k => $item)
                                        <option value="{{$item->id}}">{{$item->name}}</option>
                                    @endforeach
                                </select>
                                @error('form.customer_id')
                                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="form-group col-md-5">
                                    <label>Ujrah (%)</label>
                                    <input type="number" class="form-control" wire:model="form.ujrah" />
                                    @error('form.ujrah')
                                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                    @enderror
                                </div>
                                <div class="form-group col-md-7">
                                    <label>Ujrah (Rp)</label>
                                    <input type="number" class="form-control" wire:model="form.ujrah_amount" />
                                    @error('form.ujrah_amount')
                                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                    @enderror
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <a href="{{route('quotation.index')}}"><i class="fa fa-arrow-left"></i> {{ __('Back') }}</a>
                    <button type="submit" class="btn btn-primary ml-3"><i class="fa fa-save"></i> {{ __('Submit Quotation') }}</button>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="card">
            <div class="body">
                <h6>Part</h6>
                <hr>
                <table class="table ">
                    <thead style="background:#eee;">
                        <tr>
                            <th>No</th>
                            <th>Description</th>
                            <th>Brand</th>
                            <th>Model Code Type</th>
                            <th>Total / QTY</th>
                            <th>Unit</th>
                            <th>Unit Price List(IDR)</th>
                            <th>Sub Total(IDR)</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($arr_parts as $k => $item)
                            <tr wire:key="item{{$k}}">
                                <td>{{$k+1}}</td>
                                <td>{{$item['name']}}</td>
                                <td>{{$item['brand']}}</td>
                                <td>{{$item['modelcode']}}</td>
                                <td>
                                    <input type="number" class="form-control" style="width: 100px;" wire:model="arr_parts.{{$k}}.qty" />
                                </td>
                                <td>{{$item['uom']}}</td>
                                <td>{{format_idr($item['price'])}}</td>
                                <td>{{format_idr($item['total'])}}</td>
                                <td>
                                    <a href="javascript:void(0)" class="text-danger" wire:click="delete_part({{$k}})"><i class="fa fa-close"></i></a>
                                </td>
                            </tr>
                        @endforeach
                        <tr>
                            <td></td>
                            <td wire:ignore>
                                <select class="form-control" id="material_id">
                                    <option value=""> -- Select -- </option>
                                    @foreach($materials as $item)
                                        <option value="{{$item->id}}">{{$item->name}}</option>
                                    @endforeach
                                </select>
                            </td>
                            <td>
                                @if($material_selected)
                                    {{$material_selected->brand?$material_selected->brand->name:'-'}}
                                @endif
                            </td>
                            <td>
                                @if($material_selected)
                                    {{$material_selected->modelcode?$material_selected->modelcode->name:'-'}}
                                @endif
                            </td>
                            <td>
                                <input type="number" class="form-control" style="width: 100px;" wire:model="material_qty" />
                            </td>
                            <td>
                                @if($material_selected)
                                    {{$material_selected->uom?$material_selected->uom->name:'-'}}
                                @endif
                            </td>
                            <td>
                                @if($material_selected)
                                    {{$material_selected->price?format_idr($material_selected->price):'-'}}
                                @endif
                            </td>
                            <td>
                                @if($material_selected and $material_qty>0)
                                    {{$material_selected->price?format_idr($material_selected->price*$material_qty):'-'}}
                                @endif
                            </td>
                            <td>
                                @if($material_selected)
                                    <button type="button" class="btn btn-info" wire:click="assign_part"><i class="fa fa-plus"></i></button>
                                @endif
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="card">
            <div class="body">
                <h6>Engineering</h6>
                <hr>
                <table class="table ">
                    <thead style="background:#eee;">
                        <tr>
                            <th>No</th>
                            <th>Description</th>
                            <th>Brand</th>
                            <th>Model Code Type</th>
                            <th>Total / QTY</th>
                            <th>Unit</th>
                            <th>Unit Price List(IDR)</th>
                            <th>Sub Total(IDR)</th>
                        </tr>
                    </thead>
                </table>
                <a href="javascript:void(0)"><i class="fa fa-plus"></i> Tambah</a>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="card">
            <div class="body">
                <h6>Service</h6>
                <hr>
                <table class="table ">
                    <thead style="background:#eee;">
                        <tr>
                            <th>No</th>
                            <th>Description</th>
                            <th>Brand</th>
                            <th>Model Code Type</th>
                            <th>Total / QTY</th>
                            <th>Unit</th>
                            <th>Unit Price List(IDR)</th>
                            <th>Sub Total(IDR)</th>
                        </tr>
                    </thead>
                </table>
                <a href="javascript:void(0)"><i class="fa fa-plus"></i> Tambah</a>
            </div>
        </div>
    </div>
</div>

@push('after-scripts')
    <link rel="stylesheet" href="{{ asset('assets/vendor/select2/css/select2.min.css') }}"/>
    <script src="{{ asset('assets/vendor/select2/js/select2.min.js') }}"></script>
    <style>
        .select2-container .select2-selection--single {height:36px;padding-left:10px;}
        .select2-container .select2-selection--single .select2-selection__rendered{padding-top:3px;}
        .select2-container--default .select2-selection--single .select2-selection__arrow{top:4px;right:10px;}
        .select2-container {width: 100% !important;}
    </style>
    <script>
        select__2 = $('#material_id').select2();
        $('#material_id').on('change', function (e) {
            var data = $(this).select2("val");
            @this.set('material_selected_id', data);
        });
    </script>
@endpush
