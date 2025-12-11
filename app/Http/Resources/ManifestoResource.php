<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ManifestoResource extends JsonResource
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
            'serial' => $this->serial_no,
            'title' => $this->title,
            'description' => $this->description,
            'icon' => $this->icon ? asset('storage/'.$this->icon) : null,
            'candidate_id' => $this->candidate_id,
            'candidate_name' => $this->candidate?->name,
            'constituency' => $this->candidate?->constituency?->name,
        ];
    }
}
