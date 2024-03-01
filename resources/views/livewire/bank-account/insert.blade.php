@section('title', __('Bank Account'))
@section('parentPageTitle', 'Home')

<div class="row clearfix">
    <div class="col-md-4">
        <div class="card">
            <div class="body">
                <form id="basic-form" method="post" wire:submit.prevent="save">
                    <div class="form-group">
                        <label>{{ __('Kode Bank') }}</label>
                        <input type="text" class="form-control" wire:model="code" >
                        @error('code')
                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>{{ __('Bank') }}</label>
                        <input type="text" class="form-control" wire:model="bank" >
                        @error('bank')
                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>{{ __('No Rekening') }}</label>
                        <input type="text" class="form-control" wire:model="no_rekening" >
                        @error('no_rekening')
                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>{{ __('Owner') }}</label>
                        <input type="text" class="form-control" wire:model="owner" >
                        @error('owner')
                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>{{ __('Cabang') }}</label>
                        <textarea class="form-control" wire:model="cabang" style="height:100px;"></textarea>
                        @error('cabang')
                        <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>COA</label>
                        <select class="form-control" wire:model="coa_id">
                            <option value=""> -- COA -- </option>
                            @foreach(\App\Models\CoaGroup::get() as $group)
                                <optgroup label="{{$group->name}}">
                                    @foreach($group->coa as $coa)
                                        <option value="{{$coa->id}}">{{$coa->name}}</option>
                                    @endforeach
                                </optgroup>
                            @endforeach
                        </select>
                        @error('coa_id')
                            <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                        @enderror
                    </div>
                    <hr>
                    <a href="javascript:;" onclick="history.back()"><i class="fa fa-arrow-left"></i> {{ __('Back') }}</a>
                    <button type="submit" class="btn btn-primary ml-3"><i class="fa fa-save"></i> {{ __('Save') }}</button>
                </form>
            </div>
        </div>
    </div>
</div>