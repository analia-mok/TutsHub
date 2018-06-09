<?php

namespace App\Widgets;

use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

class TutorialsDimmer extends AbstractWidget
{
    /**
     * The configuration array.
     *
     * @var array
     */
    protected $config = [];

    /**
     * Treat this method as a controller action.
     * Return view() or other content to display.
     */
    public function run()
    {
        $count = \App\Tutorial::count();
        $string = ($count != 1) ? 'Tutorials' : 'Tutorial';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-news',
            'title'  => "{$count} {$string}",
            'text'   => "You have {$count} {$string} in your database.",
            'button' => [
                'text' => 'View all tutorials',
                'link' => route('voyager.tutorials.index'),
            ],
            'image' => '/images/bookstack.png',
        ]));
    }
}
