<div wire:ignore.self class="modal fade" id="modal_create" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form wire:submit.prevent="save">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-plus"></i> Tambah Transaksi</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true close-btn">×</span>
                    </button>
                </div>
                <div class="modal-body row">
                    <div class="form-group col-md-12">
                        <label>No Transaksi</label><br>
                        <input type="text" class="form-control" wire:model="form.nomor_pengajuan" readonly />
                        @error('form.nomor_pengajuan')
                            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
                    </div>
                    <div class="form-group col-md-12">
                        <label>Nominal</label><br>
                        <input type="number" class="form-control" wire:model="form.amount" />
                        @error('form.amount')
                            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
                    </div>
                    <div class="form-group col-md-12">
                        <label>Keterangan</label><br>
                        <textarea class="form-control" wire:model="form.description" cols="10" rows="5"></textarea>
                        @error('form.description')
                            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
                    </div>
                    <div class="form-group col-md-12">
                        <label>Akun</label><br>
                        <select class="form-control" wire:model="form.coa_id">
                            <option value=""> -- Pilih -- </option>
                            @foreach(\App\Models\CoaGroup::get() as $group)
                                <optgroup label="{{$group->name}}">
                                    @foreach($group->coa as $coa)
                                        <option value="{{$coa->id}}">{{$coa->name}}</option>
                                    @endforeach
                                </optgroup>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-info">Submit Transaksi</button>
                </div>
            </form>
        </div>
    </div>
</div>