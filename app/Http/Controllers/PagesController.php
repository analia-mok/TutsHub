<?php
//
// Default Controller for Handling Page Redirection
//

namespace App\Http\Controllers;

use App\Page;

class PagesController extends Controller {

  public function index($slug){
    $page = Page::where('slug', $slug)->first();

    if($page === null){
      return abort(404);
    }

    return view('page')->with('page', $page);
  }

}