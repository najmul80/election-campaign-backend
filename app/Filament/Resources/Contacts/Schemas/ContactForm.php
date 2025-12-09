<?php

namespace App\Filament\Resources\Contacts\Schemas;

use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class ContactForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('মেসেজের বিস্তারিত')
                    ->schema([
                        TextInput::make('name')
                            ->label('প্রেরকের নাম')
                            ->required(),

                        TextInput::make('phone')
                            ->label('মোবাইল নম্বর')
                            ->tel(),

                        TextInput::make('subject')
                            ->label('বিষয়')
                            ->columnSpanFull(),

                        Textarea::make('message')
                            ->label('বার্তা')
                            ->required()
                            ->columnSpanFull(),

                        Toggle::make('is_read')
                            ->label('পড়া হয়েছে? (Mark as Read)')
                            ->default(false),
                    ])->columns(2),
            ]);
    }
}
