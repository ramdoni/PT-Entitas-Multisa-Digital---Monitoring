<div>
    @if(isset($data))
        @if(!$edit)
            <a href="javascript:void(0)" wire:loading.remove wire:click="set_edit(true)">
                <i class="fa fa-edit"></i>
                @if($type_input=='date')
                    {{$data->$field ? date('d-M-Y',strtotime($data->$field)) : ''}}
                @else
                    {{is_numeric($data->$field)?format_idr($data->$field):$data->$field}}
                @endif
            </a>
        @endif
        <span wire:loading wire:target="save">
            <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i>
            <span class="sr-only">{{ __('Loading...') }}</span>
        </span>
        <span wire:loading wire:target="set_edit">
            <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i>
            <span class="sr-only">{{ __('Loading...') }}</span>
        </span>
        @if($edit)
            <div wire:loading.remove wire:target="save" style="width: 200px;">
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text">
                            <a href="javascript:void(0)" class="text-danger" wire:click="set_edit(false)"><i class="fa fa-times"></i></a>
                        </span>
                        <span class="input-group-text">
                            <a href="javascript:void(0)" class="text-success" wire:click="save"><i class="fa fa-save"></i></a>
                        </span>
                    </div>
                    <input type="{{$type_input}}" class="form-control {{$type_input=="number"?"text-right":""}}" wire:model="value" wire:keydown.enter="save" />

                </div>
            </div>
        @endif
    @endif
</div>
