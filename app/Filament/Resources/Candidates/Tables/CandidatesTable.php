<?php

namespace App\Filament\Resources\Candidates\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class CandidatesTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                // ছবি দেখানোর জন্য
                ImageColumn::make('photo')
                    ->label('ছবি')
                    ->disk('public')
                    ->circular(), // গোল করে দেখাবে

                TextColumn::make('name')
                    ->label('নাম')
                    ->searchable()
                    ->weight('bold'),

                // রিলেশনশিপ ডাটা (আসন নাম)
                TextColumn::make('constituency.name')
                    ->label('আসন')
                    ->badge() // সুন্দর ব্যাজ আকারে দেখাবে
                    ->color('success')
                    ->sortable(),

                TextColumn::make('designation')
                    ->label('পদবী')
                    ->limit(20),
            ])
            ->filters([
                // এখানে আমরা পরে ফিল্টার যোগ করতে পারি
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
