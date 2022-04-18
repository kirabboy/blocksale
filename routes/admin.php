<?php

use Illuminate\Support\Facades\Route;
use App\Admin\Controllers\AdminHomeController;
use App\Admin\Controllers\AuthController;
use App\Admin\Controllers\BuildingManagerController;
use App\Admin\Controllers\ContractController;
use App\Admin\Controllers\CustomerController;
use App\Admin\Controllers\AccountController;
use App\Admin\Controllers\WorkBoardController;
use App\Admin\Controllers\AdminBuildingController;


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

Route::get('dang-nhap', [AuthController::class, 'getLogin'])->name('admin.getLogin');
Route::post('dang-nhap', [AuthController::class, 'postLogin'])->name('admin.postLogin');

Route::group(['middleware' => ['admin']], function () {
    Route::resources([
        '/dashboard' => AdminHomeController::class,
        '/quan-ly-admin' => AccountController::class,
        '/ban-lam-viec' => WorkBoardController::class,
        '/ho-so-khach-hang' => CustomerController::class,
        '/hop-dong' => ContractController::class
    ]);

    Route::prefix('co-so')->group(function(){
        Route::get('/', [BuildingManagerController::class, 'index'])->name('admin.building.index');
        Route::get('show/{building:id}', [BuildingManagerController::class, 'show'])->name('admin.building.show');
        Route::get('create', [BuildingManagerController::class, 'create'])->name('admin.building.create');
        Route::post('store', [BuildingManagerController::class, 'store'])->name('admin.building.store');
    });
});
