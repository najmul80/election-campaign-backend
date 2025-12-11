<style>
    /* ১. ব্যাকগ্রাউন্ড: ফুটারের হুবহু কালার এবং প্যাটার্ন */
    body.fi-body {
        background-color: #111827 !important; /* Gray-900 (Footer BG) */
        background-image: url("https://www.transparenttextures.com/patterns/cubes.png");
        background-repeat: repeat;
        background-attachment: fixed;
        /* প্যাটার্নটি যাতে খুব হালকা দেখায় (Opacity control via blend mode) */
        background-blend-mode: soft-light; 
        min-height: 100vh;
    }

    /* ২. লগইন বক্স ডিজাইন */
    .fi-simple-main {
        background-color: #1f2937 !important; /* Gray-800 (Card BG) */
        /* ফুটারের মতো উপরে ৮ পিক্সেল সবুজ বর্ডার */
        border-top: 8px solid #16a34a !important; 
        border-bottom: 1px solid #374151 !important;
        border-left: 1px solid #374151 !important;
        border-right: 1px solid #374151 !important;
        border-radius: 16px !important;
        box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.7) !important;
        padding: 2.5rem !important;
    }

    /* ৩. টেক্সট কালার (সাদা) */
    .fi-simple-main h1, 
    .fi-simple-main label, 
    .fi-simple-main p,
    .fi-simple-main span {
        color: #ffffff !important;
    }

    /* ৪. ইনপুট ফিল্ড (ডার্ক মোড স্টাইল) */
    .fi-input-wrp {
        background-color: #111827 !important; /* Gray-900 */
        border-color: #374151 !important; /* Gray-700 */
        color: white !important;
    }
    
    /* ইনপুট টেক্সট কালার */
    input.fi-input {
        color: white !important;
    }

    /* ৫. লগইন বাটন (ফুটারের বর্ডারের মতো সবুজ) */
    .fi-btn-primary {
        background-color: #16a34a !important; /* Green-600 */
        border: none !important;
        color: white !important;
        font-weight: bold !important;
        transition: all 0.3s ease !important;
    }

    .fi-btn-primary:hover {
        background-color: #15803d !important; /* Green-700 */
        transform: translateY(-2px);
        box-shadow: 0 10px 15px -3px rgba(22, 163, 74, 0.4);
    }

    /* লোগো সাইজ */
    .fi-logo {
        height: 6rem !important;
        filter: drop-shadow(0 0 10px rgba(255,255,255,0.2));
    }
</style>