@section('title', 'Ascii')
@section('sub-title', 'Setting')

<div class="row clearfix">
    <div class="col-lg-12">
        <div class="card">
            <div class="body">
                <div class="form-group">
                    <label>ASCI</label>
                    <textarea class="form-control" wire:model="ascii"></textarea>
                </div>

                <div class="form-group">
                    <label>Char</label>
                    <textarea class="form-control" wire:model="char"></textarea>
                </div>
                <a href="https://www.rapidtables.com/code/text/ascii-table.html" target="_blank">Reference</a>
            </div>
        </div>
    </div>
</div>