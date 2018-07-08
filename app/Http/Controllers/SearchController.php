<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class SearchController extends Controller
{
    /**
     * Executes a search based on category or text
     *
     * @param String s search terms
     * @param Array categories [default=[]]
     * @return View
     */
    public function search(Request $request)
    {
        $keyword = $request->keyword;
        $contentType = $request->contentType;
        $page = isset($request->page) ? $request->page : 1;
        $results = [];
        $message = 'Request Succeeded!';
        $POSTS_PER_PAGE = 12;

        switch ($contentType) {
            case 'news':
                $results = \App\News::search($keyword)
                                    ->paginate($POSTS_PER_PAGE);
                break;
            case 'tutorials':
                $results = \App\Tutorial::search($keyword)
                                    ->paginate($POSTS_PER_PAGE);
                break;
            case 'guides':
                $results = \App\Guide::search($keyword)
                                    ->paginate($POSTS_PER_PAGE);
                break;
            default:
                $message = 'Content Type Not Specified';
                break;
        }

        // Custom Url
        $results->withPath('/search?keyword='. $keyword . '&contentType=' . $contentType);
        $page_offset = ($page - 1) * $POSTS_PER_PAGE;

        $data = [
            'results'   => $results,
            'paged_results'  => $results->slice($page_offset, $POSTS_PER_PAGE)->all(),
            'slug_base' => $contentType,
        ];
        $htmlResults = view('partials.post')->with($data)->render();
        return response()->json([
            'message' => $message,
            'html' => $htmlResults
        ]);
    }
}
