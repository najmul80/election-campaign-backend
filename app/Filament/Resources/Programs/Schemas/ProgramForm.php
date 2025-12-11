<?php

namespace App\Filament\Resources\Programs\Schemas;

use App\Models\Candidate;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class ProgramForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('ইভেন্ট বা জনসভা')
                    ->schema([
                        TextInput::make('title')
                            ->label('ইভেন্টের নাম')
                            ->required(),
                        Select::make('candidate_id')
                            ->label('প্রার্থী')
                            ->options(Candidate::all()->pluck('name', 'id'))
                            ->searchable()
                            ->required(),
                        TextInput::make('location')
                            ->label('স্থান') // যেমন: সিরাজগঞ্জ স্টেডিয়াম
                            ->required(),

                        DateTimePicker::make('date_time')
                            ->label('তারিখ ও সময়')
                            ->required(),

                        FileUpload::make('image')
                            ->label('ব্যানার বা ছবি')
                            ->image()
                            ->disk('public')
                            ->directory('programs')
                            ->columnSpanFull(),

                        RichEditor::make('description')
                            ->label('বিস্তারিত বিবরণ')
                            ->columnSpanFull(),
                    ])->columns(2)
            ]);
    }
}
