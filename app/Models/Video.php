<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity; // ১. ইম্পোর্ট
use Spatie\Activitylog\LogOptions;

class Video extends Model
{
    use LogsActivity; // ২. ট্রেইট ব্যবহার করুন
    protected $guarded = [];

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['title', 'youtube_code']) // কোন ফিল্ডগুলোর চেঞ্জ ট্র্যাক করবেন
            ->logOnlyDirty() // শুধু যা পরিবর্তন হয়েছে তাই লগ করবে
            ->dontSubmitEmptyLogs();
    }
}
