<?php

namespace App\Services;

use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\DB;
use App\Models\Sg\Company as SgCompany;
use App\Models\Mx\Company as MxCompany;

class CompanySearchService
{
    public function search(string $q, int $perPage = 15, int $page = 1): LengthAwarePaginator
    {
        $q = trim($q);

        $sgResults = SgCompany::search($q)->get();
        $mxResults = MxCompany::search($q)->get();
        $merged = $sgResults->concat($mxResults)->sortBy('name')->values();
        // Manual pagination
        $total = $merged->count();
        $items = $merged->forPage($page, $perPage)->values();

        return new LengthAwarePaginator(
            $items,
            $total,
            $perPage,
            $page,
            ['path' => url()->current(), 'query' => request()->query()]
        );
    }
}
