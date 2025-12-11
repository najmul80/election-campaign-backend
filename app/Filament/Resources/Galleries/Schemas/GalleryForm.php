<?php

namespace App\Filament\Resources\Galleries\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class GalleryForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('ছবি আপলোড')
                    ->schema([
                        FileUpload::make('image_path')
                            ->label('ছবি')
                            ->image()
                            ->disk('public')
                            ->directory('gallery')
                            ->required()
                            ->columnSpanFull(),

                        TextInput::make('caption')
                            ->label('ছবির ক্যাপশন (Optional)'),

                        Select::make('category')
                            ->label('ক্যাটাগরি')
                            ->options([
                                'rally' => 'জনসভা',
                                'meeting' => 'ঘরোয়া সভা',
                                'campaign' => 'প্রচারণা',
                                'poster' => 'পোস্টার',
                            ])
                            ->required(),

                        Toggle::make('is_approved')
                            ->label('গ্যালারিতে দেখান')
                             ->default(fn () => auth()->user()?->hasRole('super_admin')) 
                            ->visible(fn () => auth()->user()?->hasRole('super_admin')),
                    ]),
            ]);
    }
}
