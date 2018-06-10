<?php
//
// Default Controller for Handling Page Redirection
//

namespace App\Http\Controllers;

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
        $posts = $this->getNews();
        break;
      case 'guides':
        $posts = $this->getGuides();
        break;
      case 'tutorials':
        $posts = $this->getTutorials();
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
   * Retrieves all published guides
   *
   * @return Array $guides published guide objects
   */
  public function getGuides(){
    $guides = \App\Guide::where('status', 'PUBLISHED')
                        ->orderBy('updated_at', 'desc')
                        ->paginate(12);
    return $guides;
  }

  /**
   * Retrieves all published tutorials
   *
   * @return Array $tutorials publish tutorial objects
   */
  public function getTutorials(){
    $tutorials = \App\Tutorial::where('status', 'PUBLISHED')
                        ->orderBy('updated_at', 'desc')
                        ->paginate(12);

    return $tutorials;
  }

  /**
   * Finds latest news objects ordered by updated_at field
   *
   * @return View
   */
  public function getNews(){
    $news = \App\News::where('status', 'PUBLISHED')
                  ->orderBy('updated_at', 'desc')
                  ->paginate(12);
    return $news;
  }

}