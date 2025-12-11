<?php

namespace App\Filament\Resources\Candidates\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Repeater;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Group;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class CandidateForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                
                Group::make()
    ->schema([
        Section::make('প্রার্থীর প্রাথমিক তথ্য')
            ->schema([
                Select::make('constituency_id')
                    ->label('নির্বাচনী আসন')
                    ->relationship('constituency', 'name')
                    ->searchable()
                    ->preload()
                    ->required(),

                TextInput::make('name')
                    ->label('প্রার্থীর নাম')
                    ->required()
                    ->maxLength(255),

                TextInput::make('designation')
                    ->label('পদবী')
                    ->placeholder('যেমন: সাবেক এমপি / বিশিষ্ট সমাজসেবক'),

                TextInput::make('facebook_url')
                    ->label('ফেসবুক প্রোফাইল লিংক')
                    ->url()
                    ->prefixIcon('heroicon-m-globe-alt')
                    ->placeholder('https://facebook.com/profile...'),

                TextInput::make('intro_video_link')
                    ->label('ভিডিও লিংক')
                    ->url()
                    ->prefixIcon('heroicon-m-video-camera'),

                Toggle::make('is_approved')
                    ->label('অনুমোদন (Approve)')
                    ->onColor('success')
                    ->offColor('danger')
                    ->default(fn () => auth()->user()?->hasRole('super_admin')) 
                    ->visible(fn () => auth()->user()?->hasRole('super_admin')),
            ])
            ->columnSpan(2), // ✅ বাম পাশ ২ কলাম

        Section::make('ছবি')
            ->schema([
                FileUpload::make('photo')
                    ->label('প্রার্থীর ছবি')
                    ->image()
                    ->disk('public')
                    ->directory('candidates')
                    ->imageEditor()
                    ->required()
                    ->columnSpan(1), // ✅ শুধু ১ কলাম
            ])
            ->columnSpan(1), // ✅ ডান পাশ ১ কলাম
    ])
    ->columns(3)
    ->columnSpanFull(),

                // ২. নিচের অংশ: বিস্তারিত তথ্য (পুরো জায়গা নিবে)
                Section::make('বিস্তারিত তথ্য (ট্যাব)')
                    ->description('প্রার্থীর জীবন বৃত্তান্ত, শিক্ষা বা রাজনীতির তথ্য আলাদা ট্যাব হিসেবে যোগ করুন।')
                    ->schema([
                        Repeater::make('biography')
                            ->label('প্রোফাইল সেকশন')
                            ->schema([
                                TextInput::make('title')
                                    ->label('সেকশন শিরোনাম')
                                    ->placeholder('যেমন: শিক্ষা জীবন / রাজনৈতিক ক্যারিয়ার')
                                    ->required(),
                                
                                RichEditor::make('content')
                                    ->label('বিস্তারিত বিবরণ')
                                    ->required(),
                            ])
                            ->itemLabel(fn (array $state): ?string => $state['title'] ?? null)
                            ->collapsible()
                            ->cloneable()
                            ->columnSpanFull(),
                    ])
                    ->columnSpanFull(),
            ]);
    }
}