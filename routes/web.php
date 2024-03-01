<?php

use Illuminate\Support\Facades\Route;
use App\Http\Livewire\Home;

date_default_timezone_set("Asia/Bangkok");
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', Home::class)->name('home')->middleware('auth');
Route::get('login', App\Http\Livewire\Login::class)->name('login');

// All login
Route::group(['middleware' => ['auth']], function(){
    Route::get('profile',App\Http\Livewire\Profile::class)->name('profile');
    Route::get('back-to-admin',[App\Http\Controllers\IndexController::class,'backtoadmin'])->name('back-to-admin');
    Route::get('plc',App\Http\Livewire\Plc\Index::class)->name('plc.index');
});

Route::group(['middleware' => ['auth']], function(){
    Route::get('api/get-kepesertaan',[\App\Http\Controllers\Api\KepesertaanController::class,'index'])->name('api.get-kepesertaan');

    Route::get('ajax/select2-get-member', [\App\Http\Controllers\AjaxController::class,'getMember2'])->name('ajax.select2-get-member');
    Route::get('ajax/select2-get-bank-book', [\App\Http\Controllers\AjaxController::class,'getBankbook'])->name('ajax.select2-get-bank-book');
    Route::get('ajax/select2-get-income', [\App\Http\Controllers\AjaxController::class,'getIncome'])->name('ajax.select2-get-income');
    Route::get('ajax/select2-get-expense', [\App\Http\Controllers\AjaxController::class,'getExpense'])->name('ajax.select2-get-expense');
});

// Administrator
Route::group(['middleware' => ['auth','access:1']], function(){
    Route::get('ascii',App\Http\Livewire\Ascii::class)->name('ascii');
    Route::get('setting',App\Http\Livewire\Setting::class)->name('setting');
    Route::get('users/insert',App\Http\Livewire\User\Insert::class)->name('users.insert');
    Route::get('user-access', App\Http\Livewire\UserAccess\Index::class)->name('user-access.index');
    Route::get('user-access/insert', App\Http\Livewire\UserAccess\Insert::class)->name('user-access.insert');
    Route::get('users',App\Http\Livewire\User\Index::class)->name('users.index');
    Route::get('users/edit/{id}',App\Http\Livewire\User\Edit::class)->name('users.edit');
    Route::post('users/autologin/{id}',[App\Http\Livewire\User\Index::class,'autologin'])->name('users.autologin');

    Route::get('log-activity',App\Http\Livewire\LogActivity\Index::class)->name('log-activity');

    Route::get('customer',App\Http\Livewire\Customer\Index::class)->name('customer.index');
    Route::get('customer/insert',App\Http\Livewire\Customer\Insert::class)->name('customer.insert');
    Route::get('customer/edit/{data}',App\Http\Livewire\Customer\Edit::class)->name('customer.edit');

    Route::get('vendor',App\Http\Livewire\Vendor\Index::class)->name('vendor.index');
    Route::get('vendor/create',App\Http\Livewire\Vendor\Create::class)->name('vendor.create');
    Route::get('vendor/edit/{id}',App\Http\Livewire\Vendor\Edit::class)->name('vendor.edit');

    Route::get('tracking',App\Http\Livewire\Tracking\Index::class)->name('tracking.index');
    Route::get('tracking/create',App\Http\Livewire\Tracking\Create::class)->name('tracking.create');

    Route::get('quotation',App\Http\Livewire\Quotation\Index::class)->name('quotation.index');
    Route::get('quotation/create',App\Http\Livewire\Quotation\Create::class)->name('quotation.create');
    Route::get('quotation/edit/{data}',App\Http\Livewire\Quotation\Edit::class)->name('quotation.edit');
    Route::get('quotation/print/{data}',[\App\Http\Controllers\PrintController::class,'quotation'])->name('print.quotation');

    Route::get('material',App\Http\Livewire\Material\Index::class)->name('material.index');
    Route::get('material/create',App\Http\Livewire\Material\Create::class)->name('material.create');
    Route::get('material/edit/{data}',App\Http\Livewire\Material\Edit::class)->name('material.edit');

    Route::get('purchase-order',App\Http\Livewire\PurchaseOrder\Index::class)->name('purchase-order.index');
    Route::get('purchase-order/create/{quotation}',App\Http\Livewire\PurchaseOrder\Create::class)->name('purchase-order.create');
    Route::get('purchase-order/edit/{data}',App\Http\Livewire\PurchaseOrder\Create::class)->name('purchase-order.edit');

    Route::get('purchase-order-in',App\Http\Livewire\PurchaseOrderIn\Index::class)->name('purchase-order-in.index');
    Route::get('purchase-order-in/edit/{data}',App\Http\Livewire\PurchaseOrderIn\Edit::class)->name('purchase-order-in.edit');

    Route::get('company',App\Http\Livewire\Company\Index::class)->name('company.index');
    Route::get('company/create',App\Http\Livewire\Company\Create::class)->name('company.create');
    Route::get('company/edit/{data}',App\Http\Livewire\Company\Edit::class)->name('company.edit');

    Route::get('invoice',App\Http\Livewire\Invoice\Index::class)->name('invoice.index');
    Route::get('invoice-in',App\Http\Livewire\InvoiceIn\Index::class)->name('invoice-in.index');

    Route::get('debit-note',App\Http\Livewire\DebitNote\Index::class)->name('debit-note.index');
    Route::get('debit-note/edit/{data}',App\Http\Livewire\DebitNote\Edit::class)->name('debit-note.edit');

    Route::get('credit-note',App\Http\Livewire\CreditNote\Index::class)->name('credit-note.index');
    Route::get('credit-note/edit/{data}',App\Http\Livewire\CreditNote\Edit::class)->name('credit-note.edit');
});

Route::group(['middleware' => ['auth','access:6']], function(){
    Route::get('bank-account',App\Http\Livewire\BankAccount\Index::class)->name('bank-account.index');
    Route::get('bank-account/insert',App\Http\Livewire\BankAccount\Insert::class)->name('bank-account.insert');
    Route::get('bank-account/edit/{id}',App\Http\Livewire\BankAccount\Edit::class)->name('bank-account.edit');


    Route::get('bank-book',App\Http\Livewire\BankBook\Index::class)->name('bank-book.index');
    Route::get('bank-book/insert',App\Http\Livewire\BankBook\Insert::class)->name('bank-book.insert');

    Route::get('income',App\Http\Livewire\Income\Index::class)->name('income.index');
    Route::get('income/detail/{data}',App\Http\Livewire\Income\Detail::class)->name('income.detail');

    Route::get('expense',App\Http\Livewire\Expense\Index::class)->name('expense.index');
    Route::get('expense/edit/{id}',App\Http\Livewire\Expense\Edit::class)->name('expense.edit');

});
