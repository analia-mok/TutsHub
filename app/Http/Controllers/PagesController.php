<?php
//
// Default Controller for Handling Page Redirection
//

namespace App\Http\Controllers;

use App\Page;

class PagesController extends Controller {

  public function index($slug){
    $page = Page::where('slug', $slug)->first();
    return view('page')->with('page', $page);
  }

}