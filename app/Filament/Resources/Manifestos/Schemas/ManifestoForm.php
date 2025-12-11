<?php

namespace App\Filament\Resources\Manifestos\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Schema;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;

class ManifestoForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('ইশতেহার তথ্য')
                    ->schema([
                        // ১. প্রার্থী বা আসন সিলেক্ট (সেকশনের ভেতরে আনা হয়েছে)
                        Select::make('candidate_id')
                            ->label('প্রার্থী / আসন (ঐচ্ছিক)')
                            ->helperText('খালি রাখলে এটি "কেন্দ্রীয় ইশতেহার" হিসেবে গণ্য হবে।')
                            ->relationship('candidate', 'name')
                            ->getOptionLabelFromRecordUsing(fn ($record) => "{$record->name} ({$record->constituency->name})")
                            ->searchable()
                            ->preload()
                            ->columnSpanFull(),

                        TextInput::make('title')
                            ->label('ইশতেহারের বিষয়')
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

                        Toggle::make('is_approved')
                            ->label('ইশতেহারে দেখান')
                            ->default(fn () => auth()->user()?->hasRole('super_admin')) 
                            ->visible(fn () => auth()->user()?->hasRole('super_admin')),
                            
                    ])->columns(2),
            ]);
    }
}
