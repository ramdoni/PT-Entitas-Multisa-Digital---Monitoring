@section('title', 'Quotaton')
@section('sub-title', 'Create')
<div class="row clearfix">
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-info"><i class="fa fa-building"></i> </div>
                <div class="content">
                    <div class="text">Total Quotation</div>
                    <h5 class="number">0</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-warning"><i class="fa fa-area-chart"></i> </div>
                <div class="content">
                    <div class="text">Ujroh</div>
                    <h5 class="number">0</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon text-danger"><i class="fa fa-shopping-cart"></i> </div>
                <div class="content">
                    <div class="text">Tabbaru</div>
                    <h5 class="number">0</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-6">
        <div class="card top_counter">
            <div class="body">
                <div class="icon"><i class="fa fa-tag"></i> </div>
                <div class="content">
                    <div class="text">Grand Total</div>
                    <h5 class="number">0</h5>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row clearfix">
    <div class="col-md-12">
        <div class="card">
            <div class="body">
                <form id="basic-form" method="post" wire:submit.prevent="save">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label>Project Type</label>
                                <select class="form-control" wire:model="form.project_type">
                                    <option value=""> -- Select -- </option>
                                    <option>Control System</option>
                                    <option>Software</option>
                                </select>
                                @error('form.project_type')
                                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Resonsibility</label>
                                <select class="form-control" wire:model="form.responsibility">
                                    <option value=""> -- Select -- </option>
                                    <option>ENTIGI</option>
                                    <option>WIPO</option>
                                    <option>STLV</option>
                                </select>
                                @error('form.responsibility')
                                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Project Code <small>*Auto Generate</small></label>
                                <input type="text" class="form-control" readonly="true" wire:model="form.project_code" />
                                @error('form.project_code')
                                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Project Name</label>
                                <input type="text" class="form-control" wire:model="form.project_name" />
                                @error('form.project_name')
                                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Customer</label>
                                <select class="form-control" wire:model="form.customer_id">
                                    <option value=""> -- Select -- </option>
                                    @foreach(\App\Models\Customer::get() as $k => $item)
                                        <option value="{{$item->id}}">{{$item->name}}</option>
                                    @endforeach
                                </select>
                                @error('form.customer_id')
                                    <ul class="parsley-errors-list filled" id="parsley-id-29"><li class="parsley-required">{{ $message }}</li></ul>
                                @enderror
                            </div>
                        </div>


                    </div>
                    <hr>
                    <a href="{{route('quotation.index')}}"><i class="fa fa-arrow-left"></i> {{ __('Back') }}</a>
                    <button type="submit" class="btn btn-primary ml-3"><i class="fa fa-save"></i> {{ __('Submit Quotation') }}</button>
                </form>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="card">
            <div class="body">
                <h6>Part</h6>
                <hr>
                <table class="table ">
                    <thead style="background:#eee;">
                        <tr>
                            <th>No</th>
                            <th>Description</th>
                            <th>Brand</th>
                            <th>Model Code Type</th>
                            <th>Total / QTY</th>
                            <th>Unit</th>
                            <th>Unit Price List(IDR)</th>
                            <th>Sub Total(IDR)</th>
                        </tr>
                    </thead>
                </table>
                <a href="javascript:void(0)"><i class="fa fa-plus"></i> Tambah</a>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="card">
            <div class="body">
                <h6>Engineering</h6>
                <hr>
                <table class="table ">
                    <thead style="background:#eee;">
                        <tr>
                            <th>No</th>
                            <th>Description</th>
                            <th>Brand</th>
                            <th>Model Code Type</th>
                            <th>Total / QTY</th>
                            <th>Unit</th>
                            <th>Unit Price List(IDR)</th>
                            <th>Sub Total(IDR)</th>
                        </tr>
                    </thead>
                </table>
                <a href="javascript:void(0)"><i class="fa fa-plus"></i> Tambah</a>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <div class="card">
            <div class="body">
                <h6>Service</h6>
                <hr>
                <table class="table ">
                    <thead style="background:#eee;">
                        <tr>
                            <th>No</th>
                            <th>Description</th>
                            <th>Brand</th>
                            <th>Model Code Type</th>
                            <th>Total / QTY</th>
                            <th>Unit</th>
                            <th>Unit Price List(IDR)</th>
                            <th>Sub Total(IDR)</th>
                        </tr>
                    </thead>
                </table>
                <a href="javascript:void(0)"><i class="fa fa-plus"></i> Tambah</a>
            </div>
        </div>
    </div>
</div>
