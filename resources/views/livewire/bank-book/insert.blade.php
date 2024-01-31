<tr x-show="insert" style="background:#d4edda">
    <td></td>
    <td>
        {{$generate_no_voucher}}
        @error('bank_code')
            <ul class="parsley-errors-list filled pt-2" id="parsley-id-29"><li class="parsley-required">Bank Code harus diisi</li></ul>
        @enderror
    </td>
    <td>{{date('d-M-Y')}}</td>
    <td>
        <input type="date" class="form-control" wire:model="payment_date" />
        @error('payment_date')
            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
        @enderror
    </td>
    <td></td>
    <td></td>
    <td>
        <select class="form-control" wire:model="type">
            <option value=""> -- Type -- </option>
            <option value="R">R - Receivable</option>
            <option value="P">P - Payable</option>
        </select>
        @error('type')
            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
        @enderror
    </td>
    <td>
        <input type="text" class="form-control text-right" wire:model="amount" placeholder="Amount" wire:keydown.enter="save" />
        @error('amount')
            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
        @enderror
    </td>
    <td><input type="text" class="form-control" wire:model="note" placeholder="Note" wire:keydown.enter="save" /></td>
    <td>
        <span wire:loading wire:target="save">
            <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i>
            <span class="sr-only">{{ __('Loading...') }}</span>
        </span>
        <a href="javascript:void(0)" wire:loading.remove wire:target="save" wire:click="save" class="btn btn-success"><i class="fa fa-save"></i></a>
        <a href="javascript:void(0)" wire:loading.remove wire:target="save" @click="insert = false" class="text-danger"><i class="fa fa-times"></i></a>
    </td>
</tr>
