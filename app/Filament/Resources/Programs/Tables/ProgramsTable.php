<?php

namespace App\Filament\Resources\Programs\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class ProgramsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                ImageColumn::make('image')
                    ->label('ব্যানার')
                    ->disk('public'),

                TextColumn::make('title')
                    ->searchable()
                    ->label('ইভেন্ট'),

                TextColumn::make('location')
                    ->label('স্থান'),

                TextColumn::make('date_time')
                    ->dateTime('d M Y, h:i A')
                    ->label('সময়')
                    ->sortable(),
            ])
            ->defaultSort('date_time', 'desc')
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
