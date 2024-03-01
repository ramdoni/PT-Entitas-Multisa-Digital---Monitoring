<div wire:ignore.self class="modal fade" id="modal_settlement" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document" style="max-width: 80%;">
        <div class="modal-content">
            <form wire:submit.prevent="save">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel"><i class="fa fa-plus"></i> Settlement</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true close-btn">×</span>
                    </button>
                </div>
                <div class="modal-body row">
                    <div class="col-md-12">
                        <div class="alert alert-warning" role="alert">Proses Settlement dapat dilakukan setelah Total Bank Book dan Total Transaksi tidak ada selisih atau sama</div>
                        @error('bank_books')
                            <div class="alert alert-danger" role="alert">{{ $message }}</div>
                        @enderror
                        @error('transaksis')
                            <div class="alert alert-danger" role="alert">{{ $message }}</div>
                        @enderror
                        <h5>Bank Book</h5>
                        <div class="table-responsive mt-2">
                            <table class="table table-hover m-b-0 c_list">
                                <thead style="background: #efefef">
                                    <tr>
                                        <th class="text-center" style="width: 50px;">No</th>
                                        <th>Voucher Number</th>
                                        <th>Voucher Date</th>
                                        <th>Payment Date</th>
                                        <th class="text-center">Type</th>
                                        <th class="text-right">Amount</th>
                                        <th>Note</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($bank_books as $k=>$item)
                                        <tr wire:key="item-{{$k}}">
                                            <td>{{$k+1}}</td>
                                            <td>{{$item['no_voucher']}}</td>
                                            <td>{{date('d-M-Y',strtotime($item['created_at']))}}</td>
                                            <td>{{date('d-M-Y',strtotime($item['payment_date']))}}</td>
                                            <td class="text-center">{{$item['type']}}</td>
                                            <td class="text-right">{{format_idr($item['amount'])}}</td>
                                            <td>{{$item['note']}}</td>
                                            <td>
                                                <a href="javascript:void(0)" wire:click="delete({{$k}})"><i class="fa fa-trash text-danger"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    <tr wire:key="select_bank_books">
                                        <td class="text-center">
                                        </td>
                                        <td colspan="7">
                                            <div wire:ignore>
                                                <select class="form-control" id="select_bank_book">
                                                    <option value=""> -- Pilih Bank Book -- </option>
                                                </select>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot style="background: #efefef">
                                    <tr>
                                        <th class="text-right" colspan="5">Total</th>
                                        <td class="text-right">{{format_idr($total_bank_book)}}</td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                    <div class="col-md-12 mt-5">
                        <h5>Transaksi</h5>
                        <div class="table-responsive">
                            <table class="table table-hover m-b-0 c_list">
                                <thead style="background: #efefef">
                                    <tr>
                                        <th style="width: 50px;">No</th>
                                        <th>Type</th>
                                        <th>No Transaksi</th>
                                        <th class="text-right">Amount</th>
                                        <th>Keterangan</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($transaksis as $k=>$item)
                                        <tr wire:key="income{{$k}}">
                                            <td>{{$k+1}}</td>
                                            <td>{{$transaksi_type_[$item['type']]}}</td>
                                            <td>{{$item['no_transaksi']}}</td>
                                            <td class="text-right">{{format_idr($item['amount'])}}</td>
                                            <td>{{$item['keterangan']}}</td>
                                            <td>
                                                <a href="javascript:void(0)" wire:click="delete_transaksi({{$k}})"><i class="fa fa-trash text-danger"></i></a>
                                            </td>
                                        </tr>
                                    @endforeach
                                    <tr wire:key="select_income_expense">
                                        <td class="text-center">
                                        </td>
                                        <td>
                                            <select class="form-control" wire:model="transaksi_type">
                                                <option value=""> -- Pilih Type -- </option>
                                                <option value="1">Income</option>
                                                <option value="2">Expense</option>
                                            </select>
                                        </td>
                                        <td colspan="2">
                                            @if($transaksi_type==1)
                                                <div wire:ignore wire:key="key_select_income">
                                                    <select class="form-control" id="select_income">
                                                        <option value=""> -- Pilih Income -- </option>
                                                    </select>
                                                </div>
                                            @endif
                                            @if($transaksi_type==2)
                                                <div wire:ignore wire:key="key_select_expense">
                                                    <select class="form-control" id="select_expense">
                                                        <option value=""> -- Pilih Expense -- </option>
                                                    </select>
                                                </div>
                                            @endif
                                        </td>
                                    </tr>
                                </tbody>
                                <tfoot style="background: #efefef">
                                    <tr>
                                        <th class="text-right" colspan="3">Total</th>
                                        <td class="text-right">{{format_idr($total_transaksi)}}</td>
                                        <td></td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <span wire:loading>
                        <i class="fa fa-spinner fa-pulse fa-2x fa-fw"></i>
                        <span class="sr-only">{{ __('Loading...') }}</span>
                    </span>
                    @if($total_transaksi==$total_bank_book)
                        <button type="button" wire:click="save" wire:loading.remove wire:target="save" class="btn btn-info">Submit Settlement</button>
                    @endif
                </div>
            </form>
        </div>
    </div>
</div>
@push('after-scripts')
    <link rel="stylesheet" href="{{ asset('assets/vendor/select2/css/select2.min.css') }}"/>
    <script src="{{ asset('assets/vendor/select2/js/select2.min.js') }}"></script>
    <style>
        .select2-container {width: 100% !important;}
    </style>
    <script>
        $('#select_bank_book').select2({
            ajax: {
                url: '{{route('ajax.select2-get-bank-book')}}',
                data: function (params) {
                    var query = {
                        search: params.term
                    }
                    return query;
                },
                processResults: function (data) {
                    return {
                        results: data.items
                    };
                }
            }
        });
        
        $('#select_bank_book').on('change', function (e) {
            var data = $(this).select2("val");
            @this.set('bank_book_id', data);
        });

        var select_income,select_expense;

        Livewire.on('transaksi_type',(id)=>{
            if(id==1){
                select_income = $('#select_income').select2({
                    ajax: {
                        url: '{{route('ajax.select2-get-income')}}',
                        data: function (params) {
                            var query = {
                                search: params.term
                            }
                            return query;
                        },
                        processResults: function (data) {
                            return {
                                results: data.items
                            };
                        }
                    }
                });

                $('#select_income').on('change', function (e) {
                    var data = $(this).select2("val");
                    @this.set('transaksi_id', data);
                });
            }
           
            if(id==2){
                select_expense = $('#select_expense').select2({
                    ajax: {
                        url: '{{route('ajax.select2-get-expense')}}',
                        data: function (params) {
                            var query = {
                                search: params.term
                            }
                            return query;
                        },
                        processResults: function (data) {
                            return {
                                results: data.items
                            };
                        }
                    }
                });
                
                $('#select_expense').on('change', function (e) {
                    var data = $(this).select2("val");
                    @this.set('transaksi_id', data);
                });
            }

            $('select').select2("val", null)
        })
        
    </script>
@endpush