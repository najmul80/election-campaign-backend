<?php

namespace App\Filament\Resources\Settings\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\KeyValue;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class SettingForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('সাধারণ তথ্য')
                    ->schema([
                        TextInput::make('site_name')
                            ->label('সাইটের নাম')
                            ->default('দাড়িপাল্লা মার্কা')
                            ->required(),

                        TextInput::make('contact_phone')->label('ফোন নম্বর'),
                        TextInput::make('contact_email')->label('ইমেইল')->email(),
                        Textarea::make('contact_address')->label('ঠিকানা')->rows(2),
                    ])->columns(2),

                Section::make('ফুটার ও কপিরাইট')
                    ->schema([
                        Textarea::make('footer_text')
                            ->label('ফুটার টেক্সট')
                            ->rows(3)
                            ->columnSpanFull(),
                    ]),
                    
                Section::make('লোগো ও এসইও')
                    ->schema([
                        FileUpload::make('logo')
                            ->label('লোগো')
                            ->image()
                            ->disk('public')
                            ->directory('settings')
                            ->visibility('public'), // ✅ যুক্ত করা হয়েছে

                        FileUpload::make('favicon')
                            ->label('ফ্যাভিকন')
                            ->image()
                            ->disk('public')
                            ->directory('settings')
                            ->visibility('public'), // ✅ যুক্ত করা হয়েছে

                        Textarea::make('meta_description')
                            ->label('SEO মেটা ডেসক্রিপশন')
                            ->rows(3)
                            ->columnSpanFull(),
                    ])->columns(2),

                Section::make('সোশ্যাল মিডিয়া')
                    ->schema([
                        KeyValue::make('social_links')
                            ->label('সোশ্যাল লিংক সমূহ')
                            ->keyLabel('প্লাটফর্ম')
                            ->valueLabel('লিংক')
                            ->addActionLabel('নতুন লিংক যোগ করুন')
                            ->reorderable()
                            ->columnSpanFull(),
                    ]),

                Section::make('ওয়েবসাইট পপ-আপ (Popup)')
                    ->schema([
                        Toggle::make('is_popup_active')
                            ->label('পপ-আপ চালু রাখুন')
                            ->default(true)
                            ->columnSpanFull(),

                        FileUpload::make('popup_image')
                            ->label('পপ-আপ ছবি আপলোড করুন')
                            ->image()
                            ->disk('public')
                            ->directory('settings')
                            ->visibility('public')
                            ->maxSize(5120) 
                            ->preserveFilenames()
                            // ->imageEditor() // 
                            ->columnSpanFull(),
                    ]),
            ]);
    }
}
