@section('title', 'Quotaton')
@section('sub-title', 'Create')
<div class="row clearfix">
    <div class="col-lg-2 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-info"><i class="fa fa-calculator"></i></div>
                <div class="content">
                    <div class="text">Total BOM</div>
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
                    <div class="text">Komisi ({{$form['komisi']}}%)</div>
                    <h6 class="number">{{format_idr($form['komisi_amount'])}}</h6>
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
                    <div class="text">Tax Inclusive (11%)</div>
                    <h6 class="number">{{format_idr($form['tax_amount'])}}</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-2 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon"><i class="fa fa-tag"></i> </div>
                <div class="content">
                    <div class="text">Total Quotation</div>
                    <h6 class="number">{{format_idr($form['grand_total'])}}</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="card mb-3">
            <div class="body">
                <form id="basic-form" method="post" wire:submit.prevent="save">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="row">
                                <div class="form-group col-md-6">
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
                                <div class="form-group col-md-6">
                                    <label>Date <small>*Today</small></label>
                                    <input type="date" class="form-control" wire:model="form.quotation_date" />
                                    @error('form.quotation_date')
                                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                    @enderror
                                </div>
                                <div class="form-group col-md-6">
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
                                <div class="form-group col-md-6">
                                    <label>Valid Until <small>*Auto 30 days</small></label>
                                    <input type="date" class="form-control" wire:model="form.valid_until" />
                                    @error('form.valid_until')
                                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                    @enderror
                                </div>
                                <div class="form-group col-md-6">
                                    <label>Resonsibility</label>
                                    <select class="form-control" wire:model="form.company_id">
                                        <option value=""> -- Select -- </option>
                                        @foreach($companies as $item)
                                            <option value="{{$item->id}}">{{$item->code}}</option>
                                        @endforeach
                                    </select>
                                    @error('form.company_id')
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
                            <div class="form-group">
                                <label>PIC Customer</label>
                                <select class="form-control" wire:model="form.customer_pic_id">
                                    <option value=""> -- Select -- </option>
                                    @foreach($customer_pics as $item)
                                        <option value="{{$item->id}}">{{$item->name}} / {{$item->position}}</option>
                                    @endforeach
                                </select>
                                @error('form.customer_pic_id')
                                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                @enderror
                            </div>

                        </div>
                        <div class="col-md-4">
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label>Komisi (%)</label>
                                    <input type="number" class="form-control" wire:model="form.komisi" />
                                    @error('form.komisi')
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
                                        <input type="checkbox" wire:model="form.use_tax" />
                                        Tax Inclusives
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
                        <div class="col-md-12"><hr /></div>
                        <div class="form-group col-md-6">
                            <label>System Requirements</label>
                            <ol style="padding-left:15px;">
                                @foreach($system_requirement as $k=>$item)
                                    <li>{!!$item!!} <a href="javascript:void(0)" wire:click="delete_system_requirement({{$k}})" class="text-danger"><i class="fa fa-trash"></i></a></li>
                                @endforeach
                                <li>
                                    <span wire:loading wire:target="add_system_requirement">
                                        <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i>
                                        <span class="sr-only">{{ __('Loading...') }}</span>
                                    </span>
                                    <div class="input-group mb-3" wire:loading.remove wire:target="add_system_requirement">
                                        <textarea class="form-control" wire:model="text_system_requirement" placeholder="Typing here..."></textarea>
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><a href="javascript:void(0)" wire:click="add_system_requirement"><i class="fa fa-plus"></i></a></span>
                                        </div>
                                    </div>
                                </li>
                            </ol>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Terms & Conditions</label>
                            <ol style="padding-left:15px;">
                                @foreach($term_and_conditions as $k=>$item)
                                    <li>{!!$item!!} <a href="javascript:void(0)" wire:click="delete_term_and_conditions({{$k}})" class="text-danger"><i class="fa fa-trash"></i></a></li>
                                @endforeach
                                <li>
                                    <span wire:loading wire:target="add_term_and_conditions">
                                        <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i>
                                        <span class="sr-only">{{ __('Loading...') }}</span>
                                    </span>
                                    <div class="input-group mb-3" wire:loading.remove wire:target="add_term_and_conditions">
                                        <textarea class="form-control" wire:model="text_term_and_conditions" placeholder="Typing here..."></textarea>
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><a href="javascript:void(0)" wire:click="add_term_and_conditions"><i class="fa fa-plus"></i></a></span>
                                        </div>
                                    </div>
                                </li>
                            </ol>
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
        <div class="card mb-3">
            <div class="body">
                <h6>Material / Part</h6>
                @error('arr_parts')
                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                @enderror
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
                            <th class="text-right">Unit Price List (IDR)</th>
                            <th class="text-right">Factor %</th>
                            <th class="text-right">Factor (IDR)</th>
                            <th class="text-right">Sub Total (IDR)</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @php($total_part_qty=0)
                        @php($total_part_sub_total=0)
                        @php($total_part_factor=0)
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
                                <td>
                                    <input type="number" class="form-control float-right text-right" style="width: 100px;" wire:model="arr_parts.{{$k}}.factor" />
                                </td>
                                <td class="text-right">{{format_idr($item['factor_amount'])}}</td>
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
                                @if($material_selected)
                                    <input type="number" class="form-control float-right text-right" style="width: 100px;" wire:model="material_qty" />
                                @endif
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
                                <input type="number" class="form-control float-right text-right" style="width: 100px;" wire:model="material_factor" />
                            </td>
                            <td>
                                @if($material_selected and $material_factor>0 and $material_qty>0)
                                    @php($temp_total = $material_selected->price?$material_selected->price*$material_qty:0)
                                    @php($material_factor_amount = $this->material_factor / 100 * $temp_total)
                                    {{format_idr($material_factor_amount)}}
                                @endif
                            </td>
                            <td>
                                @if($material_selected and $material_qty>0)
                                    {{$material_selected->price?format_idr(($material_selected->price+$material_factor_amount)*$material_qty):'-'}}
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
                            <th></th>
                            <th class="text-right">{{format_idr($total_part_factor)}}</th>
                            <th class="text-right">{{format_idr($total_part_total)}}</th>
                            <th></th>
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
    
    <!-- <div class="col-md-12">
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
     -->
    <div class="col-md-12">
        <div class="card">
            <div class="body">
                <h6>Service</h6>
                <hr>
                <table class="table ">
                    <thead style="background:#eee;">
                        <tr>
                            <th>No</th>
                            <th>Service</th>
                            <th></th>
                            <th>Description</th>
                            <th class="text-right">Total / QTY</th>
                            <th>Unit</th>
                            <th class="text-right">Unit Price List (IDR)</th>
                            <th class="text-right">Factor %</th>
                            <th class="text-right">Factor (IDR)</th>
                            <th class="text-right">Sub Total (IDR)</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($arr_services as $k=>$item)
                            <tr>
                                <td>{{$k+1}}</td>
                                <td>{{$item['name']}}</td>
                                <td></td>
                                <td>
                                    <input type="text" class="form-control float-right" wire:model="arr_services.{{$k}}.description" />
                                </td>
                                <td class="text-right">
                                    <input type="number" class="form-control float-right text-right" wire:model="arr_services.{{$k}}.qty" />
                                </td>
                                <td>
                                    <input type="text" class="form-control float-right" wire:model="arr_services.{{$k}}.unit" />
                                </td>
                                <td class="text-right">
                                    <input type="number" class="form-control float-right text-right" wire:model="arr_services.{{$k}}.price" />
                                </td>
                                <td>
                                    <input type="number" class="form-control float-right text-right" wire:model="arr_services.{{$k}}.factor" />
                                </td>
                                <td class="text-right">{{format_idr($item['factor_amount'])}}</td>
                                <td class="text-right">{{format_idr($item['total'])}}</td>
                                <td>
                                    <a href="javascript:void(0)" class="text-danger" wire:click="delete_service({{$k}})"><i class="fa fa-close"></i></a>
                                </td>
                            </tr>
                        @endforeach
                        <tr wire:key="item_row_service">
                            <td></td>
                            <td>
                                <div wire:ignore>
                                    <select class="form-control" id="service_id">
                                        <option value=""> -- Select -- </option>
                                        @foreach(\App\Models\Services::orderBy('name','ASC')->get() as $item)
                                            <option value="{{$item->id}}">{{$item->name}}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </td>
                            <td>
                                <a href="javascript:void(0)" data-toggle="modal" data-target="#modal_add_service"><i class="fa fa-plus"></i></a>
                            </td>
                            <td>
                                <input type="text" class="form-control" wire:model="service_description" />
                            </td>
                            <td>
                                <input type="number" class="form-control float-right text-right" wire:model="service_qty" />
                            </td>
                            <td>
                                <input type="text" class="form-control" wire:model="service_unit" />
                            </td>
                            <td>
                                <input type="number" class="form-control float-right text-right" wire:model="service_price" />
                            </td>
                            <td>
                                <input type="number" class="form-control float-right text-right" wire:model="service_factor" />
                            </td>
                            <td>
                                @if($service_qty>0 and $service_price>0 and $service_factor>0)
                                    @php($service_factor_amount = $service_factor / 100 * ($service_qty * $service_price))
                                @endif
                                {{format_idr($service_factor_amount)}}
                            </td>
                            <td class="text-right">
                                @if($service_qty>0 and $service_price>0)
                                    {{format_idr($service_qty * ($service_price + ($service_factor_amount>0?$service_factor_amount:0)))}}
                                @else
                                    0
                                @endif
                            </td>
                            <td>
                                @if($service_selected)
                                    <button type="button" class="btn btn-info" wire:click="assign_service"><i class="fa fa-plus"></i></button>
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

        select__vendor = $('#service_id').select2();
        $('#service_id').on('change', function (e) {
            var data = $(this).select2("val");
            @this.set('service_selected_id', data);
        });
    </script>
@endpush
