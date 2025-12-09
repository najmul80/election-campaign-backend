<?php

namespace App\Filament\Pages;

use BackedEnum;
use UnitEnum;
use Filament\Pages\Page;
use Illuminate\Support\Facades\Artisan;
use Filament\Notifications\Notification;

class SystemCleaner extends Page
{
    // navigation properties stay static (they are declared static in parent)
    protected static string|BackedEnum|null $navigationIcon = 'heroicon-o-cpu-chip';

    protected static ?string $navigationLabel = 'সিস্টেম ক্লিনার';

    protected static ?string $title = 'সিস্টেম ও ক্যাশ ম্যানেজমেন্ট';

    protected static string|UnitEnum|null $navigationGroup = 'System';

    // ✅ IMPORTANT: $view in Filament\Pages\Page is non-static, so match that
    protected string $view = 'filament.pages.system-cleaner';

    public function clearAll()
    {
        Artisan::call('optimize:clear');
        $this->sendSuccess('সমস্ত ক্যাশ সফলভাবে পরিষ্কার করা হয়েছে!');
    }

    public function clearConfig()
    {
        Artisan::call('config:clear');
        $this->sendSuccess('কনফিগারেশন ক্যাশ ক্লিয়ার করা হয়েছে।');
    }

    public function clearRoute()
    {
        Artisan::call('route:clear');
        $this->sendSuccess('রাউট ক্যাশ ক্লিয়ার করা হয়েছে।');
    }

    public function clearView()
    {
        Artisan::call('view:clear');
        $this->sendSuccess('ভিউ ক্যাশ ক্লিয়ার করা হয়েছে।');
    }

    public function storageLink()
    {
        Artisan::call('storage:link');
        $this->sendSuccess('স্টোরেজ লিংক নতুন করে তৈরি করা হয়েছে।');
    }

    private function sendSuccess(string $message): void
    {
        Notification::make()
            ->title('সফল হয়েছে')
            ->body($message)
            ->success()
            ->send();
    }

    // ১. সাইট বন্ধ করার ফাংশন
    public function maintenanceDown()
    {
        // সিক্রেট টোকেন সহ ডাউন করা হচ্ছে যাতে অ্যাডমিন এক্সেস করতে পারে
        Artisan::call('down', ['--secret' => 'admin-access']); 
        $this->sendSuccess('সাইট মেইনটেন্যান্স মোডে নেওয়া হয়েছে! ভিজিটররা এখন সাইট দেখতে পাবে না।');
    }

    // ২. সাইট চালু করার ফাংশন
    public function maintenanceUp()
    {
        Artisan::call('up');
        $this->sendSuccess('সাইট আবার লাইভ করা হয়েছে! সবাই এখন দেখতে পাবে।');
    }
}
