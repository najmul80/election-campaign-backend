<x-filament-panels::page>
    <div class="grid grid-cols-1 gap-5 md:grid-cols-2 lg:grid-cols-3">
        
        <!-- ১. অপ্টিমাইজ ক্লিয়ার (সবচেয়ে গুরুত্বপূর্ণ) -->
        <x-filament::section>
            <x-slot name="heading">
                🚀 সম্পূর্ণ সিস্টেম অপ্টিমাইজ
            </x-slot>
            <x-slot name="description">
                অ্যাপ্লিকেশনের স্পিড বাড়াতে এবং নতুন পরিবর্তন দেখতে এটি ব্যবহার করুন।
            </x-slot>

            <x-filament::button wire:click="clearAll" color="danger" class="w-full">
                সব ক্যাশ ক্লিয়ার করুন
            </x-filament::button>
        </x-filament::section>

        <!-- ২. কনফিগ ক্লিয়ার -->
        <x-filament::section>
            <x-slot name="heading">
                ⚙️ কনফিগারেশন ক্যাশ
            </x-slot>
            <x-slot name="description">
                যদি .env ফাইল পরিবর্তন করেন, তবে এটি ক্লিয়ার করুন।
            </x-slot>

            <x-filament::button wire:click="clearConfig" color="warning" class="w-full">
                কনফিগ ক্লিয়ার
            </x-filament::button>
        </x-filament::section>

        <!-- ৩. রাউট ক্লিয়ার -->
        <x-filament::section>
            <x-slot name="heading">
                🛣️ রাউট ক্যাশ
            </x-slot>
            <x-slot name="description">
                যদি কোনো পেজ 404 দেখায় বা রাউট পরিবর্তন হয়।
            </x-slot>

            <x-filament::button wire:click="clearRoute" color="info" class="w-full">
                রাউট ক্লিয়ার
            </x-filament::button>
        </x-filament::section>

        <!-- ৪. ভিউ ক্লিয়ার -->
        <x-filament::section>
            <x-slot name="heading">
                🖼️ ভিউ/ব্লেড ক্যাশ
            </x-slot>
            <x-slot name="description">
                ডিজাইন পরিবর্তন করার পর যদি আপডেট না দেখায়।
            </x-slot>

            <x-filament::button wire:click="clearView" color="success" class="w-full">
                ভিউ ক্লিয়ার
            </x-filament::button>
        </x-filament::section>

        <!-- ৫. স্টোরেজ লিংক -->
        <x-filament::section>
            <x-slot name="heading">
                📂 স্টোরেজ লিংক
            </x-slot>
            <x-slot name="description">
                যদি ওয়েবসাইটে ছবি শো না করে (Broken Image)।
            </x-slot>

            <x-filament::button wire:click="storageLink" color="gray" class="w-full">
                লিংক ফিক্স করুন
            </x-filament::button>
        </x-filament::section>

        <!-- ৬. মেইনটেন্যান্স মোড -->
        <x-filament::section>
            <x-slot name="heading">
                🚧 মেইনটেন্যান্স মোড
            </x-slot>
            <x-slot name="description">
                জরুরি আপডেটের সময় সাইট বন্ধ রাখতে এটি ব্যবহার করুন।
            </x-slot>

            <div class="flex gap-2">
                <x-filament::button wire:click="maintenanceDown" color="danger" class="w-1/2">
                    সাইট বন্ধ করুন
                </x-filament::button>

                <x-filament::button wire:click="maintenanceUp" color="success" class="w-1/2">
                    সাইট চালু করুন
                </x-filament::button>
            </div>
        </x-filament::section>

    </div>
</x-filament-panels::page>