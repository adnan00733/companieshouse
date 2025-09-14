<?php
namespace App\Models\Mx;

use Illuminate\Database\Eloquent\Model;

class ReportState extends Model
{
    protected $connection = 'mysql_mx';
    protected $table = 'report_state';
    public $timestamps = false;
    protected $fillable = ['state_id','report_id','amount'];

    public function report()
    {
        return $this->belongsTo(Report::class, 'report_id');
    }
}
