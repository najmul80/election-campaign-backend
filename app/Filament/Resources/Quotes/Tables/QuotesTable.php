<?php

namespace App\Filament\Resources\Quotes\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Table;

class QuotesTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('image')
                    ->label('ছবি')
                    ->disk('public')
                    ->visibility('public')
                    ->circular(), // ছবি গোল দেখাবে

                TextColumn::make('name')
                    ->label('নাম')
                    ->searchable()
                    ->weight('bold'),

                TextColumn::make('designation')
                    ->label('পদবী')
                    ->searchable(),

                TextColumn::make('quote')
                    ->label('উক্তি')
                    ->limit(50) // ৫০ অক্ষরের বেশি হলে ডট দেখাবে
                    ->wrap(),

                ToggleColumn::make('is_active')
                    ->label('স্ট্যাটাস'), // সরাসরি টেবিল থেকেই অন/অফ করা যাবে
                    
                ToggleColumn::make('is_approved')
                    ->label('স্ট্যাটাস')
                    ->disabled(fn () => !auth()->user()->hasRole('super_admin')),
            ])
            ->filters([
                //
            ])
            ->recordActions([
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
