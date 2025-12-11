<?php

namespace App\Filament\Resources\Comments\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Schema;

class CommentForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('blog_id')
                    ->required()
                    ->numeric(),
                TextInput::make('name')
                    ->required()->disabled(),
                Textarea::make('message')
                    ->required()->disabled()
                    ->columnSpanFull(),
                Toggle::make('is_approved')
                    ->required()->label('অনুমোদন দিন'),
            ]);
    }
}
