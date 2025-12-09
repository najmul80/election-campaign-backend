<?php

use App\Http\Controllers\Api\HomeController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

// পাবলিক API (লগইন করা ছাড়াই দেখা যাবে)
Route::get('/home-data', [HomeController::class, 'index']); // হোমপেজ
Route::get('/gallery', [HomeController::class, 'allGallery']); // গ্যালারী পেজ
Route::get('/news', [HomeController::class, 'allNews']); // নিউজ পেজ
Route::get('/news/{slug}', [HomeController::class, 'singleNews']); // নিউজের বিস্তারিত
Route::get('/candidate/{id}', [HomeController::class, 'singleCandidate']);
Route::get('/videos', [HomeController::class, 'allVideos']);
Route::get('/program/{id}', [HomeController::class, 'singleProgram']);
// ফর্ম সাবমিশন (POST)
Route::post('/volunteer-submit', [HomeController::class, 'storeVolunteer']);
Route::post('/contact-submit', [HomeController::class, 'storeContact']);
