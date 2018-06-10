<?php
//
// Default Controller for Handling Page Redirection
//

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

class PagesController extends Controller {

  /**
   * Retrieves and returns a page object and view
   *
   * Generalized method to help account for pages created in the future
   * @param string $slug
   * @return void
   */
  public function index($slug = ""){
    
    if(empty($slug)) {
      // Empty slug indicated just a slug of slash
      // Direct to home page
      $slug = 'home';
    }

    $page = \App\Page::where('slug', $slug)->first();

    if($page === null || ($page !== null && $page->status !== "PUBLISHED")){
      return abort(404);
    }

    // TODO: Switch on page slug
    // TODO: Determine what data to retrieve
    $posts = [];
    $view = 'pages.page'; // Default view
    
    switch($slug) {
      case 'news':
        // $posts = $this->getNews();
        // break;
      case 'guides':
        // $posts = $this->getGuides();
        // break;
      case 'tutorials':
        // $posts = $this->getTutorials();
        $posts = $this->getModelData($slug);
        break;
      case 'home':
        $view = 'pages.home';
        break;
      case 'about':
        $view = 'pages.about';
        break;
    }

    $data = [
      'page'  => $page,
      'posts' => $posts,
    ];

    return view($view)->with($data);
  }

  /**
   * Retrieves all data related to the about page
   *
   * @return Array $data - All variables expected by the about page view
   */
  public function getAbouPageData(){
    // TODO
    return [];
  }

  /**
   * Generalized method for grabbing required model data
   *
   * @param $string $model_table model's corresponding table name
   * @return Array $data
   */
  public function getModelData($model_table){
    $data = DB::table($model_table)->where('status', 'PUBLISHED')
      ->orderBy('updated_at', 'desc')
      ->paginate(12);

    return $data;
  }

}