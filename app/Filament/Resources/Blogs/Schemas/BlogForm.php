<?php

namespace App\Filament\Resources\Blogs\Schemas;

use Filament\Forms\Components\FileUpload;
use Filament\Forms\Components\RichEditor;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Toggle;
use Filament\Schemas\Components\Section;
use Filament\Schemas\Components\Utilities\Set;
use Filament\Schemas\Schema;
use Illuminate\Support\Str;

class BlogForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('সংবাদ বা ব্লগ লিখুন')
                    ->schema([
                        // টাইটেল লিখলে স্লাগ অটো জেনারেট হবে
                        TextInput::make('title')
                            ->label('শিরোনাম')
                            ->live(onBlur: true) // টাইপ শেষ হলে কাজ করবে
                            ->afterStateUpdated(fn (Set $set, ?string $state) => $set('slug', Str::slug($state)))
                            ->required(),

                        TextInput::make('slug')
                            ->label('URL Slug')
                            ->required()
                            ->unique(ignoreRecord: true),

                        TextInput::make('author')
                            ->label('লেখক')
                            ->default('Admin'),

                        Toggle::make('is_published')
                            ->label('প্রকাশ করুন')
                            ->default(true),

                        FileUpload::make('featured_image')
                            ->label('ফিচার ফটো')
                            ->image()
                            ->disk('public')
                            ->directory('blogs')
                            ->columnSpanFull(),

                        RichEditor::make('content')
                            ->label('বিস্তারিত সংবাদ')
                            ->columnSpanFull(),

                        Toggle::make('is_approved')
                            ->label('অনুমোদন (Publish)')
                             ->default(fn () => auth()->user()?->hasRole('super_admin')) 
                            ->visible(fn () => auth()->user()?->hasRole('super_admin')),
                    ])->columns(2),
            ]);
    }
}
