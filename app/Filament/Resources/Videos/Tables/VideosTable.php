<?php

namespace App\Filament\Resources\Videos\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Table;

class VideosTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('thumbnail')
                    ->label('থাম্বনেইল')
                    ->disk('public') 
                    ->height(60)
                    ->circular(), 
                    
                TextColumn::make('title')
                    ->searchable()
                    ->label('শিরোনাম')
                    ->wrap(), 

                TextColumn::make('youtube_code')
                    ->label('Video ID')
                    ->badge()
                    ->color('info')
                    ->copyable(), 
                ToggleColumn::make('is_approved')
                    ->label('স্ট্যাটাস')
                    ->disabled(fn () => !auth()->user()->hasRole('super_admin')),
            ])
            ->filters([
                //
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
