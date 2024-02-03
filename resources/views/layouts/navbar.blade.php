<nav class="navbar navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-btn">
            <button type="button" class="btn-toggle-offcanvas"><i class="lnr lnr-menu fa fa-bars"></i></button>
        </div>
        <div class="navbar-brand">
            @if (isset($logo))
                <a href="/"><img src="{{ $logo }}" class="img-responsive logo"></a>
            @endif
        </div>
        <div class="navbar-right">
            <form id="navbar-search" class="navbar-form search-form col-md-9">
                <div id="navbar-menu float-left">
                    @if(\Auth::user()->user_access_id==1)
                        <ul class="nav navbar-nav">
                            <li class="dropdown">
                                <a href="#" class="text-info dropdown-toggle icon-menu px-1" data-toggle="dropdown">Data Master</a>
                                <ul class="dropdown-menu user-menu menu-icon">
                                    <li><a href="{{ route('users.index') }}">Users</a></li>
                                    <li><a href="{{ route('material.index') }}">Material / Part</a></li>
                                    <li><a href="{{ route('customer.index') }}">Customer</a></li>
                                    <li><a href="{{ route('vendor.index') }}">Vendor / Supplier</a></li>
                                    <li><a href="{{ route('company.index') }}">Company</a></li>
                                </ul>
                            </li>
                            <li><a href="{{ route('quotation.index') }}" class="text-info icon-menu px-1">Quotation</a></li>
                            <li class="dropdown">
                                <a href="#" class="text-info dropdown-toggle icon-menu px-1" data-toggle="dropdown">Purchase Order</a>
                                <ul class="dropdown-menu user-menu menu-icon">
                                    <li><a href="{{ route('purchase-order-in.index') }}">Purchase Order IN</a></li>
                                    <li><a href="{{ route('purchase-order.index') }}">Purchase Order OUT</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="text-info dropdown-toggle icon-menu px-1" data-toggle="dropdown">Invoice</a>
                                <ul class="dropdown-menu user-menu menu-icon">
                                    <li><a href="{{ route('invoice-in.index') }}">Invoice IN</a></li>
                                    <li><a href="{{ route('invoice.index') }}">Invoice OUT</a></li>
                                </ul>
                            </li>
                            <li><a href="#" class="text-info icon-menu px-1">Tracking</a></li>
                        </ul>
                    @endif
                    @if(\Auth::user()->user_access_id==6)
                        <ul class="nav navbar-nav">
                            <li><a href="{{ route('bank-book.index') }}" class="text-info icon-menu px-1">Bank Book</a></li>   
                            <li><a href="{{ route('bank-account.index') }}" class="text-info icon-menu px-1">Bank Account</a></li>   
                            <li><a href="{{ route('income.index') }}" class="text-info icon-menu px-1">Income</a></li>   
                            <li><a href="{{ route('expense.index') }}" class="text-info icon-menu px-1">Expense</a></li>   
                        </ul>
                    @endif
                </div>
            </form>
            <div id="navbar-menu">
                <ul class="nav navbar-nav">
                    <li class="d-none d-sm-inline-block d-md-none d-lg-inline-block">
                        @if(\Auth::user()->name)
                            {{\Auth::user()->name}} {!!isset(\Auth::user()->access->name) ? '<br /><small>( '. \Auth::user()->access->name .' )</small>' : ''!!}
                        @endif
                    </li>
                    {{-- <li class="d-none d-sm-inline-block d-md-none d-lg-inline-block">
                        <a href="" class="icon-menu"><i class="fa fa-folder-open-o"></i></a>
                    </li>
                    <li class="d-none d-sm-inline-block d-md-none d-lg-inline-block">
                        <a href="" class="icon-menu"><i class="icon-calendar"></i></a>
                    </li>
                    <li class="d-none d-sm-inline-block">
                        <a href="" class="icon-menu"><i class="icon-bubbles"></i></a>
                    </li>
                    <li class="d-none d-sm-inline-block">
                        <a href="" class="icon-menu"><i class="icon-envelope"></i><span class="notification-dot"></span></a>
                    </li> --}}
                    {{-- <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                            <i class="icon-bell"></i>
                            <span class="notification-dot"></span>
                        </a>
                        <ul class="dropdown-menu notifications">
                            <li class="header"><strong>You have 0 new Notifications</strong></li>
                            <li class="footer"><a href="javascript:void(0);" class="more">See all notifications</a></li>
                        </ul>
                    </li> --}}
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle icon-menu" data-toggle="dropdown"><i
                                class="icon-equalizer"></i></a>
                        <ul class="dropdown-menu user-menu menu-icon">
                            <li class="menu-heading">ACCOUNT SETTINGS</li>
                            <li><a href="{{ route('profile') }}"><i class="icon-note"></i> <span>My Profile</span></a>
                            </li>
                            <li><a href="{{ route('setting') }}"><i class="icon-equalizer"></i>
                                    <span>Setting</span></a>
                            </li>
                            <li><a href="{{ route('ascii') }}"><i class="icon-equalizer"></i>
                                    <span>Ascii</span></a>
                            </li>
                            <li><a href="{{ route('back-to-admin') }}" class="text-danger"><i
                                        class="fa fa-arrow-right"></i> <span>Back to Admin</span></a></li>
                        </ul>
                    </li>
                    <li><a href="" onclick="event.preventDefault();document.getElementById('logout-form').submit();"
                            class="icon-menu"><i class="icon-login"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</nav>
