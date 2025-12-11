<?php

namespace App\Filament\Pages\Auth;

use Filament\Auth\Pages\Login;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Checkbox;
use Filament\Schemas\Components\Form;
use Illuminate\Contracts\Support\Htmlable;

class CustomLogin extends Login
{
    // ১. Heading পরিবর্তন
    public function getHeading(): string | Htmlable
    {
        return 'অ্যাডমিন প্যানেলে স্বাগতম';
    }

    // ২. সাব-হেডিং
    public function getSubheading(): string | Htmlable | null
    {
        return 'আপনার একাউন্টে প্রবেশ করুন';
    }

    public function getAuthenticationForm(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('email')
                    ->label('ইমেইল')
                    ->email()
                    ->required()
                    ->autocomplete()
                    ->autofocus()
                    ->extraInputAttributes(['tabindex' => 1]),

                TextInput::make('password')
                    ->label('পাসওয়ার্ড')
                    ->password()
                    ->revealable() 
                    ->required()
                    ->autocomplete('current-password')
                    ->extraInputAttributes(['tabindex' => 2]),

                Checkbox::make('remember')
                    ->label('আমাকে মনে রাখুন'),
            ])
            ->statePath('data');
    }
}
