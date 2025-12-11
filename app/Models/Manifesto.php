<?php

namespace App\Models;

use App\Traits\AutoApproves;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity; // ১. ইম্পোর্ট
use Spatie\Activitylog\LogOptions;

class Manifesto extends Model
{
    use LogsActivity, AutoApproves; 
    
    protected $guarded = [];

    public function candidate()
    {
        return $this->belongsTo(Candidate::class);
    }
    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['title', 'description', 'icon','serial_no']) // কোন ফিল্ডগুলোর চেঞ্জ ট্র্যাক করবেন
            ->logOnlyDirty() // শুধু যা পরিবর্তন হয়েছে তাই লগ করবে
            ->dontSubmitEmptyLogs();
    }
}
