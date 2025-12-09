<?php

namespace App\Filament\Resources\Manifestos\Pages;

use App\Filament\Resources\Manifestos\ManifestoResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListManifestos extends ListRecords
{
    protected static string $resource = ManifestoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
