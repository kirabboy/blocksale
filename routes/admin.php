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
use App\Admin\Controllers\RoomController;
use App\Admin\Controllers\FloorManagerController;
use App\Admin\Controllers\RoomManagerController;
use App\Admin\Controllers\RoleManagerController;
use App\Admin\Controllers\PermissionManagerController;
use App\Admin\Controllers\CustomerManagerController;

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
        '/hop-dong' => ContractController::class,
        '/phong' =>RoomController::class,
    ]);

    Route::prefix('co-so')->group(function(){
        Route::get('/', [BuildingManagerController::class, 'index'])->name('admin.building.index');
        Route::get('show/{building:id}', [BuildingManagerController::class, 'show'])->name('admin.building.show');
        Route::get('create', [BuildingManagerController::class, 'create'])->name('admin.building.create');
        Route::get('edit/{building:id}', [BuildingManagerController::class, 'edit'])->name('admin.building.edit');
        Route::post('store', [BuildingManagerController::class, 'store'])->name('admin.building.store');
        Route::put('update', [BuildingManagerController::class, 'update'])->name('admin.building.update');
        Route::delete('delete/{building:id}', [BuildingManagerController::class, 'delete'])->name('admin.building.delete');

        Route::prefix('tang')->group(function(){
            Route::get('edit/{floor:id}', [FloorManagerController::class, 'edit'])->name('admin.floor.edit');
            Route::put('update', [FloorManagerController::class, 'update'])->name('admin.floor.update');
            Route::delete('delete/{floor:id}', [FloorManagerController::class, 'delete'])->name('admin.floor.delete');
        });
    });
    Route::prefix('phong')->group(function(){
        Route::get('show-quickly/{room:id}', [RoomManagerController::class, 'showQuickly'])->name('admin.room.show.quickly');
    });

    Route::prefix('phan-quyen')->group(function () {
        //
        Route::resource('roles', RoleManagerController::class);
        Route::resource('permissions', PermissionManagerController::class);
        Route::post('xu-ly-nhieu-role', [RoleManagerController::class,'multiple'])->name('roles.multiple');
        Route::post('xu-ly-nhieu-permission', [PermissionManagerController::class,'multiple'])->name('permissions.multiple');
    });
    Route::prefix('khach-hang')->group(function(){
        Route::get('/', [CustomerManagerController::class, 'index'])->name('admin.customer.index');
        Route::get('create', [CustomerManagerController::class, 'create'])->name('admin.customer.create');
        Route::post('store', [CustomerManagerController::class, 'store'])->name('admin.customer.store');

        Route::get('edit/{customer:id}', [CustomerManagerController::class, 'edit'])->name('admin.customer.edit');
        Route::put('update', [CustomerManagerController::class, 'update'])->name('admin.customer.update');
        Route::delete('delete/{customer:id}', [CustomerManagerController::class, 'delete'])->name('admin.customer.delete');
        Route::delete('xu-ly-nhieu-khach-hang', [CustomerManagerController::class,'multiple'])->name('admin.customer.multiple');

    });
    
});
