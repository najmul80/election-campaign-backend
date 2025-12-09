<?php

namespace App\Filament\Widgets;

use App\Models\Contact;
use Filament\Actions\BulkActionGroup;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget;
use Illuminate\Database\Eloquent\Builder;

class LatestContacts extends TableWidget
{
    protected static ?string $heading = 'সর্বশেষ বার্তা সমূহ';
    
    protected int | string | array $columnSpan = 'full'; // পুরো জায়গা নিবে
    
    protected static ?int $sort = 3; // নিচে দেখাবে

    public function table(Table $table): Table
    {
        return $table
            ->query(
                Contact::query()->latest()->limit(5)
            )
            ->columns([
                TextColumn::make('name')
                    ->label('নাম')
                    ->weight('bold'),
                
                TextColumn::make('phone')
                    ->label('ফোন'),
                
                TextColumn::make('message')
                    ->label('বার্তা')
                    ->limit(50), // বেশি বড় হলে কেটে দিবে

                TextColumn::make('created_at')
                    ->label('সময়')
                    ->dateTime('d M Y, h:i A'),
            ])
            ->actions([
                // এখান থেকেই ডিটেইলস দেখার বাটন (যদি রিসোর্স থাকে)
                // Tables\Actions\ViewAction::make(), 
            ]); 
    }
}
