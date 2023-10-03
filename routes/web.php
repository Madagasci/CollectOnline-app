<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\DistanceController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('login');
});

Route::get('/RedirectLogin', [DistanceController::class, 'RedirectLogin']);

Route::get('/RedirectHome', [UserController::class, 'RedirectHome']);

Route::post('/SaveDistance', [DistanceController::class, 'SaveDistance']);

Route::post('/Register', [UserController::class, 'Register']);

Route::post('/Logout', [UserController::class, 'Logout']);

Route::post('/Login', [UserController::class, 'Login']);

Route::post('/ExportByDate', [DistanceController::class, 'ExportByDate']);
