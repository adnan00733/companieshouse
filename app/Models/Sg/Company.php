<?php

namespace App\Models\Sg;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Laravel\Scout\Searchable;

class Company extends Model
{
    use HasFactory, Searchable;
    protected $connection = 'mysql_sg';
    protected $table = 'companies';
    public $timestamps = true;
    protected $fillable = ['slug', 'name', 'former_names', 'registration_number', 'address'];
    protected $appends = ['country'];

    public function getCountryAttribute()
    {
        return 'SG';
    }

    public function toSearchableArray()
    {
        return [
            // 'id' => $this->id,
            'name' => $this->name,
            // 'slug' => $this->slug,
            // 'registration_number' => $this->registration_number,
            // 'address' => $this->address,
            'country' => 'SG',
        ];
    }

    public function searchableAs()
    {
        return 'companies_sg';
    }
}
