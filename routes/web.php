<?php

use Illuminate\Support\Facades\Route;

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

/***** Author Controller namespace ***/
use App\Http\Controllers\ChangePasswordController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\BaseSettingController;
use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\SystemController;


/** Auth */
Route::group(['prefix' => 'author'], function (){
    Route::get('/login',[LoginController::class,'login'])->name('author.login');
    Route::get('/',[LoginController::class,'login'])->name('author.login');
    Route::post('login',[LoginController::class,'login_user'])->name('author.login.user');
    Route::get('logout',[LoginController::class,'logout'])->name('author.logout');

    // Forgot Password
    Route::get('forgot-password',[LoginController::class,'ForgotPassword'])->name('author.forgot-password');
    Route::post('forgot-password',[LoginController::class,'ForgotPasswordStore'])->name('author.forgot-password');
    Route::get('reset-password/{code}',[LoginController::class,'resetPassword'])->name('author.reset-password');
    Route::post('reset-password/{code}',[LoginController::class,'resetPasswordStore'])->name('author.reset-password');

    Route::get('dashboard',[SystemController::class,'dashboard'])->name('dashboard');
    Route::middleware(['admin'])->group(function () {

        // Users Section route
        Route::match(['get', 'post'],'user',[UsersController::class,'index'] )->name('author.users');
        Route::get('user/profile/{id}',[UsersController::class,'Profile'] )->name('author.user_profile');
        Route::get('user/create',[RegisterController::class,'create'])->name('author.user_create');
        Route::get('user/{id}/edit',[RegisterController::class,'edit'] )->name('author.user_edit');
        Route::post('user/store',[RegisterController::class,'store'])->name('author.user_store');
        Route::post('user/update',[RegisterController::class,'update'] )->name('author.user_update');
        Route::match(['get', 'post'], 'user/delete/{id}',[RegisterController::class,'destroy'] )->name('author.user_delete');
        Route::get('change-password', [ChangePasswordController::class,'changePassword'])->name('author.change_password');
        Route::post('change-password', [ChangePasswordController::class,'changePasswordStore'])->name('author.change_password_store');


        // Users role Section route
        Route::get('roles', [PermissionController::class,'roles'])->name('author.roles');
        Route::get('role-create', [PermissionController::class,'roleCreate'])->name('author.role_create');
        Route::post('role-store', [PermissionController::class,'roleStore'])->name('author.role_store');


        // permissions section route
        Route::match(['get', 'post'], 'permissions', [PermissionController::class,'permissions'])->name('author.permission');
        Route::post('permissions/assign', [PermissionController::class,'assign'])->name('author.assign_permission');
        Route::post('user_permission', [PermissionController::class,'userPermission'])->name('author.user_permission');
        Route::match(['get', 'post'],'permissions/route-register', [PermissionController::class,'routeRegister'])->name('author.permission_register');
        Route::match(['get', 'post'],'permissions/route-register-edit', [PermissionController::class,'routeRegisterEdit'])->name('author.permission_edit');
        Route::get('permissions/route_remove', [PermissionController::class,'routeRemove'])->name('author.ajax.permission_remove');
        Route::get('permissions/route_check', [PermissionController::class,'routeCheck'])->name('author.ajax.permission_check');


// Settings section route
        Route::get('base_setting', [BaseSettingController::class,'index'])->name('base_setting');
        Route::post('base_setting/store', [BaseSettingController::class,'store'])->name('base_setting.store');
        Route::match(['get', 'post'], '/base_setting/logo', [BaseSettingController::class,'logo'])->name('base_setting.logo');

    });

});




