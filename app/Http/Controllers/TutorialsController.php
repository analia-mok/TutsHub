<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Tutorial;

class TutorialsController extends Controller
{

  /**
   * Directs to single tutorial page
   *
   * @param String $slug
   * @return View
   */
  public function index($slug){

    $tutorial = Tutorial::where('slug', $slug)->first();

    // TODO: Define/create links to next or previous tutorial if this 
    // tutorial is part of a guide
      
    return view('pages.tutorial')->with('tutorial', $tutorial);
  }

}
