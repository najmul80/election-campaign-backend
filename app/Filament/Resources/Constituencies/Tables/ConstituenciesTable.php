<?php

namespace App\Filament\Resources\Constituencies\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class ConstituenciesTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')
                    ->label('আসন')
                    ->searchable()
                    ->sortable()
                    ->weight('bold'),

                TextColumn::make('areas')
                    ->label('এলাকা')
                    ->searchable()
                    ->limit(40),

                TextColumn::make('total_voters')
                    ->label('মোট ভোটার')
                    ->numeric()
                    ->sortable(),

                TextColumn::make('created_at')
                    ->dateTime('d M Y')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                // এখানে ফিল্টার যোগ করতে পারেন
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
