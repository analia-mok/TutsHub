<?php

namespace App\Widgets;

use Arrilot\Widgets\AbstractWidget;
use Illuminate\Support\Str;
use TCG\Voyager\Facades\Voyager;

class GuidesDimmer extends AbstractWidget
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
        $count = \App\Guide::count();
        $string = ($count != 1) ? 'Guides' : 'Guide';

        return view('voyager::dimmer', array_merge($this->config, [
            'icon'   => 'voyager-list',
            'title'  => "{$count} {$string}",
            'text'   => "You have {$count} guides in your database.",
            'button' => [
                'text' => 'View all guides',
                'link' => route('voyager.guides.index'),
            ],
            'image' => '/images/fancybookshelf.png',
        ]));
    }
}
