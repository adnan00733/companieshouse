<?php

namespace App\Models\Mx;

use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    protected $connection = 'mysql_mx';
    protected $table = 'reports';
    public $timestamps = true;
    protected $fillable = ['name', 'info', 'order', 'default', 'status'];
}
