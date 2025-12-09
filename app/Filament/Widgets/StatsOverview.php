<?php

namespace App\Filament\Widgets;

use App\Models\Blog;
use App\Models\Candidate;
use App\Models\Volunteer;
use Filament\Widgets\StatsOverviewWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class StatsOverview extends StatsOverviewWidget
{
    protected function getStats(): array
    {
        return [
            Stat::make('মোট প্রার্থী', Candidate::count())
                ->description('৬টি আসনের মোট প্রার্থী')
                ->descriptionIcon('heroicon-m-users')
                ->color('success') // সবুজ রঙ
                ->chart([7, 2, 10, 3, 15, 4, 17]), // ডামি চার্ট ডিজাইন

            Stat::make('নিবন্ধিত ভলান্টিয়ার', Volunteer::count())
                ->description('স্বেচ্ছাসেবক দল')
                ->descriptionIcon('heroicon-m-heart')
                ->color('danger') // লাল রঙ
                ->chart([1, 5, 10, 20, 30, 40]),

            Stat::make('প্রকাশিত সংবাদ', Blog::where('is_published', true)->count())
                ->description('সর্বশেষ আপডেট')
                ->descriptionIcon('heroicon-m-newspaper')
                ->color('primary'),
        ];
    }
}
