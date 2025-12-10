<?php

namespace App\Filament\Resources\Candidates\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class CandidateForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('প্রার্থীর প্রাথমিক তথ্য')
                    ->schema([
                        // ১. আসন নির্বাচন (Relationship)
                        Select::make('constituency_id')
                            ->label('নির্বাচনী আসন')
                            ->relationship('constituency', 'name') // Constituency টেবিলের name দেখাবে
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
                            ->placeholder('ইউটিউব লিংক দিন (Optional)')
                            ->url(),
                    ])->columns(2),

                Section::make('ছবি ও বিস্তারিত')
                    ->schema([
                        // ২. ছবি আপলোড
                        FileUpload::make('photo')
                            ->label('প্রার্থীর ছবি')
                            ->image()
                            ->disk('public')
                            ->directory('candidates') // storage/app/public/candidates এ জমা হবে
                            ->required()
                            ->columnSpan(1),

                        // ৩. বড় এডিটর
                        RichEditor::make('biography')
                            ->label('জীবনী / বিস্তারিত')
                            ->toolbarButtons([
                                'bold', 'italic', 'underline', 'strike',
                                'bulletList', 'orderedList', 'taskList',
                                'link', 'image', 'video', 'table',
                                'h1', 'h2', 'h3', 'blockquote', 'codeBlock',
                                'alignLeft', 'alignCenter', 'alignRight',
                                'undo', 'redo'

                            ])
                            ->columnSpanFull(),
                    ])->columns(2),
            ]);
    }
}
