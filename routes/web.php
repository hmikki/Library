<?php

use App\Models\Post;
use App\Models\Service;
use App\Models\Setting;
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

Route::get('/', 'HomeController@index')->name('home');
Route::post('/ticket/store', 'HomeController@store_ticket')->name('ticket.store');
Route::get('/privacy', 'HomeController@privacy')->name('privacy');
Route::get('/about', 'HomeController@about')->name('about');
Route::get('/contact', 'HomeController@contact')->name('contact');
Route::get('/collages', 'HomeController@collages')->name('collages');
Route::get('/books', 'HomeController@books')->name('books');
Route::get('/collages/{id}/show', 'HomeController@collages_show')->name('collages.show');
Route::get('/categories', 'HomeController@categories')->name('categories');
Route::get('/books/{id}/show', 'HomeController@books_categories')->name('books.show');
Route::get('/book/{id}/show', 'HomeController@show_book')->name('book');
Route::get('/attachment/{id}/show', 'HomeController@show_attachment')->name('attachment');
Route::get('/attachments', 'HomeController@attachments')->name('attachments');
Route::get('/terms', 'HomeController@terms')->name('terms');
Route::get('user/verify', 'HomeController@verify')->name('user.verify');
Route::post('login', 'AuthController@login')->name('login');
Route::post('register', 'AuthController@register')->name('register');
Route::post('logout', 'AuthController@logout')->name('logout');
