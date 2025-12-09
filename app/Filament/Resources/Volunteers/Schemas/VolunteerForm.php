<?php

namespace App\Filament\Resources\Volunteers\Schemas;

use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class VolunteerForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('স্বেচ্ছাসেবক তথ্য')
                    ->description('আগ্রহী ভলান্টিয়ারের তথ্য')
                    ->schema([
                        TextInput::make('name')
                            ->label('নাম')
                            ->required()
                            ->maxLength(255),

                        TextInput::make('phone')
                            ->label('মোবাইল নম্বর')
                            ->tel() // এটা মোবাইল নম্বরের ফরম্যাট চেক করবে
                            ->required()
                            ->maxLength(255),

                        TextInput::make('email')
                            ->label('ইমেইল')
                            ->email() // এটা ইমেইল ফরম্যাট চেক করবে
                            ->maxLength(255)
                            ->default(null),

                        TextInput::make('interested_area')
                            ->label('আগ্রহী এলাকা') // যেমন: কাজিপুর
                            ->maxLength(255)
                            ->default(null),

                        Textarea::make('address')
                            ->label('ঠিকানা')
                            ->columnSpanFull(),
                    ])
                    ->columns(2), // দুই কলামে সুন্দর করে দেখাবে
            ]);
    }
}
