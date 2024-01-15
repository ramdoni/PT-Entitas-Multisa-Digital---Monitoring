@section('title', 'Vendor')
@section('sub-title', 'Management Vendor')
<div class="clearfix row">
    <div class="col-lg-12">
        <div class="card">
            <div class="header row">
                <div class="col-md-2">
                    <input type="text" class="form-control" wire:model="keyword" placeholder="Searching..." />
                </div>
                <div class="col-md-1">
                    <a href="{{route('vendor.create')}}" class="btn btn-primary"><i class="fa fa-plus"></i> Vendor</a>
                </div>
            </div>
            <div class="body">
                <div class="table-responsive">
                    <table class="table table-striped table-hover m-b-0 c_list">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Vendor ID</th>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Phone</th>
                                <th>Person</th>
                                <th>Position</th>
                                <th>Mobile</th>
                                <th>Email</th>
                                <th>Proposed</th>
                                <th>Rekening</th>
                                <th>Bank</th>
                                <th>Account Name</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                           
                        </tbody>
                    </table>
                </div>
                <br />
            </div>
        </div>
    </div>
</div>
