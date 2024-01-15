@section('title', 'Vendor')
@section('sub-title', 'Insert')

<div class="row clearfix">
    <div class="col-md-6">
        <div class="card">
            <div class="body">
                <form id="basic-form" method="post" wire:submit.prevent="save">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>{{ __('Type') }}</label>
                            <select class="form-control" wire:model="type">
                                <option value="1">Material / Part </option>
                                <option value="2">Services</option>
                            </select>
                            @error('type')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>    
                        <div class="form-group col-md-6">
                            <label>{{ __('Vendor ID') }} <small>*Auto Generate</small></label>
                            <input type="text" class="form-control" wire:model="vendor_id" >
                            @error('vendor_id')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Name') }}</label>
                            <input type="text" class="form-control" wire:model="name" >
                            @error('name')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Phone') }}</label>
                            <input type="text" class="form-control"  wire:model="phone" >
                            @error('phone')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Address') }}</label>
                            <input type="text" class="form-control"  wire:model="address" >
                            @error('address')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Person') }}</label>
                            <input type="text" class="form-control"  wire:model="person" >
                            @error('person')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Position') }}</label>
                            <input type="text" class="form-control"  wire:model="position" >
                            @error('position')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Mobile') }}</label>
                            <input type="text" class="form-control"  wire:model="mobile" >
                            @error('mobile')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Email') }}</label>
                            <input type="email" class="form-control"  wire:model="email" >
                            @error('email')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Description') }}</label>
                            <input type="text" class="form-control"  wire:model="description" >
                            @error('description')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-12">
                            <label>{{ __('Proposed') }}</label>
                            <input type="text" class="form-control"  wire:model="proposed" >
                            @error('proposed')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Rekening') }}</label>
                            <input type="text" class="form-control"  wire:model="rekening" >
                            @error('rekening')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Bank') }}</label>
                            <input type="text" class="form-control"  wire:model="bank" >
                            @error('bank')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Account Name') }}</label>
                            <input type="text" class="form-control"  wire:model="account_name" >
                            @error('account_name')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                    </div>
                    <hr>
                    <a href="{{route('users.index')}}"><i class="fa fa-arrow-left"></i> {{ __('Back') }}</a>
                    <button type="submit" class="btn btn-primary ml-3"><i class="fa fa-save"></i> {{ __('Save') }}</button>
                </form>
            </div>
        </div>
    </div>
</div>
