<?php

namespace App\Filament\Resources\Manifestos\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class ManifestosTable
{
    public static function configure(Table $table): Table
    {
         return $table
            ->columns([
                TextColumn::make('serial_no')
                    ->sortable()
                    ->label('SL'),
                
                ImageColumn::make('icon')
                    ->label('আইকন')
                    ->disk('public')
                    ->visibility('public'), 
                
                TextColumn::make('title')
                    ->searchable()
                    ->label('বিষয়'),
                
                TextColumn::make('description')
                    ->limit(50)
                    ->label('বিবরণ'),
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
