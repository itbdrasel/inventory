<?php

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


 function resourceRoute($controller, $show=false){
     Route::get( '/create', ['as' => '.create', 'uses' => $controller.'@create']);
     Route::get( '/{id}/edit', ['as' => '.edit', 'uses' => $controller.'@edit']);
     Route::match(['get', 'post'], '/', [ 'as' => '', 'uses' => $controller.'@index']);
     Route::post( '/store', ['as' => '.store', 'uses' => $controller.'@store']);
     Route::match(['get', 'post'], '/delete/{id}', ['as' => '.delete', 'uses' => $controller.'@destroy']);
     if ($show){
         Route::get( 'show/{id}', ['as' => '.show', 'uses' => $controller.'@show']);
     }
}

Route::group(['prefix' => 'inventory', 'as'=>'inventory.'], function()
{
    Route::group(['prefix' => 'categories', 'as'=>'categories'], function()
    {
        resourceRoute('CategoriesController');
    });

    Route::group(['prefix' => 'products', 'as'=>'products'], function()
    {
        resourceRoute('ProductsController', true);
    });
    Route::group(['prefix' => 'product-pr', 'as'=>'product_pr'], function()
    {
        resourceRoute('ProductPrController');
    });
});

