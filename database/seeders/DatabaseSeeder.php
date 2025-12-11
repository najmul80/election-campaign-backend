<?php

namespace Database\Seeders;

use App\Models\Blog;
use App\Models\Candidate;
use App\Models\Constituency;
use App\Models\Manifesto;
use App\Models\Program;
use App\Models\Setting;
use App\Models\Slider;
use App\Models\User;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;

class DatabaseSeeder extends Seeder
{
    use WithoutModelEvents;

    /**
     * Seed the application's database.
     */
    public function run(): void
    {
       $approvePermission = Permission::firstOrCreate(['name' => 'approve_content']);
        $backupPermission  = Permission::firstOrCreate(['name' => 'create-backup']);

        // Role
        $superAdminRole = Role::firstOrCreate(['name' => 'super_admin']);

        // Admin User
        $adminUser = User::updateOrCreate(
            ['email' => 'admin@example.com'],
            [
                'name'              => 'Admin',
                'password'          => bcrypt('password'),
                'email_verified_at' => now(),
            ]
        );

        $adminUser->assignRole($superAdminRole);
        $superAdminRole->givePermissionTo([$approvePermission, $backupPermission]);



        // ২. সেটিংস ডাটা
        Setting::create([
            'site_name' => 'দাড়িপাল্লা মার্কা',
            'contact_phone' => '০১৭০০-০০০০০০',
            'contact_email' => 'info@election.com',
            'contact_address' => 'সদর রোড, সিরাজগঞ্জ',
            'meta_description' => 'সিরাজগঞ্জ জেলা পরিষদ নির্বাচন ২০২৫ এর অফিসিয়াল পোর্টাল',
            'social_links' => [
                'facebook' => 'https://facebook.com',
                'youtube' => 'https://youtube.com',
            ],
        ]);

        // ৩. আসন তৈরি (Constituencies)
        $seats = [
            ['name' => 'সিরাজগঞ্জ-১', 'areas' => 'কাজিপুর ও সদরের একাংশ'],
            ['name' => 'সিরাজগঞ্জ-২', 'areas' => 'সদর ও কামারখন্দ'],
            ['name' => 'সিরাজগঞ্জ-৩', 'areas' => 'রায়গঞ্জ ও তাড়াশ'],
            ['name' => 'সিরাজগঞ্জ-৪', 'areas' => 'উল্লাপাড়া'],
            ['name' => 'সিরাজগঞ্জ-৫', 'areas' => 'বেলকুচি ও চৌহালী'],
            ['name' => 'সিরাজগঞ্জ-৬', 'areas' => 'শাহজাদপুর'],
        ];

        foreach ($seats as $seat) {
            Constituency::create($seat);
        }

        // ৪. প্রার্থী তৈরি (Candidates)
        // নোট: ছবিগুলো ডিফল্ট থাকবে, আপনি পরে অ্যাডমিন প্যানেল থেকে রিয়েল ছবি আপলোড দিবেন
        $candidates = [
            ['name' => 'জনাব আব্দুল করিম', 'des' => 'সাবেক এমপি', 'seat_id' => 1],
            ['name' => 'ডাঃ হাবিবে মিল্লাত', 'des' => 'বিশিষ্ট চিকিৎসক', 'seat_id' => 2],
            ['name' => 'অধ্যাপক আব্দুল আজিজ', 'des' => 'শিক্ষাবিদ', 'seat_id' => 3],
            ['name' => 'তানভীর ইমাম', 'des' => 'তরুণ রাজনীতিবিদ', 'seat_id' => 4],
            ['name' => 'আব্দুল মমিন মন্ডল', 'des' => 'শিল্পপতি', 'seat_id' => 5],
            ['name' => 'মেরিনা জাহান কবিতা', 'des' => 'সাহিত্যিক ও রাজনীতিবিদ', 'seat_id' => 6],
        ];

        foreach ($candidates as $c) {
            Candidate::create([
                'constituency_id' => $c['seat_id'],
                'name' => $c['name'],
                'designation' => $c['des'],
                'photo' => 'candidates/default.png',
                'biography' => '<p>তিনি দীর্ঘদিন ধরে এলাকার মানুষের সেবায় নিয়োজিত আছেন। শিক্ষা ও স্বাস্থ্যের উন্নয়নে তিনি বিশেষ ভূমিকা রেখেছেন।</p>',
            ]);
        }

        // ৫. নিউজ বা ব্লগ (Blogs)
        $newsTitles = [
            'বিশাল জনসমুদ্রে প্রার্থীর ভাষণ',
            'নির্বাচনী ইশতেহার ঘোষণা করা হলো',
            'তরুণ ভোটারদের ব্যাপক উপস্থিতি লক্ষ্য করা যাচ্ছে',
            'শীত উপেক্ষা করে প্রচারণায় ব্যস্ত প্রার্থীরা',
            'শান্তিপূর্ণ নির্বাচনের প্রতিশ্রুতি দিলেন ডিসি',
        ];

        foreach ($newsTitles as $title) {
            Blog::create([
                'title' => $title,
                'slug' => Str::slug($title).'-'.rand(1, 1000),
                'content' => '<p>আসন্ন নির্বাচনকে সামনে রেখে সিরাজগঞ্জের রাজনীতি এখন তুঙ্গে। প্রতিটি আসনেই চলছে ব্যাপক প্রচারণা। ভোটারদের দ্বারে দ্বারে যাচ্ছেন প্রার্থীরা।</p>',
                'author' => 'ডেস্ক রিপোর্ট',
                'is_published' => true,
                'created_at' => now()->subDays(rand(1, 10)),
            ]);
        }

        // ৬. ইশতেহার (Manifestos)
        $promises = [
            'প্রতিটি গ্রামে বিদ্যুৎ নিশ্চিতকরণ',
            'বেকার যুবকদের কর্মসংস্থান',
            'আধুনিক স্বাস্থ্য কমপ্লেক্স নির্মাণ',
            'রাস্তাঘাট পাকা করা',
            'নারী শিক্ষা ও নিরাপত্তা জোরদার',
        ];

        foreach ($promises as $key => $promise) {
            Manifesto::create([
                'title' => $promise,
                'description' => 'আমরা নির্বাচিত হলে অগ্রাধিকার ভিত্তিতে এই প্রকল্পটি বাস্তবায়ন করবো। এর জন্য প্রয়োজনীয় বাজেট বরাদ্দ রাখা হবে।',
                'serial_no' => $key + 1,
            ]);
        }

        // ৭. স্লাইডার (Sliders)
        Slider::create([
            'title' => 'বিসমিল্লাহির রাহমানির রাহিম',
            'subtitle' => 'উন্নয়ন ও অগ্রগতির মার্কা - দাড়িপাল্লা',
            'button_text' => 'আমাদের ইশতেহার',
            'image' => 'sliders/default.png',
            'is_active' => true,
        ]);

        Slider::create([
            'title' => 'আপনার ভোট নিশ্চিত করুন',
            'subtitle' => 'যোগ্য প্রার্থীকে ভোট দিন, দেশ গড়ুন',
            'button_text' => 'যোগাযোগ করুন',
            'image' => 'sliders/default.png',
            'is_active' => true,
        ]);

        // ৮. প্রোগ্রাম (Programs)
        Program::create([
            'title' => 'সিরাজগঞ্জ সদর জনসভা',
            'location' => 'শহীদ মিনার চত্বর',
            'date_time' => now()->addDays(5),
            'description' => 'প্রধান অতিথি হিসেবে উপস্থিত থাকবেন কেন্দ্রীয় নেতৃবৃন্দ।',
        ]);
    }
}
