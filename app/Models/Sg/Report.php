<?php
namespace App\Models\Sg;

use Illuminate\Database\Eloquent\Model;

class Report extends Model
{
    protected $connection = 'mysql_sg';
    protected $table = 'reports';
    public $timestamps = false;
    protected $fillable = ['name', 'amount', 'info', 'is_active', 'default', 'order'];
}
