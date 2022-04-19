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
    
});
