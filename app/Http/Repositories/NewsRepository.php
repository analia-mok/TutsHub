<?php

namespace App\Http\Repositories;

use Illuminate\Database\Eloquent\Model;
use App\News;

class NewsRepository
{
    /**
     * Retrieves the latest news posts
     *
     * @param integer $total Maximum number of posts to retrieve
     * @return Array of News
     */
    public function getLatest($total = 4)
    {
        return News::orderBy('published_date', 'desc')
                    ->take($total)
                    ->get();
    }
}
