<div wire:ignore.self class="modal fade" id="modal_invoice" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form wire:submit.prevent="save">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-check-circle"></i> Invoice</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true close-btn">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Invoice No</label>
                        <input type="text" class="form-control" readonly wire:model="form.invoice_number" />
                        @error('form.invoice_number')
                            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>File</label>
                            <input type="file" class="form-control" wire:model="file" />
                            @error('file')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>Date</label>
                            <input type="date" class="form-control" wire:model="form.invoice_date" />
                            @error('form.invoice_date')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>TOP (Day)</label>
                            <input type="number" class="form-control text-right" wire:model="form.top_day" />
                            @error('form.top_day')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>Amount</label>
                            <input type="text" class="form-control text-right" wire:model="form.amount" />
                            @error('form.amount')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>Discount</label>
                            <input type="text" class="form-control text-right" wire:model="form.discount" />
                            @error('form.discount')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>
                                <input type="checkbox" wire:model="use_tax" /> Inclusive Taxes 11%
                            </label>
                            <input type="text" class="form-control text-right" readonly wire:model="temp.tax" />
                        </div>
                        <div class="form-group col-md-6">
                            <label>Nett Amount</label>
                            <input type="text" class="form-control text-right" wire:model="temp.nett_amount" readonly />
                            @error('form.nett_amount')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                    </div>
                    <hr />
                    <div class="form-group">
                        <span wire:loading wire:target="save">
                            <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i>
                            <span class="sr-only">{{ __('Loading...') }}</span>
                        </span>
                        <button type="submit" wire:loading.remove wire:target="save" class="btn btn-info"><i class="fa fa-check-circle"></i> Submit</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>