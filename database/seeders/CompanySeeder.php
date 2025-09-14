<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Sg\Company as SgCompany;
use App\Models\Mx\Company as MxCompany;

class CompanySeeder extends Seeder
{
    public function run(): void
    {
        $totalPerDb = 1_000_000;  
        $batchSize = 10_000; 
        SgCompany::unsetEventDispatcher();
        MxCompany::unsetEventDispatcher();

        // Seed SG companies
        for ($i = 0; $i < $totalPerDb / $batchSize; $i++) {
            SgCompany::withoutSyncingToSearch(function () use ($batchSize) {
                SgCompany::factory()->count($batchSize)->create();
            });
        }

        // Seed MX companies
        for ($i = 0; $i < $totalPerDb / $batchSize; $i++) {
            MxCompany::withoutSyncingToSearch(function () use ($batchSize) {
                MxCompany::factory()->count($batchSize)->create();
            });
        }
    }
}
