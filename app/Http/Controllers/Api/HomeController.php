<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

// Resources
use App\Http\Resources\BlogResource;
use App\Http\Resources\CandidateResource;
use App\Http\Resources\GalleryResource;
use App\Http\Resources\ManifestoResource;
use App\Http\Resources\ProgramResource;
use App\Http\Resources\QuoteResource;
use App\Http\Resources\SettingResource;
use App\Http\Resources\SliderResource;
use App\Http\Resources\VideoResource;

// Models
use App\Models\Blog;
use App\Models\Candidate;
use App\Models\Comment;
use App\Models\Contact;
use App\Models\Gallery;
use App\Models\Manifesto;
use App\Models\Program;
use App\Models\Quote;
use App\Models\Setting;
use App\Models\Slider;
use App\Models\Video;
use App\Models\Volunteer;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $settings = Setting::first();

        return response()->json([
            'status' => 'success',
            'data' => [
                'settings' => $settings ? new SettingResource($settings) : null,
                
                // স্লাইডারে সাধারণত is_active থাকে, তাই এটা ঠিক আছে
                'sliders' => SliderResource::collection(Slider::where('is_active', true)->get()),
                
                // ✅ Candidates: Approved check added
                'candidates' => CandidateResource::collection(
                    Candidate::where('is_approved', true)->with('constituency')->get()
                ),
                
                // ✅ Manifestos: Approved check added
                'manifestos' => ManifestoResource::collection(
                    Manifesto::where('is_approved', true)->orderBy('serial_no')->get()
                ),
                
                // ✅ Programs: Approved check added
                'programs' => ProgramResource::collection(
                    Program::with(['candidate.constituency'])
                        ->where('is_approved', true) // অ্যাডমিন অ্যাপ্রুভাল চেক
                        ->where('date_time', '>=', now())
                        ->orderBy('date_time')
                        ->take(3)
                        ->get()
                ),
                
                // ✅ Gallery: Approved check added
                'gallery' => GalleryResource::collection(
                    Gallery::where('is_approved', true)->latest()->take(8)->get()
                ),
                
                // ✅ Videos: Approved check added (Home page এ ৪টি ভিডিও)
                'videos' => VideoResource::collection(
                    Video::where('is_approved', true)->latest()->take(4)->get()
                ),
                
                // ✅ News: Approved check added
                'news' => BlogResource::collection(
                    Blog::where('is_approved', true)
                        ->where('is_published', true)
                        ->latest()
                        ->take(3)
                        ->get()
                ),
                
                // ✅ Quotes: Approved check added
                'quotes' => QuoteResource::collection(
                    Quote::where('is_approved', true)->get()
                ),
            ],
        ]);
    }

    public function allGallery()
    {
        return GalleryResource::collection(
            Gallery::where('is_approved', true)->latest()->paginate(12)
        );
    }

    public function allNews()
    {
        // ✅ News: Approved check added here too
        $news = Blog::where('is_approved', true)
                    ->where('is_published', true)
                    ->latest()
                    ->paginate(2);

        return response()->json([
            'data' => BlogResource::collection($news),
            'meta' => [
                'current_page' => $news->currentPage(),
                'last_page' => $news->lastPage(),
                'total' => $news->total(),
            ],
        ]);
    }

    public function singleNews($slug)
    {
        $news = Blog::where('is_approved', true)
                    ->where('slug', $slug)
                    ->firstOrFail();

        return new BlogResource($news);
    }

    public function singleCandidate($id)
    {
        $candidate = Candidate::where('is_approved', true)
                            ->with('constituency')
                            ->findOrFail($id);

        return new CandidateResource($candidate);
    }

    public function allVideos()
    {
        // ✅ Videos: Approved check added
        return VideoResource::collection(
            Video::where('is_approved', true)->latest()->paginate(8)
        );
    }

    public function singleProgram($id)
    {
        // ✅ Single Program: Approved check added
        $program = Program::where('is_approved', true)->findOrFail($id);

        return new ProgramResource($program);
    }

    // --- POST Methods (No Change Needed) ---

    public function storeVolunteer(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'email' => 'nullable|email',
            'interested_area' => 'nullable',
            'address' => 'nullable',
        ]);

        Volunteer::create($validated);

        return response()->json(['message' => 'রেজিস্ট্রেশন সফল হয়েছে!'], 201);
    }

    public function storeContact(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required',
            'message' => 'required',
            'phone' => 'nullable',
            'subject' => 'nullable',
        ]);

        Contact::create($validated);

        return response()->json(['message' => 'আপনার বার্তা পাঠানো হয়েছে!'], 201);
    }

    public function storeComment(Request $request)
    {
        $validated = $request->validate([
            'blog_id' => 'required|exists:blogs,id',
            'name' => 'required|string|max:255',
            'message' => 'required|string',
        ]);

        Comment::create([
            'blog_id' => $validated['blog_id'],
            'name' => $validated['name'],
            'message' => $validated['message'],
            'is_approved' => false, // অটোমেটিক পেন্ডিং থাকবে
        ]);

        return response()->json(['message' => 'কমেন্ট জমা হয়েছে! অ্যাডমিন অনুমোদনের পর এটি দেখা যাবে।']);
    }
}