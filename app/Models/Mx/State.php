<?php
namespace App\Models\Mx;

use Illuminate\Database\Eloquent\Model;

class State extends Model
{
    protected $connection = 'mysql_mx';
    protected $table = 'states';
    public $timestamps = false;
    protected $fillable = ['name'];
}
