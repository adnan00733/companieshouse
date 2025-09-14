# Centralized Company Search & Reports

## Overview
Laravel app that provides unified search across Singapore and Mexico company databases, company details, and a cart for purchasing reports.

## Demo
[https://companieshouse.infinityfreeapp.com/](https://companieshouse.infinityfreeapp.com/)
## Requirements
- PHP 8.1+
- Composer
- MySQL
- Node (for assets)
- .env configured with DB_SG_* and DB_MX_* connections

## Setup
1. Clone repo
2. `cp .env.example .env` and set DB env values for both DBs
3. `composer install`
4. `npm install`
5. `npm run build`
6. `php artisan key:generate`
7. Populate the two databases with tables and sample data.
## Database `companies_house_mx` changes.
8. `ALTER TABLE companies ADD INDEX idx_companies_name (name);`
9. `ALTER TABLE reports ADD INDEX idx_reports_status (status);`
10. `ALTER TABLE report_state ADD INDEX idx_reports_state_id (state_id);`

## Database `companies_house_sg` changes.
11. `ALTER TABLE companies ADD UNIQUE INDEX idx_companies_slug (slug),ADD INDEX idx_companies_name (name);`
12. `ALTER TABLE reports ADD INDEX idx_reports_is_active (is_active);`
13.  Go to this [link](https://github.com/meilisearch/meilisearch/releases) and download meilisearch as per your OS requirement. I am using Windows and downloaded meilisearch-windows-amd64.exe file.
14. After download `meilisearch-windows-amd64.exe` file. execute the `meilisearch-windows-amd64.exe` file. You will get MEILISEARCH_KEY Master key. copy this key and paste in .env file. You will also get the `listening on: 127.0.0.1:7700` copy this ip and port and paste in .env file. e.g MEILISEARCH_HOST=http://127.0.0.1:7700. Keep exe file runing.
15. (optional) execute `php artisan db:seed --class=CompanySeeder`. this will add 1M records to each db company.
16. Import Companies into meilisearch by executing this command. `php artisan scout:import "App\Models\Mx\Company"` and `php artisan scout:import "App\Models\Sg\Company`
17. `php artisan serve`





## How it works
- `/` search page
- `/company/{country}/{id}` company details
- Cart stored in session; mixed-country reports allowed

## Scalability notes
- For millions of companies, integrate Laravel Scout + Meilisearch / Elasticsearch.

## Hosting
- Deployed on infinityfree.com
