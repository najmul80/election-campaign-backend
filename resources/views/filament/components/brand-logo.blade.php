<div class="flex items-center gap-3">
    <img src="{{ asset('logo.png') }}" alt="Logo" class="h-10 w-auto object-contain">
    <span class="font-bold text-xl text-green-600 dark:text-white">দাড়িপাল্লা মার্কা</span>
</div>
<style>
    /* লগইন পেজের ব্যাকগ্রাউন্ড */
    body.fi-body.fi-panel-admin {
        background-image: url("https://www.transparenttextures.com/patterns/cubes.png"), linear-gradient(to bottom right, #052e16, #15803d);
        background-size: cover;
        background-attachment: fixed;
        background-repeat: no-repeat;
    }

    /* লগইন বক্স ডিজাইন */
    .fi-simple-main {
        background-color: rgba(255, 255, 255, 0.95) !important;
        border-radius: 1.5rem; /* গোল করা হলো */
        padding: 2.5rem !important;
        box-shadow: 0 25px 50px -12px rgb(0 0 0 / 0.25) !important;
        border: 2px solid #16a34a; /* সবুজ বর্ডার */
    }

    /* ডার্ক মোড ফিক্স */
    .dark .fi-simple-main {
        background-color: rgba(17, 24, 39, 0.95) !important;
        border-color: #14532d;
    }

    /* লোগো এবং টেক্সট এলাইনমেন্ট */
    .fi-simple-header {
        text-align: center;
        margin-bottom: 2rem;
    }
</style>