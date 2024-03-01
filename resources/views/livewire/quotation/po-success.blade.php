<div wire:ignore.self class="modal fade" id="modal_po_success" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document" style="max-width: 90%;">
        <form wire:submit.prevent="save">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-check-circle"></i> Purchase Order</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true close-btn">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="form-group col-md-4">
                            <label>Purchase Order No</label>
                            <input type="text" class="form-control" wire:model="form.po_number" />
                            @error('form.po_number')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-4">
                            <label>File</label>
                            <input type="file" class="form-control" wire:model="file" />
                            @error('file')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-4">
                            <label>Date</label>
                            <input type="date" class="form-control" wire:model="form.po_date" />
                            @error('form.po_date')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped table-hover m-b-0 c_list">
                            <thead>
                                <tr>
                                    <th></th>
                                    <th>Description</th>
                                    <th>Brand</th>
                                    <th>Model Code Type</th>
                                    <th>Unit</th>
                                    <th class="text-right">Total / QTY</th>
                                    <th class="text-right">Unit Price List(IDR)</th>
                                    <th class="text-right">Sub Total(IDR)</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($parts as $k=>$item)
                                    <tr>
                                        <td>
                                            <input type="checkbox" wire:model="check_id.{{$k}}" value="{{$item['id']}}">
                                        </td>
                                        <td>
                                            @if($item['material_row'])
                                                {{$item['material_row']['name']}}
                                            @endif
                                        </td>
                                        <td>{{$item['brand']}}</td>
                                        <td>{{$item['model']}}</td>
                                        <td>{{$item['uom']}}</td>
                                        <td class="text-right">
                                            <input type="number" class="form-control text-right" min="1" wire:model="parts.{{$k}}.qty" />
                                        </td>
                                        <td class="text-right">
                                            <input type="number" class="form-control text-right" min="1" wire:model="parts.{{$k}}.price" />
                                        </td>
                                        <td class="text-right">{{format_idr(($parts[$k]['price']??0)*($parts[$k]['qty']??0))}}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                            <tfoot>
                                <tr>
                                    <th  colspan="7" class="text-right">Sub Total</td>
                                    <td>
                                        <input type="text" class="form-control text-right" readonly value="{{ format_idr($form['amount']) }}" />
                                        @error('form.amount')
                                            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                        @enderror
                                    </td>
                                </tr>
                                <tr>
                                    <th class="text-right" colspan="7">Tax ({{$tax}}%)</td>
                                    <td>
                                        <input type="checkbox" wire:model="form.inclusive_taxes" />
                                        <label>Inclusive Taxes</label>
                                        <input type="text" class="form-control text-right" readonly wire:model="temp.inclusive_taxes_amount" />
                                        @error('form.purchase_order_date')
                                            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                        @enderror
                                    </td>
                                </tr>
                                <tr>
                                    <th colspan="7" class="text-right">
                                        Grand Total
                                    </th>
                                    <td>
                                        <input type="text" class="form-control text-right" wire:model="temp.grand_total" readonly />
                                        @error('form.grand_total')
                                            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                        @enderror
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <hr />
                    <div class="form-group">
                        <span wire:loading wire:target="save">
                            <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i>
                            <span class="sr-only">{{ __('Loading...') }}</span>
                        </span>
                        <a href="javascript:void(0)" class="btn btn-danger mr-2" data-dismiss="modal" ><i class="fa fa-times"></i> Cancel</a>
                        <button type="submit" wire:loading.remove wire:target="save" class="btn btn-info"><i class="fa fa-check-circle"></i> Submit</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
