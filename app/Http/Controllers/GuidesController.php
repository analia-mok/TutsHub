<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Guide;

class GuidesController extends Controller
{
    public function index($slug)
    {
        $guide = Guide::where('slug', $slug)->first();

        if ($guide) {
            $tutorials = \App\Tutorial::where('guide_id', $guide->id)
                                        ->orderBy('guide_order')
                                        ->get();
        }

        return view('pages.guide', [
            'guide' => $guide,
            'tutorials' => $tutorials,
        ]);
    }
}
