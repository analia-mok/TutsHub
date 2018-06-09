<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SearchController extends Controller
{
    /**
     * Executes a search based on category or text
     *
     * @param String s search terms
     * @param Array categories [default=[]]
     * @return View
     */
    public function search($s, $categories = []) {
        // TODO
        return view('Hello World');
    }
}
