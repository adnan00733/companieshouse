<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Sg\Company as SgCompany;
use App\Models\Sg\Report as SgReport;
use App\Models\Mx\Company as MxCompany;
use App\Models\Mx\Report as MxReport;
use App\Models\Mx\ReportState;

class CompanyController extends Controller
{
    public function show($country, $id)
    {
        if (strtoupper($country) === 'SG') {
            $company = SgCompany::findOrFail($id);
            $reports = SgReport::where(["is_active" => 1])->get()->map(function ($r) {
                return [
                    'id' => $r->id,
                    'name' => $r->name,
                    'code' => $r->code,
                    'price' => $r->amount ?? 0,
                    'country' => 'SG'
                ];
            });
        } elseif (strtoupper($country) === 'MX') {
            $company = MxCompany::findOrFail($id);
            $stateId = $company->state_id;

            // Reports are defined in report_state
            $reportStates = ReportState::with('report')
                ->where(['state_id' => $stateId])
                ->whereHas('report', function ($query) {
                    $query->where('status', 1);
                })
                ->get();

            $reports = $reportStates->map(function ($rs) {
                return [
                    'id' => $rs->report_id,
                    'name' => $rs->report->name,
                    'code' => $rs->report->code ?? null,
                    'price' => $rs->amount,
                    'country' => 'MX'
                ];
            });
        } else {
            abort(404);
        }

        return view('company', compact('company', 'reports', 'country'));
    }
}
