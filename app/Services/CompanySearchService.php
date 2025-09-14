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

        $sgPage = SgCompany::search($q)->paginate($perPage, 'page', $page);
        $mxPage = MxCompany::search($q)->paginate($perPage, 'page', $page);

        // convert arrays into collections
        $sgItems = collect($sgPage->items());
        $mxItems = collect($mxPage->items());

        // merge
        $merged = $sgItems->concat($mxItems)->sortBy('name')->values();

        $total = $sgPage->total() + $mxPage->total();

        return new \Illuminate\Pagination\LengthAwarePaginator(
            $merged,
            $total,
            $perPage,
            $page,
            ['path' => url()->current(), 'query' => request()->query()]
        );
    }
}
