<?php

namespace App\Filament\Resources\Videos\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class VideoForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('ভিডিও তথ্য')
                    ->schema([
                        TextInput::make('title')
                            ->label('ভিডিওর শিরোনাম')
                            ->required()
                            ->maxLength(255),

                        TextInput::make('youtube_code')
                            ->label('YouTube Video ID')
                            ->placeholder('যেমন: dQw4w9WgXcQ')
                            ->helperText('পুরো লিংক নয়, শুধু watch?v= এর পরের অংশটুকু দিন')
                            ->required()
                            ->maxLength(255),

                        // ✅ ফিক্স: TextInput এর বদলে FileUpload
                        FileUpload::make('thumbnail')
                            ->label('থাম্বনেইল (ছবি)')
                            ->image()
                            ->disk('public') // পাবলিক ডিস্ক
                            ->directory('videos') // videos ফোল্ডারে যাবে
                            ->visibility('public') // সবার জন্য উন্মুক্ত
                            ->columnSpanFull(),
                    ])
            ]);
    }
}
