<?php

namespace App\Models;

use App\Traits\AutoApproves;
use Illuminate\Database\Eloquent\Model;
use Spatie\Activitylog\Traits\LogsActivity; // ১. ইম্পোর্ট
use Spatie\Activitylog\LogOptions;

class Blog extends Model
{
    use LogsActivity, AutoApproves; 
    
    protected $guarded = [];

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['title', 'slug', 'content','author','is_published']) // কোন ফিল্ডগুলোর চেঞ্জ ট্র্যাক করবেন
            ->logOnlyDirty() // শুধু যা পরিবর্তন হয়েছে তাই লগ করবে
            ->dontSubmitEmptyLogs();
    }

    public function comments()
    {
        return $this->hasMany(Comment::class)->where('is_approved', true)->latest();
    }
}
