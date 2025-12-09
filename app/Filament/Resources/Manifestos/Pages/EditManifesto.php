<?php

namespace App\Filament\Resources\Manifestos\Pages;

use App\Filament\Resources\Manifestos\ManifestoResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditManifesto extends EditRecord
{
    protected static string $resource = ManifestoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
