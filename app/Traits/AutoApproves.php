<?php

namespace App\Traits;

use Illuminate\Support\Facades\Auth;

trait AutoApproves
{
    protected static function bootAutoApproves()
    {
        static::creating(function ($model) {
            $user = Auth::user();

            // লজিক: যদি ইউজার লগইন করা থাকে এবং (সে সুপার অ্যাডমিন হয় অথবা তার অ্যাপ্রুভ করার ক্ষমতা থাকে)
            if ($user && ($user->hasRole('super_admin') || $user->can('approve_content'))) {
                $model->is_approved = true;
            } else {
                // সাধারণ ইউজার বা পাবলিক সাবমিশন হলে পেন্ডিং থাকবে
                $model->is_approved = false;
            }
        });
    }
}