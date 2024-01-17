@section('title', 'Quotaton')
@section('sub-title', 'Create')
<div class="row clearfix">
    <div class="col-lg-2 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-info"><i class="fa fa-calculator"></i></div>
                <div class="content">
                    <div class="text">Total Quotation</div>
                    <h6 class="number">{{format_idr($form['total_quotation'])}}</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-2 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-warning"><i class="fa fa-calculator"></i> </div>
                <div class="content">
                    <div class="text">Factor ({{$form['factor']}}%)</div>
                    <h6 class="number">{{format_idr($form['factor_amount'])}}</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-2 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-danger"><i class="fa fa-calculator"></i> </div>
                <div class="content">
                    <div class="text">Tabbaru</div>
                    <h6 class="number">{{format_idr($form['tabbaru'])}}</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-2 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-warning"><i class="fa fa-calculator"></i> </div>
                <div class="content">
                    <div class="text">Ujroh ({{$form['ujrah']}}%)</div>
                    <h6 class="number">{{format_idr($form['ujrah_amount'])}}</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-2 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-warning"><i class="fa fa-calculator"></i> </div>
                <div class="content">
                    <div class="text">Tax </div>
                    <h6 class="number">0</h6>
                </div>
            </div>
        </div>
    </div>
    
    <div class="col-lg-2 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon"><i class="fa fa-tag"></i> </div>
                <div class="content">
                    <div class="text">Grand Total</div>
                    <h6 class="number">{{format_idr($form['grand_total'])}}</h6>
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
                            <div class="row">
                                <div class="form-group col-md-7">
                                    <label>Quotation Number</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" title="Generate Quotation Number" style="cursor:pointer;" wire:click="generate_quotation"><i class="fa fa-refresh"></i></span>
                                        </div>
                                        <input type="text" class="form-control" wire:model="form.quotation_number">
                                    </div>
                                    @error('form.quotation_number')
                                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                    @enderror
                                </div>
                                <div class="form-group col-md-5">
                                    <label>Date</label>
                                    <input type="date" class="form-control" wire:model="form.quotation_date" />
                                    @error('form.quotation_date')
                                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                    @enderror
                                </div>
                            </div>
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
                                <div class="form-group col-md-6">
                                    <label>Factor (%)</label>
                                    <input type="number" class="form-control" wire:model="form.factor" />
                                    @error('form.ujrah')
                                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                    @enderror
                                </div>
                                <!-- <div class="form-group col-md-7">
                                    <label>Factor (Rp)</label>
                                    <input type="number" class="form-control" wire:model="form.factor_amount" />
                                    @error('form.ujrah_amount')
                                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                    @enderror
                                </div> -->
                                <div class="form-group col-md-6">
                                    <label>Ujrah (%)</label>
                                    <input type="number" class="form-control" wire:model="form.ujrah" />
                                    @error('form.ujrah')
                                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                    @enderror
                                </div> 
                                <div class="form-group col-md-4">
                                    <label>
                                        <input type="checkbox" /> 
                                        Tax 
                                    </label>
                                </div>
                                <div class="form-group col-md-12">
                                    <label>Remark</label>
                                    <input type="text" class="form-control" wire:model="form.remarks" />
                                    @error('form.remarks')
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
                            <th></th>
                            <th>Brand</th>
                            <th>Model Code Type</th>
                            <th class="text-right">Total / QTY</th>
                            <th>Unit</th>
                            <th class="text-right">Unit Price List(IDR)</th>
                            <th class="text-right">Sub Total(IDR)</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php($total_part_qty=0)
                        @php($total_part_sub_total=0)
                        @php($total_part_total=0)
                        @foreach($arr_parts as $k => $item)
                            <tr wire:key="item{{$k}}">
                                <td>{{$k+1}}</td>
                                <td>{{$item['name']}}</td>
                                <td></td>
                                <td>{{$item['brand']}}</td>
                                <td>{{$item['modelcode']}}</td>
                                <td class="text-right">
                                    <input type="number" class="form-control float-right text-right" style="width: 100px;" wire:model="arr_parts.{{$k}}.qty" />
                                </td>
                                <td>{{$item['uom']}}</td>
                                <td class="text-right">{{format_idr($item['price'])}}</td>
                                <td class="text-right">{{format_idr($item['total'])}}</td>
                                <td>
                                    <a href="javascript:void(0)" class="text-danger" wire:click="delete_part({{$k}})"><i class="fa fa-close"></i></a>
                                </td>
                            </tr>
                            @php($total_part_qty += $item['qty'])
                            @php($total_part_sub_total += $item['price'])
                            @php($total_part_total += $item['total'])
                        @endforeach
                        <tr wire:key="item_row_part">
                            <td></td>
                            <td>
                                <div wire:ignore>
                                    <select class="form-control" id="material_id">
                                        <option value=""> -- Select -- </option>
                                        @foreach($materials as $item)
                                            <option value="{{$item->id}}">{{$item->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </td>
                            <td>
                                <a href="{{route('material.create')}}" title="Create New Material" target="_blank"><i class="fa fa-plus"></i></a>
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
                                <input type="number" class="form-control float-right text-right" style="width: 100px;" wire:model="material_qty" />
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
                    <tfoot style="background:#eee;">
                        <tr wire:key="tr_total_part">
                            <th colspan="5" class="text-right">Total</th>
                            <th class="text-right">{{format_idr($total_part_qty)}}</th>
                            <th></th>
                            <th class="text-right">{{format_idr($total_part_sub_total)}}</th>
                            <th class="text-right">{{format_idr($total_part_total)}}</th>
                            <th></th>
                        </tr>
                    </tfoot>
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
                            <th>Subcontractor</th>
                            <th></th>
                            <th>Type</th>
                            <th class="text-right">Total / QTY</th>
                            <th>Unit</th>
                            <th class="text-right">Unit Price List(IDR)</th>
                            <th class="text-right">Sub Total(IDR)</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php($total_vendor_qty=0)
                        @php($total_vendor_sub_total=0)
                        @php($total_vendor_total=0)
                        @foreach($arr_vendor as $k => $item)
                            <tr wire:key="item{{$k}}">
                                <td>{{$k+1}}</td>
                                <td>{{$item['name']}}</td>
                                <td></td>
                                <td>{{$item['description']}}</td>
                                <td class="text-right">
                                    <input type="number" class="form-control float-right text-right" style="width: 100px;" wire:model="arr_vendor.{{$k}}.qty" />
                                </td>
                                <td>{{$item['unit']}}</td>
                                <td class="text-right">{{format_idr($item['price'])}}</td>
                                <td class="text-right">{{format_idr($item['total'])}}</td>
                                <td>
                                    <a href="javascript:void(0)" class="text-danger" wire:click="delete_vendor({{$k}})"><i class="fa fa-close"></i></a>
                                </td>
                            </tr>
                            @php($total_vendor_qty += $item['qty'])
                            @php($total_vendor_sub_total += $item['price'])
                            @php($total_vendor_total += $item['total'])
                        @endforeach
                        <tr wire:key="item_row_engineering">
                            <td></td>
                            <td>
                                <div wire:ignore>
                                    <select class="form-control" id="vendor_id">
                                        <option value=""> -- Select -- </option>
                                        @foreach($vendors as $item)
                                            <option value="{{$item->id}}">{{$item->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </td>
                            <td>
                                <a href="{{route('vendor.create')}}" title="Create New Vendor" target="_blank"><i class="fa fa-plus"></i></a>
                            </td>
                            <td>
                                <input type="text" class="form-control" wire:model="engineer_description" />
                            </td>
                            <td>
                                <input type="number" class="form-control float-right text-right" style="width: 100px;" wire:model="engineer_qty" />
                            </td>
                            <td>
                                <input type="text" class="form-control" wire:model="engineer_unit" />
                            </td>
                            <td>
                                <input type="number" class="form-control float-right text-right" wire:model="engineer_price" />
                            </td>
                            <td class="text-right">
                                @if($engineer_qty>0 and $engineer_price>0) 
                                    {{format_idr($engineer_qty * $engineer_price)}}
                                @else
                                    0
                                @endif
                            </td>
                            <td>
                                @if($vendor_selected)
                                    <button type="button" class="btn btn-info" wire:click="assign_engineer"><i class="fa fa-plus"></i></button>
                                @endif
                            </td>
                        </tr>
                    </tbody>
                    <tfoot style="background:#eee;">
                        <tr wire:key="tr_total_vendor">
                            <th colspan="4" class="text-right">Total</th>
                            <th class="text-right">{{format_idr($total_vendor_qty)}}</th>
                            <th></th>
                            <th class="text-right">{{format_idr($total_vendor_sub_total)}}</th>
                            <th class="text-right">{{format_idr($total_vendor_total)}}</th>
                            <th></th>
                        </tr>
                    </tfoot>
                </table>
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
                            <th></th>
                            <th>Brand</th>
                            <th>Model Code Type</th>
                            <th>Total / QTY</th>
                            <th>Unit</th>
                            <th>Unit Price List(IDR)</th>
                            <th>Sub Total(IDR)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr wire:key="item_row_service">
                            <td></td>
                            <td>
                                <select class="form-control" id="vendor_id">
                                    <option value=""> -- Select -- </option>
                                    @foreach(\App\Models\Services::orderBy('name','ASC')->get() as $item)
                                        <option value="{{$item->id}}">{{$item->name}}</option>
                                    @endforeach
                                </select>
                            </td>
                            <td>
                                <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_add_service"><i class="fa fa-plus"></i></a>
                            </td>
                            <td>
                                <input type="text" class="form-control" wire:model="engineer_description" />
                            </td>
                            <td>
                                <input type="number" class="form-control float-right text-right" style="width: 100px;" wire:model="engineer_qty" />
                            </td>
                            <td>
                                <input type="text" class="form-control" wire:model="engineer_unit" />
                            </td>
                            <td>
                                <input type="number" class="form-control float-right text-right" wire:model="engineer_price" />
                            </td>
                            <td class="text-right">
                                @if($engineer_qty>0 and $engineer_price>0) 
                                    {{format_idr($engineer_qty * $engineer_price)}}
                                @else
                                    0
                                @endif
                            </td>
                            <td>
                                @if($vendor_selected)
                                    <button type="button" class="btn btn-info" wire:click="assign_engineer"><i class="fa fa-plus"></i></button>
                                @endif
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@livewire('quotation.services')
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

        select__vendor = $('#vendor_id').select2();
        $('#vendor_id').on('change', function (e) {
            var data = $(this).select2("val");
            @this.set('vendor_selected_id', data);
        });
    </script>
@endpush
