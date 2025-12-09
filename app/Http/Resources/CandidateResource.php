<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CandidateResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'name' => $this->name,
            'designation' => $this->designation,
            'facebook' => $this->facebook_url,
            'photo_url' => asset('storage/'.$this->photo),
            'symbol_url' => $this->symbol_photo ? asset('storage/'.$this->symbol_photo) : null,
            'constituency' => $this->constituency->name ?? '',
            'biography' => $this->biography,
            'video_link' => $this->intro_video_link,
        ];
    }
}
