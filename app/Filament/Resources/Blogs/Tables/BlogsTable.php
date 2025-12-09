<?php

namespace App\Filament\Resources\Blogs\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class BlogsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('featured_image')
                    ->label('ছবি')
                    ->disk('public'),

                TextColumn::make('title')
                    ->label('শিরোনাম')
                    ->searchable()
                    ->limit(50),

                TextColumn::make('author')
                    ->label('লেখক'),

                IconColumn::make('is_published')
                    ->label('প্রকাশিত?')
                    ->boolean(), // টিক বা ক্রস চিহ্ন দেখাবে

                TextColumn::make('created_at')
                    ->dateTime('d M Y')
                    ->label('তারিখ'),
            ])
            ->actions([
                EditAction::make(),
                DeleteAction::make(),
            ])
            ->bulkActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
