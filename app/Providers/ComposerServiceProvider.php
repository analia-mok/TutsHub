<?php

namespace App\Providers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class ComposerServiceProvider extends ServiceProvider
{
    /**
     * Register View Composers
     *
     * @return void
     */
    public function boot()
    {
        View::composer('partials.latest-news', 'App\Http\ViewComposers\LatestNewsComposer');
    }

    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
