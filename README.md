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
8. `php artisan serve`

## How it works
- `/` search page
- `/company/{country}/{id}` company details
- Cart stored in session; mixed-country reports allowed

## Scalability notes
- For millions of companies, integrate Laravel Scout + Meilisearch / Elasticsearch.

## Hosting
- Deployed on infinityfree.com
