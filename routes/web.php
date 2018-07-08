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

// TODO: Insert More Specific Routes Here
Route::get('/tutorials/{slug}', 'TutorialsController@index');
Route::get('/guides/{slug}', 'GuidesController@index');
Route::get('/news/{slug}', 'NewsController@index');
Route::get('/search', 'SearchController@search');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

// Generic Route for base pages
Route::get('/', 'PagesController@index');
Route::get('/{slug}', 'PagesController@index');
