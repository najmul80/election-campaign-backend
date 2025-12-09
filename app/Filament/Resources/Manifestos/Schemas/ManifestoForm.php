<?php

namespace App\Filament\Resources\Manifestos\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Schema;
use Filament\Forms\Components\FileUpload;
use Filament\Schemas\Components\Section;

class ManifestoForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('ইশতেহার তথ্য')
                    ->schema([
                        TextInput::make('title')
                            ->label('ইশতেহারের বিষয়') // যেমন: শিক্ষা খাত
                            ->required(),
                        
                        TextInput::make('serial_no')
                            ->label('সিরিয়াল নং')
                            ->numeric()
                            ->default(1),

                        FileUpload::make('icon')
                            ->label('আইকন বা ছবি')
                            ->image()
                            ->disk('public')
                            ->directory('manifestos'),

                        Textarea::make('description')
                            ->label('বিস্তারিত প্রতিশ্রুতি')
                            ->required()
                            ->columnSpanFull(),
                    ])->columns(2)
            ]);
    }
}
