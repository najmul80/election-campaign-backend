<?php

namespace App\Models;

use App\Traits\AutoApproves;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity; // ১. ইম্পোর্ট
use Spatie\Activitylog\LogOptions;

class Quote extends Model
{
    use LogsActivity, AutoApproves;
    
    protected $guarded = [];

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['quote', 'name','designation']) // কোন ফিল্ডগুলোর চেঞ্জ ট্র্যাক করবেন
            ->logOnlyDirty() // শুধু যা পরিবর্তন হয়েছে তাই লগ করবে
            ->dontSubmitEmptyLogs();
    }
}
