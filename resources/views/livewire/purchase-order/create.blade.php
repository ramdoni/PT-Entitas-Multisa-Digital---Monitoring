@section('title', 'Purchase Order')
@section('sub-title', 'Create Purchase Order #'.$quotation->quotation_number)
<div class="row clearfix">
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-info"><i class="fa fa-calculator"></i></div>
                <div class="content">
                    <div class="text">Sub Total</div>
                    <h6 class="number">{{format_idr($form['sub_total_amount'])}}</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-warning"><i class="fa fa-calculator"></i> </div>
                <div class="content">
                    <div class="text">Total QTY</div>
                    <h6 class="number">{{format_idr($form['sub_total_qty'])}}</h6>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
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
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon"><i class="fa fa-tag"></i> </div>
                <div class="content">
                    <div class="text">Total Purchase Order</div>
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
                    <div class="col-md-6">
                        <h6>Purchase Order</h6>
                        <hr />
                        <div class="row">
                            <div class="form-group col-md-7">
                                <label>Purchase Order No <small>* Auto generate</small></label>
                                <input type="text" class="form-control" readonly wire:model="form.po_number">
                                @error('form.po_number')
                                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                @enderror
                            </div>
                            <div class="form-group col-md-5">
                                <label>Date</label>
                                <input type="date" class="form-control" wire:model="form.po_date" />
                                @error('form.po_date')
                                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                @enderror
                            </div>
                            <div class="form-group col-md-6">
                                <label>Vendor</label>
                                <select class="form-control" wire:model="form.vendor_id">
                                    <option value=""> -- Select -- </option>
                                    @foreach($vendors as $item)
                                        <option value="{{$item->id}}">{{$item->name}}</option>
                                    @endforeach
                                </select>
                                @error('form.vendor_id')
                                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                @enderror
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h6>Quotation</h6>
                        <hr />
                        <div class="row">
                            <div class="form-group col-md-6">
                                <label class="mb-0 pb-0">Quotation Number</label><br />
                                {{$quotation->quotation_number}}
                            </div>
                            <div class="form-group col-md-6">
                                <label class="mb-0 pb-0">Quotation Date</label><br />
                                {{date('d-M-Y',strtotime($quotation->quotation_date))}}
                            </div>
                            <div class="form-group col-md-6">
                                <label class="mb-0 pb-0">Project Type</label><br />
                                {{$quotation->project_type}}
                            </div>
                            <div class="form-group col-md-6">
                                <label class="mb-0 pb-0">Responsibility</label><br />
                                {{$quotation->responsibility}}
                            </div>
                            <div class="form-group col-md-6">
                                <label class="mb-0 pb-0">Customer</label><br />
                                @if($quotation->customer)
                                    {{$quotation->customer->name}}<br />
                                    {{$quotation->customer->address}}
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mt-3">
                    <h6>Part / Material</h6>
                    <table class="table ">
                        <thead style="background:#eee;">
                            <tr>
                                <th>Description</th>
                                <th>Detail</th>
                                <th>Qty</th>
                                <th class="text-right">Harga</th>
                                <th class="text-right">Total Harga</th>
                                <th class="text-center"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <select class="form-control" wire:model="row_material_id">
                                        <option value=""> -- Select -- </option>
                                        @foreach($parts as $item)
                                            <option value="{{$item->id}}">{{$item->material_detail['name']}}</option>
                                        @endforeach
                                    </select>
                                </td>
                                <td>
                                    <input type="text" class="form-control" />
                                </td>
                                <td class="text-right">
                                    @if($selected_material)
                                        <select class="form-control">
                                            @for($num=1;$num<=$selected_material->qty;$num++)
                                                <option>{{$num}}</option>
                                            @endfor
                                        </select>
                                    @endif
                                </td>
                                <td class="text-right">
                                    @if($selected_material)
                                        {{format_idr($selected_material->price)}}
                                    @endif
                                </td>
                                <td class="text-right">
                                    @if($selected_material)
                                        {{format_idr($selected_material->price * $row_material_qty)}}
                                    @endif
                                </td>
                                <td class="text-center">
                                    @if($selected_material)
                                        <button type="button" class="btn btn-info" wire:click="assign_part"><i class="fa fa-plus"></i></button>
                                    @endif
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <hr />
                <div class="mt-3">
                    <h6>Condition</h6>
                    <table class="table ">
                        <thead style="background:#eee;">
                        </thead>
                    </table>
                    <a href="javascript:void(0)" wire:click="add_condition"><i class="fa fa-plus"></i> Add Condition</a>
                </div>
                <hr />
                <div class="form-group">
                    <a href="{{route('purchase-order.index')}}" class="mr-2"><i class="fa fa-arrow-left"></i> Back</a>
                    <button class="btn btn-info"><i class="fa fa-check"></i>  Submit Purchase Order</button>
                </div>
              </form>
            </div>
        </div>
    </div>
</div>
