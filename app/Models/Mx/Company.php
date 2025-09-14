<?php

namespace App\Models\Mx;

use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;

class Company extends Model
{
    use Searchable;
    protected $connection = 'mysql_mx';
    protected $table = 'companies';
    public $timestamps = true;
    protected $fillable = ['state_id', 'slug', 'name', 'brand_name', 'address'];

    protected $appends = ['country'];

    public function getCountryAttribute()
    {
        return 'MX';
    }

    public function state()
    {
        return $this->belongsTo(State::class, 'state_id');
    }

    public function toSearchableArray()
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'slug' => $this->slug,
            'address' => $this->address,
            'country' => 'MX',
        ];
    }

    public function searchableAs()
    {
        return 'companies_mx';
    }
}
