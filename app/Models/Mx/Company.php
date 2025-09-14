<?php

namespace App\Models\Mx;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $connection = 'mysql_mx';
    protected $table = 'companies';
    public $timestamps = true;
    protected $fillable = ['state_id', 'slug', 'name', 'brand_name', 'address'];

    public function state()
    {
        return $this->belongsTo(State::class, 'state_id');
    }
}
