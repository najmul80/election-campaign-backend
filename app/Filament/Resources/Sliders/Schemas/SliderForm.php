<?php

namespace App\Filament\Resources\Sliders\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class SliderForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('স্লাইডার তথ্য')
                    ->schema([
                        TextInput::make('title')
                            ->label('বড় শিরোনাম (Title)')
                            ->placeholder('যেমন: বিসমিল্লাহির রাহমানির রাহিম'),

                        TextInput::make('subtitle')
                            ->label('ছোট শিরোনাম (Subtitle)')
                            ->placeholder('যেমন: উন্নয়নের জন্য ভোট দিন'),

                        TextInput::make('button_text')
                            ->label('বাটনের লেখা'),

                        TextInput::make('button_link')
                            ->label('বাটনের লিংক'),

                        Toggle::make('is_active')
                            ->label('স্লাইডারটি চালু রাখুন')
                            ->default(true),

                        FileUpload::make('image')
                            ->label('ব্যাকগ্রাউন্ড ছবি')
                            ->image()
                            ->disk('public')
                            ->directory('sliders')
                            ->required()
                            ->columnSpanFull(),
                    ])->columns(2),
            ]);
    }
}
