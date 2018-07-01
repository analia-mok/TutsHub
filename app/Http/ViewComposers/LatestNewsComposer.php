<?php

namespace App\Http\ViewComposers;

use Illuminate\View\View;
use App\Http\Repositories\NewsRepository;

class LatestNewsComposer
{
    /**
     * News repository instance
     *
     * @var NewsRepository
     */
    protected $news;

    public function __construct(NewsRepository $news)
    {
        $this->news = $news;
    }

    public function compose(View $view)
    {
        $view->with('latest_news', $this->news->getLatest());
    }
}
