<?php

namespace App\Filament\Resources\Settings\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Table;

class SettingsTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('site_name')
                    ->label('সাইটের নাম')
                    ->searchable(),

                // ✅ টেক্সট কলামের বদলে ইমেজ কলাম
                ImageColumn::make('logo')
                    ->label('লোগো')
                    ->disk('public')
                    ->height(50),

                // ✅ পপ-আপ ছবি দেখার জন্য
                ImageColumn::make('popup_image')
                    ->label('পপ-আপ ছবি')
                    ->disk('public')
                    ->height(50),

                // ✅ পপ-আপ অন/অফ স্ট্যাটাস দেখার জন্য
                ToggleColumn::make('is_popup_active')
                    ->label('পপ-আপ চালু?'),

                TextColumn::make('contact_phone')
                    ->label('ফোন'),

                TextColumn::make('updated_at')
                    ->label('সর্বশেষ আপডেট')
                    ->dateTime('d M Y, h:i A')
                    ->sortable(),
            ])
            ->filters([
                //
            ])
            ->recordActions([
                EditAction::make(),
            ])
            ->bulkActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
