<?php

namespace App\Filament\Widgets;

use App\Models\Volunteer;
use Filament\Widgets\ChartWidget;
use Flowframe\Trend\Trend;
use Flowframe\Trend\TrendValue;

class VolunteerChart extends ChartWidget
{
    protected ?string $heading = 'ভলান্টিয়ার রেজিস্ট্রেশন (গত ৭ দিন)';

    protected static ?int $sort = 2; 


    protected function getData(): array
    {
        // গত ৭ দিনের ডাটা বের করা
        $data = Trend::model(Volunteer::class)
            ->between(
                start: now()->subDays(7),
                end: now(),
            )
            ->perDay()
            ->count();

        return [
            'datasets' => [
                [
                    'label' => 'ভলান্টিয়ার',
                    'data' => $data->map(fn (TrendValue $value) => $value->aggregate),
                    'borderColor' => '#10B981', // Green color
                    'backgroundColor' => 'rgba(16, 185, 129, 0.1)',
                ],
            ],
            'labels' => $data->map(fn (TrendValue $value) => $value->date),
        ];
    }

    protected function getType(): string
    {
        return 'line'; // অথবা 'bar', 'pie'
    }
}
