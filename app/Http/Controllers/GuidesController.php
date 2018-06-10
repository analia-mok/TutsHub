<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Guide;

class GuidesController extends Controller
{
    public function index($slug){
        $guide = Guide::where('slug', $slug)->first();

        return view('pages.guide')->with('guide', $guide);
    }
}
