<?php

namespace App\Filament\Resources\Comments\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\IconColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Filters\Filter;
use Filament\Tables\Table;

class CommentsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')
                    ->label('নাম')
                    ->searchable(),

                TextColumn::make('blog.title')
                    ->label('নিউজ')
                    ->limit(30),

                TextColumn::make('message')
                    ->label('কমেন্ট')
                    ->limit(50),

                ToggleColumn::make('is_approved')
                    ->label('স্ট্যাটাস'),

               TextColumn::make('created_at')
                    ->dateTime('d M Y'),
            ])
            ->filters([
                Filter::make('pending')
                    ->query(fn ($query) => $query->where('is_approved', false))
                    ->label('অপেক্ষমান (Pending)'),
            ])
            ->actions([
                DeleteAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);

    }
}
