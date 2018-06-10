<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;

class NewsController extends Controller
{
    public function index($slug) {
        $news = News::where('slug', $slug)->first();

        return view('pages.news')->with('news', $news);
    }
}
