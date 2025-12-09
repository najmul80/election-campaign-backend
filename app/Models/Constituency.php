<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity; 
use Spatie\Activitylog\LogOptions;

class Constituency extends Model
{
    use LogsActivity;
    
    protected $fillable = [
        'name',
        'areas',
        'total_voters'
    ];

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['name', 'areas', 'total_voters']) // কোন ফিল্ডগুলোর চেঞ্জ ট্র্যাক করবেন
            ->logOnlyDirty() // শুধু যা পরিবর্তন হয়েছে তাই লগ করবে
            ->dontSubmitEmptyLogs();
    }
}
