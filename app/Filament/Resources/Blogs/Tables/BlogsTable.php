<?php

namespace App\Filament\Resources\Blogs\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Filters\Filter;
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
                ToggleColumn::make('is_approved')
                ->label('স্ট্যাটাস')
                ->disabled(fn () => !auth()->user()->hasRole('super_admin')), 
            ])
            ->filters([
            // ✅ ২. পেন্ডিং ডাটা দেখার ফিল্টার
            Filter::make('pending_approval')
                ->label('অপেক্ষমান (Pending)')
                ->query(fn (Builder $query): Builder => $query->where('is_approved', false)),
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
