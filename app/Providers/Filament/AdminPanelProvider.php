<?php

namespace App\Providers\Filament;

use App\Filament\Pages\Auth\CustomLogin;
use BezhanSalleh\FilamentShield\FilamentShieldPlugin;
use Filament\Http\Middleware\Authenticate;
use Filament\Http\Middleware\AuthenticateSession;
use Filament\Http\Middleware\DisableBladeIconComponents;
use Filament\Http\Middleware\DispatchServingFilamentEvent;
use Filament\Pages\Dashboard;
use Filament\Panel;
use Filament\PanelProvider;
use Filament\Support\Colors\Color;
use Filament\View\PanelsRenderHook;
use Filament\Widgets\AccountWidget;
use Filament\Widgets\FilamentInfoWidget;
use Illuminate\Cookie\Middleware\AddQueuedCookiesToResponse;
use Illuminate\Cookie\Middleware\EncryptCookies;
use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken;
use Illuminate\Routing\Middleware\SubstituteBindings;
use Illuminate\Session\Middleware\StartSession;
use Illuminate\View\Middleware\ShareErrorsFromSession;
use Jeffgreco13\FilamentBreezy\BreezyCore;
use ShuvroRoy\FilamentSpatieLaravelBackup\FilamentSpatieLaravelBackupPlugin;

class AdminPanelProvider extends PanelProvider
{
    public function panel(Panel $panel): Panel
    {
        return $panel
            ->default()
            ->id('admin')
            ->path('admin')

            // ✅ ১. ব্র্যান্ডিং ফিক্স (asset হেল্পার সহ)
            ->brandName('দাড়িপাল্লা মার্কা')
            ->brandLogo(asset('logo.png')) 
            ->brandLogoHeight('5rem')
            ->favicon(asset('logo.png'))

            // ✅ ২. কাস্টম লগইন পেজ
            ->login(CustomLogin::class)

            // ✅ ৩. কাস্টম স্টাইল (লগইন + অ্যাডমিন স্টাইল একসাথে)
            ->renderHook(
                PanelsRenderHook::HEAD_END,
                fn (): string => 
                    view('filament.login-style')->render() . 
                    view('filament.admin-style')->render()
            )

            ->passwordReset()
            ->profile()

            // থিম কালার
            ->colors([
                'primary' => Color::Green,
            ])

            ->discoverResources(
                in: app_path('Filament/Resources'),
                for: 'App\\Filament\\Resources'
            )

            ->discoverPages(
                in: app_path('Filament/Pages'),
                for: 'App\\Filament\\Pages'
            )

            ->pages([
                Dashboard::class,
            ])

            ->discoverWidgets(
                in: app_path('Filament/Widgets'),
                for: 'App\\Filament\\Widgets'
            )

            ->widgets([
                // ডিফল্ট উইজেটগুলো সরিয়ে ক্লিন রাখা হয়েছে
                // AccountWidget::class, 
            ])

            // Middleware
            ->middleware([
                EncryptCookies::class,
                AddQueuedCookiesToResponse::class,
                StartSession::class,
                AuthenticateSession::class,
                ShareErrorsFromSession::class,
                VerifyCsrfToken::class,
                SubstituteBindings::class,
                DisableBladeIconComponents::class,
                DispatchServingFilamentEvent::class,
            ])

            // Plugins
            ->plugins([
                FilamentShieldPlugin::make(),
                
                BreezyCore::make()
                    ->myProfile(
                        shouldRegisterUserMenu: true,
                        shouldRegisterNavigation: false,
                        hasAvatars: true, // প্রোফাইল ছবি আপলোড চালু
                        slug: 'my-profile'
                    ),
                
                FilamentSpatieLaravelBackupPlugin::make(),
            ])

            ->authMiddleware([
                Authenticate::class,
            ]);
            
    }
}
