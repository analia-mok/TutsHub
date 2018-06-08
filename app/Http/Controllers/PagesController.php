<?php
//
// Default Controller for Handling Page Redirection
//

namespace App\Http\Controllers;

use App\Page;
use App\News;

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

    $page = Page::where('slug', $slug)->first();

    if($page === null || ($page !== null && $page->status !== "PUBLISHED")){
      return abort(404);
    }

    // TODO: Switch on page slug
    // TODO: Determine what data to retrieve
    $posts = [];
    switch($slug) {
      case 'news':
        $posts = $this->getNews();
        break;
    }

    $data = [
      'page'  => $page,
      'posts' => $posts,
    ];

    return view('page')->with($data);
  }

  public function about(){
    // TODO
    return;
  }

  public function guides(){
    // TODO
    return;
  }

  public function tutorials(){
    // TODO
    return;
  }

  /**
   * Finds latest news objects ordered by updated_at field
   *
   * @return View
   */
  public function getNews(){
    $news = News::where('status', 'PUBLISHED')
                  ->orderBy('updated_at', 'desc')
                  ->paginate(12);
    return $news;
  }

}