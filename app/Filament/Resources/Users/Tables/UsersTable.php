<?php

namespace App\Filament\Resources\Users\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Actions\ForceDeleteAction;
use Filament\Actions\ForceDeleteBulkAction;
use Filament\Actions\RestoreAction;
use Filament\Actions\RestoreBulkAction;
use Filament\Tables\Columns\ImageColumn;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\TrashedFilter;
use Filament\Tables\Table;

class UsersTable
{
    public static function configure(Table $table): Table
    {
         return $table
            ->columns([
                // ১. প্রোফাইল ছবি
                ImageColumn::make('avatar_url')
                    ->label('ছবি')
                    ->disk('public') // পাবলিক ডিস্ক থেকে আসবে
                    ->circular() // গোল দেখাবে
                    ->defaultImageUrl(url('/no-image.jpg')), 

                // ২. নাম
                TextColumn::make('name')
                    ->label('নাম')
                    ->searchable()
                    ->sortable()
                    ->weight('bold'),

                // ৩. ইমেইল (কপি বাটন সহ)
                TextColumn::make('email')
                    ->label('ইমেইল')
                    ->icon('heroicon-m-envelope')
                    ->copyable() 
                    ->copyMessage('ইমেইল কপি হয়েছে')
                    ->searchable(),

                
                TextColumn::make('roles.name')
                    ->label('রোল')
                    ->badge()
                    ->color(fn (string $state): string => match ($state) {
                        'super_admin' => 'success', // সুপার অ্যাডমিন হলে সবুজ
                        'panel_user' => 'warning',
                        default => 'gray',
                    })
                    ->sortable(),

                TextColumn::make('created_at')
                    ->label('যোগদানের তারিখ')
                    ->dateTime('d M Y')
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                TrashedFilter::make(), 
            ])
            ->actions([ 
                EditAction::make(),
                DeleteAction::make(), 
                RestoreAction::make(), 
                ForceDeleteAction::make(),
            ])
            ->bulkActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                    RestoreBulkAction::make(),
                    ForceDeleteBulkAction::make(),
                ]),
            ]);
    }
}
