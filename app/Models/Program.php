<?php

namespace App\Models;

use App\Traits\AutoApproves;
use Illuminate\Database\Eloquent\Model;

class Program extends Model
{
    use AutoApproves;
    
    protected $guarded = [];

    protected $casts = [
        'date_time' => 'datetime',
    ];

    public function candidate()
    {
        return $this->belongsTo(Candidate::class);
    }
}
