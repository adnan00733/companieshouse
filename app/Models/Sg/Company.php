<?php
namespace App\Models\Sg;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $connection = 'mysql_sg';
    protected $table = 'companies';
    public $timestamps = true;
    protected $fillable = ['slug', 'name', 'former_names', 'registration_number', 'address'];
}
