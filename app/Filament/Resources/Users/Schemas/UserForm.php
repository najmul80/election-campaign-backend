<?php

namespace App\Filament\Resources\Users\Schemas;

use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class UserForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('ইউজার তথ্য')
                    ->schema([
                        TextInput::make('name')
                            ->label('নাম')
                            ->required(),

                        TextInput::make('email')
                            ->label('ইমেইল')
                            ->email()
                            ->required()
                            ->unique(ignoreRecord: true),

                            FileUpload::make('avatar_url')
                            ->label('প্রোফাইল ছবি')
                            ->image()
                            ->avatar() 
                            ->disk('public')
                            ->imageEditor() 
                            ->circleCropper()
                            ->directory('users-avatar')
                            ->visibility('public')
                            ->columnSpanFull(),
                        TextInput::make('password')
                            ->label('পাসওয়ার্ড')
                            ->password()
                            ->dehydrated(fn ($state) => filled($state)) // পাসওয়ার্ড না দিলে আপডেট হবে না
                            ->required(fn (string $context): bool => $context === 'create'), // তৈরির সময় আবশ্যক

                        // রোল সিলেক্ট করার অপশন
                        Select::make('roles')
                            ->label('রোল (Role)')
                            ->relationship('roles', 'name') // Shield এর রোল টেবিলের সাথে কানেকশন
                            ->multiple()
                            ->preload()
                            ->searchable(),
                    ])->columns(2)
            ]);
    }
}
