<?php

namespace App\Filament\Resources\ActivityLogs;

use BackedEnum;
use UnitEnum;
use App\Filament\Resources\ActivityLogs\Pages\ManageActivityLogs;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\ViewAction;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Tables\Table;
use Filament\Forms\Components\KeyValue;
use Filament\Schemas\Components\Section;
use Filament\Tables\Columns\TextColumn;
use Spatie\Activitylog\Models\Activity;

class ActivityLogResource extends Resource
{
    protected static ?string $model = Activity::class;

    // ✅ correct types for Filament v4
    protected static string|BackedEnum|null $navigationIcon = 'heroicon-o-clipboard-document-list';
    protected static string|UnitEnum|null $navigationGroup = 'System';

    protected static ?string $navigationLabel = 'Activity Logs';

    public static function form(Schema $schema): Schema
    {
        return $schema
            ->components([
                Section::make('Log Details')
                    ->schema([
                        KeyValue::make('properties.attributes')
                            ->label('New Data')
                            ->columnSpanFull(),

                        KeyValue::make('properties.old')
                            ->label('Old Data')
                            ->columnSpanFull(),
                    ]),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('description')
                    ->label('Action')
                    ->searchable()
                    ->badge()
                    ->color(fn (string $state): string => match ($state) {
                        'created' => 'success',
                        'updated' => 'warning',
                        'deleted' => 'danger',
                        default => 'gray',
                    }),

                TextColumn::make('subject_type')
                    ->label('Model')
                    ->formatStateUsing(fn ($state) => class_basename($state))
                    ->sortable(),

                TextColumn::make('causer.name')
                    ->label('User')
                    ->searchable(),

                TextColumn::make('created_at')
                    ->label('Time')
                    ->dateTime('d M Y, h:i A')
                    ->sortable(),
            ])
            ->defaultSort('created_at', 'desc')
            ->actions([
                ViewAction::make(),
                DeleteAction::make(),
            ])
            ->bulkActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getPages(): array
    {
        return [
            'index' => ManageActivityLogs::route('/'),
        ];
    }
}
