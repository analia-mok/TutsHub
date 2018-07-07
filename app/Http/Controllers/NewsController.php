<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\News;

class NewsController extends Controller
{
    public function index($slug) {
        $news = News::where('slug', $slug)->first();

        // TODO: Remove. Just a test
        $searchedNews = News::search('lorem')->get();

        return view('pages.news', [
            'news' => $news,
            'searchedNews'  => $searchedNews,
        ]);
    }

}
