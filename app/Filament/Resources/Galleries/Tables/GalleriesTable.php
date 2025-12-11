<?php

namespace App\Filament\Resources\Galleries\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Table;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Filters\SelectFilter;


class GalleriesTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                
                ImageColumn::make('image_path') 
                    ->label('ছবি')
                    ->disk('public') 
                    ->visibility('public')
                    ->height(60)
                    ->circular(),

                TextColumn::make('caption')
                    ->label('ক্যাপশন')
                    ->searchable(),

                TextColumn::make('category')
                    ->badge()
                    ->colors([
                        'primary' => 'rally',
                        'success' => 'campaign',
                        'warning' => 'meeting',
                        'info'    => 'poster',
                    ])
                    ->label('ক্যাটাগরি')
                    ->searchable(),

                TextColumn::make('created_at')
                    ->label('তৈরির তারিখ')
                    ->dateTime('d M Y')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                ToggleColumn::make('is_approved')
                    ->label('স্ট্যাটাস')
                    ->disabled(fn () => !auth()->user()->hasRole('super_admin')),
            ])
            ->filters([
                SelectFilter::make('category')
                    ->label('ক্যাটাগরি অনুযায়ী দেখুন')
                    ->options([
                        'rally' => 'জনসভা (Rally)',
                        'campaign' => 'প্রচারণা (Campaign)',
                        'meeting' => 'ঘরোয়া সভা (Meeting)',
                        'poster' => 'পোস্টার (Poster)',
                    ]),
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