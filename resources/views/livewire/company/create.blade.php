@section('title', 'Company')
@section('sub-title', 'Create')

<div class="row clearfix">
    <div class="col-md-6">
        <div class="card">
            <div class="body">
                <form id="basic-form" method="post" wire:submit.prevent="save">
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>{{ __('Company Code') }}</label>
                            <input type="text" class="form-control" wire:model="form.code" >
                            @error('form.code')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Name') }}</label>
                            <input type="text" class="form-control" wire:model="form.name" >
                            @error('form.name')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Phone') }}</label>
                            <input type="text" class="form-control"  wire:model="form.phone" >
                            @error('form.phone')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('NPWP') }}</label>
                            <input type="text" class="form-control"  wire:model="form.npwp" >
                            @error('form.npwp')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Website') }}</label>
                            <input type="text" class="form-control"  wire:model="form.website" >
                            @error('form.website')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Address') }}</label>
                            <input type="text" class="form-control"  wire:model="form.address" >
                            @error('address')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label>{{ __('Logo') }}</label>
                            <input type="file" class="form-control" wire:model="logo" >
                            @error('logo')
                                <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                            @enderror
                        </div>

                    </div>
                    <hr>
                    <a href="{{route('company.index')}}"><i class="fa fa-arrow-left"></i> {{ __('Back') }}</a>
                    <button type="submit" class="btn btn-primary ml-3"><i class="fa fa-save"></i> {{ __('Save') }}</button>
                </form>
            </div>
        </div>
    </div>
</div>
