<?php

namespace App\Filament\Resources\Constituencies\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Schema;

class ConstituencyForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([ // v4 এ schema() এর বদলে components() ব্যবহৃত হয়
                Section::make('আসন তথ্য')
                    ->description('নির্বাচনী আসনের বিস্তারিত তথ্য দিন')
                    ->schema([
                        TextInput::make('name')
                            ->label('আসন নং')
                            ->placeholder('যেমন: সিরাজগঞ্জ-১')
                            ->required()
                            ->maxLength(255),

                        TextInput::make('areas')
                            ->label('এলাকাসমূহ')
                            ->placeholder('যেমন: কাজিপুর, চৌহালী')
                            ->required()
                            ->maxLength(255),

                        TextInput::make('total_voters')
                            ->label('মোট ভোটার')
                            ->numeric()
                            ->placeholder('0'),
                    ])
                    ->columns(2),
            ]);
    }
}
