<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\CompanySearchService;

class SearchController extends Controller
{
    protected $search;

    public function __construct(CompanySearchService $search)
    {
        $this->search = $search;
    }

    public function index(Request $request)
    {
        $q = $request->input('q', '');
        $page = $request->input('page', 1);
        $results = null;
        if ($q !== '') {
            $results = $this->search->search($q, 15, $page);
        } else {
            $results = collect();
        }
        return view('search', compact('q', 'results'));
    }
}
