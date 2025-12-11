<?php

namespace App\Models;

use App\Traits\AutoApproves;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Spatie\Activitylog\Traits\LogsActivity; 
use Spatie\Activitylog\LogOptions;

class Candidate extends Model
{
    use LogsActivity, AutoApproves;
    protected $fillable = [
        'constituency_id',
        'name',
        'photo',
        'symbol_photo',
        'designation',
        'facebook_url',
        'biography',
        'intro_video_link'
    ];

    protected $casts = [
        'biography' => 'array',
    ];

    public function constituency(): BelongsTo
    {
        return $this->belongsTo(Constituency::class);
    }

    public function getActivitylogOptions(): LogOptions
    {
        return LogOptions::defaults()
            ->logOnly(['name', 'designation', 'constituency_id','biography']) 
            ->logOnlyDirty() 
            ->dontSubmitEmptyLogs();
    }
}
 