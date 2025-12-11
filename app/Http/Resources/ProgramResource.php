<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProgramResource extends JsonResource
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
            'title' => $this->title,
            'description' => $this->description,
            'location' => $this->location,
            'image' => $this->image ? asset('storage/'.$this->image) : null,

            'date' => $this->date_time ? $this->date_time->format('Y-m-d') : null,
            'time' => $this->date_time ? $this->date_time->format('h:i A') : null,

            'candidate' => $this->candidate?->name,
            'candidate_id' => $this->candidate?->id,

            'constituency' => $this->candidate?->constituency?->name,
            'constituency_id' => $this->candidate?->constituency?->id,

        ];
    }
}
