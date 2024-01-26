<div wire:ignore.self class="modal fade" id="modal_reject" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form wire:submit.prevent="save">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-check-circle"></i> Reject Quotation</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true close-btn">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Note</label>
                        <textarea class="form-control" wire:model="form.reject_note" placeholder="Typing here..."></textarea>
                        @error('form.reject_note')
                            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>Date</label>
                        <input type="date" class="form-control" wire:model="form.reject_date" />
                        @error('form.reject_date')
                            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
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