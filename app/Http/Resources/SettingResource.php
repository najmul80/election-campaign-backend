<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class SettingResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'site_name' => $this->site_name,
            'logo' => $this->logo ? asset('storage/'.$this->logo) : null,
            'favicon' => $this->favicon ? asset('storage/'.$this->favicon) : null,
            'phone' => $this->contact_phone,
            'email' => $this->contact_email,
            'address' => $this->contact_address,
            'footer_text' => $this->footer_text,
            'meta_description' => $this->meta_description,
            'social_links' => $this->social_links,
        ];
    }
}
