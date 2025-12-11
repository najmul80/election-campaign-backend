<?php

namespace App\Filament\Resources\Quotes\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class QuoteForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('উক্তি বিবরণ')
                    ->description('প্রার্থী বা বিশিষ্ট ব্যক্তিদের উক্তি যোগ করুন')
                    ->schema([
                        Textarea::make('quote')
                            ->label('উক্তি')
                            ->required()
                            ->rows(3)
                            ->columnSpanFull(),

                        TextInput::make('name')
                            ->label('নাম')
                            ->required()
                            ->maxLength(255),

                        TextInput::make('designation')
                            ->label('পদবী')
                            ->placeholder('যেমন: সিরাজগঞ্জ-১ বা বিশিষ্ট সমাজসেবক')
                            ->maxLength(255),

                        FileUpload::make('image')
                            ->label('ছবি')
                            ->image()
                            ->disk('public')
                            ->avatar() // ছবি গোল দেখাবে
                            ->imageEditor() // ক্রপ করার অপশন থাকবে
                            ->directory('quotes')
                            ->columnSpanFull(),

                        Toggle::make('is_active')
                            ->label('সক্রিয় রাখুন')
                            ->default(true),

                        Toggle::make('is_approved')
                            ->label('অনুমোদন')
                             ->default(fn () => auth()->user()?->hasRole('super_admin')) 
                            ->visible(fn () => auth()->user()?->hasRole('super_admin')),
                    ])
                    ->columns(2)
            ]);
    }
}
