<?php

namespace App\Models;

use App\Traits\AutoApproves;
use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    use AutoApproves;
    
    protected $guarded = [];
}
