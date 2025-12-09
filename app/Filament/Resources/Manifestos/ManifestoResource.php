<?php

namespace App\Filament\Resources\Manifestos;

use App\Filament\Resources\Manifestos\Pages\CreateManifesto;
use App\Filament\Resources\Manifestos\Pages\EditManifesto;
use App\Filament\Resources\Manifestos\Pages\ListManifestos;
use App\Filament\Resources\Manifestos\Schemas\ManifestoForm;
use App\Filament\Resources\Manifestos\Tables\ManifestosTable;
use App\Models\Manifesto;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;

class ManifestoResource extends Resource
{
    protected static ?string $model = Manifesto::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'name';

    public static function form(Schema $schema): Schema
    {
        return ManifestoForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        return ManifestosTable::configure($table);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => ListManifestos::route('/'),
            'create' => CreateManifesto::route('/create'),
            'edit' => EditManifesto::route('/{record}/edit'),
        ];
    }
}
