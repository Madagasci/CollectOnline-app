<?php

namespace App\Models;

use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class DrivingEntries extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'licencePlate',
        'drivingDate',
        'driver',
        'distance',
    ];

    public static function fetchLicencePlates () {
        $car_options = DB::table('driving_entries')->orderBy('licencePlate', 'asc')->distinct()->pluck('licencePlate');
        return $car_options;
    }
    
}
