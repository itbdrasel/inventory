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

function getInvResourceRoute($controller, $array=''){

    for ($i=0; $i<count($array); $i++){
        $url =  $array[$i];
        if ($url=='index') {
            Route::match(['get', 'post'], '/', $controller.'@index')->name('');
        }elseif ($url=='store'){
            Route::post('/store', $controller.'@store')->name('.store');
        } elseif ($url=='create'){
            Route::get('/create', $controller.'@create')->name('.create');
        } elseif ($url=='edit'){
            Route::get('/{id}/edit', $controller.'@edit')->name('.edit');
        }elseif ($url=='update'){
            Route::post('/update', $controller.'@update')->name('.update');
        }elseif ($url=='show'){
            Route::get('/{id}', $controller.'@show')->name('.show');
        } elseif ($url=='delete'){
            Route::match(['get', 'post'], '/delete/{id}', $controller.'@destroy')->where(['id'=>'[0-9]+'])->name('.delete');
        }

    }
}


Route::group(['prefix' => 'inventory', 'as'=>'inventory.'], function()
{
    Route::group(['prefix' => 'categories', 'as'=>'categories'], function()
    {
        getInvResourceRoute('CategoriesController', ['index', 'store', 'create','edit','delete']);
    });

    Route::group(['prefix' => 'products', 'as'=>'products'], function()
    {
        getInvResourceRoute('ProductsController', ['index', 'store', 'create','edit','delete']);
    });
    Route::group(['prefix' => 'product-pr', 'as'=>'product_pr'], function()
    {
        getInvResourceRoute('ProductPrController', ['index', 'store', 'create','show','delete']);
        $controller = 'ProductPrController';
        Route::get('/product/{id}', $controller.'@product')->name('.product');
        Route::post('/product/store', $controller.'@productStore')->name('.product_store');
    });
});

