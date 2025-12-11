<?php

namespace App\Filament\Resources\Candidates\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\ToggleColumn;
use Filament\Tables\Filters\Filter;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;

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
                ToggleColumn::make('is_approved')
                    ->label('স্ট্যাটাস')
                    ->onColor('success')
                    ->offColor('danger')
                    ->disabled(fn () => !auth()->user()->hasRole('super_admin')),
            ])
            ->filters([
                Filter::make('pending')
                ->label('অপেক্ষমান (Pending)')
                ->query(fn (Builder $query) => $query->where('is_approved', false)),
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
