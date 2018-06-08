<?php
//
// Default Controller for Handling Page Redirection
//

namespace App\Http\Controllers;

use App\Page;

class PagesController extends Controller {

  public function index($slug = ""){
    
    if(empty($slug)) {
      // Empty slug indicated just a slug of slash
      // Direct to home page
      $slug = 'home';
    }

    $page = Page::where('slug', $slug)->first();

    if($page === null || ($page !== null && $page->status !== "PUBLISHED")){
      return abort(404);
    }else if($page === "/"){
      return view('');
    }

    return view('page')->with('page', $page);
  }

}