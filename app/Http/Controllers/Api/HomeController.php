<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\BlogResource;
use App\Http\Resources\CandidateResource;
use App\Http\Resources\GalleryResource;
use App\Http\Resources\ManifestoResource;
// Resources
use App\Http\Resources\ProgramResource;
use App\Http\Resources\QuoteResource;
use App\Http\Resources\SettingResource;
use App\Http\Resources\SliderResource;
use App\Http\Resources\VideoResource;
use App\Models\Blog;
use App\Models\Candidate;
use App\Models\Contact;
use App\Models\Gallery;
use App\Models\Manifesto;
use App\Models\Program;
use App\Models\Quote;
use App\Models\Setting;
use App\Models\Slider;
use App\Models\Video;
use App\Models\Volunteer;
use Illuminate\Http\Request;

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
                'sliders' => SliderResource::collection(Slider::where('is_active', true)->get()),
                'candidates' => CandidateResource::collection(Candidate::with('constituency')->get()),
                'manifestos' => ManifestoResource::collection(Manifesto::orderBy('serial_no')->get()),
                'programs' => ProgramResource::collection(Program::where('date_time', '>=', now())->orderBy('date_time')->take(3)->get()),
                'gallery' => GalleryResource::collection(Gallery::latest()->take(8)->get()),
                'videos' => VideoResource::collection(Video::latest()->paginate(4)),
                'news' => BlogResource::collection(Blog::where('is_published', true)->latest()->take(3)->get()),
                'quotes' => QuoteResource::collection(Quote::where('is_active', true)->get()),
            ],
        ]);
    }

    public function allGallery()
    {
        return GalleryResource::collection(Gallery::latest()->paginate(12));
    }

    public function allNews()
    {
        // ডাটা আনা
        $news = Blog::where('is_published', true)->latest()->paginate(2);

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
        $news = Blog::where('slug', $slug)->firstOrFail();

        return new BlogResource($news);
    }

    public function singleCandidate($id)
    {
        $candidate = Candidate::with('constituency')->findOrFail($id);

        return new CandidateResource($candidate);
    }

    public function allVideos()
    {
        return VideoResource::collection(Video::latest()->paginate(8));
    }

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

    public function singleProgram($id)
    {
        $program = Program::findOrFail($id);

        return new ProgramResource($program);
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
}
