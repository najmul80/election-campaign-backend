<style>
    /* ১. সাইডবারের ডানপাশে বর্ডার এবং শ্যাডো দেওয়া */
    aside.fi-sidebar {
        border-right: 1px solid #e5e7eb !important; /* হালকা ধূসর বর্ডার */
        box-shadow: 4px 0 24px 0 rgba(0, 0, 0, 0.02) !important; /* হালকা শ্যাডো */
        background-color: white !important;
    }

    /* ডার্ক মোডে সাইডবার */
    .dark aside.fi-sidebar {
        border-right: 1px solid #374151 !important; /* ডার্ক বর্ডার */
        background-color: #111827 !important; /* গাঢ় কালো */
    }

    /* ২. মেইন কন্টেন্ট এরিয়া আলাদা করা */
    .fi-main {
        /* মেইন কন্টেন্ট এবং সাইডবারের মাঝে একটু ফাঁকা অনুভব হবে */
        padding-left: 2rem !important; 
    }

    /* ৩. মেইন বডির ব্যাকগ্রাউন্ড কালার (যাতে সাইডবার থেকে আলাদা লাগে) */
    body.fi-body {
        background-color: #f3f4f6 !important; /* খুব হালকা ধূসর */
    }

    /* ডার্ক মোডে মেইন বডি */
    .dark body.fi-body {
        background-color: #030712 !important; /* একদম কালো */
    }

    /* ৪. টপবার (উপরে) নিচে বর্ডার */
    header.fi-topbar {
        border-bottom: 1px solid #e5e7eb !important;
    }
    .dark header.fi-topbar {
        border-bottom: 1px solid #374151 !important;
    }
</style>