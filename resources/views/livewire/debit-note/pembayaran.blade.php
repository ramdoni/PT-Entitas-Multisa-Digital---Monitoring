<div wire:ignore.self class="modal fade" id="modal_pembayaran" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form wire:submit.prevent="save">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-plus"></i> Tambah Pembayaran</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true close-btn">×</span>
                    </button>
                </div>
                <div class="modal-body row">
                    <div class="form-group col-md-12">
                        <label>Bukti Pembayaran</label><br>
                        <input type="file" class="form-control" wire:model="payment_file" />
                        @error('payment_file')
                            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
                    </div>
                    <div class="form-group col-md-12">
                        <label>Tanggal Pembayaran</label><br>
                        <input type="date" class="form-control" wire:model="form.payment_date" />
                    </div>
                    <div class="form-group col-md-12">
                        <label>Metode Pembayaran</label><br>
                        <select class="form-control" wire:model="form.payment_method">
                            <option value="1">Tunai</option>
                            <option value="2">Transfer</option>
                        </select>
                    </div>
                    <div class="form-group col-md-12">
                        <label>Total Pembayaran</label><br />
                        Rp. {{format_idr($data->amount)}}
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-info">Submit Pembayaran</button>
                </div>
            </form>
        </div>
    </div>
</div>