<?php

namespace App\Filament\Resources\Volunteers\Tables;

use Filament\Actions\BulkAction;
use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteAction;
use Filament\Actions\DeleteBulkAction;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;


use Filament\Forms\Components\Textarea;
use Filament\Forms\Components\TextInput;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Mail;
use pxlrbt\FilamentExcel\Actions\Tables\ExportAction; 

class VolunteersTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('name')
                    ->searchable()
                    ->label('নাম'),

                TextColumn::make('phone')
                    ->searchable()
                    ->label('মোবাইল'),

                TextColumn::make('interested_area')
                    ->label('এলাকা'),

                TextColumn::make('created_at')
                    ->dateTime('d M Y')
                    ->label('তারিখ'),
            ])
            ->headerActions([
                ExportAction::make()
                    ->label('সম্পূর্ণ লিস্ট ডাউনলোড (Excel)')
                    ->icon('heroicon-o-arrow-down-tray')
                    ->color('success'),
            ])
            ->actions([
                
                DeleteAction::make(),
            ])
            ->bulkActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),

                    ExportBulkAction::make()
                        ->label('এক্সেল ডাউনলোড')
                        ->icon('heroicon-o-arrow-down-tray'),

                    BulkAction::make('sendEmail')
                    ->label('ইমেইল পাঠান')
                    ->icon('heroicon-o-envelope')
                    ->color('success')
                    ->form([
                        TextInput::make('subject')
                            ->label('বিষয়')
                            ->required(),
                        Textarea::make('message')
                            ->label('বার্তা')
                            ->rows(4)
                            ->required(),
                    ])
                    ->action(function (Collection $records, array $data) {
                        // লুপ চালিয়ে মেইল পাঠানো (Note: সার্ভারে SMTP সেটআপ থাকতে হবে)
                        foreach ($records as $record) {
                            if ($record->email) {
                                // সিম্পল মেইল পাঠানো (অথবা Mailable ক্লাস ব্যবহার করতে পারেন)
                                Mail::raw($data['message'], function ($msg) use ($record, $data) {
                                    $msg->to($record->email)
                                        ->subject($data['subject']);
                                });
                            }
                        }
                    })
                    ->deselectRecordsAfterCompletion()
                ]),
            ]);
    }
}
