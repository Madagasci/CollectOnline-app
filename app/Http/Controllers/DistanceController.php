<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\DrivingEntries;
use Illuminate\Support\Facades\DB;

class DistanceController extends Controller
{
    public function SaveDistance(Request $request) {
        
        $data = $request->validate([
            'licencePlate' => ['required', 'min:7', 'max:9'],
            'drivingDate' => ['required'],
            'driver' => ['required', 'min:2'],
            'distance' => ['required', 'numeric']
        ]);

        DrivingEntries::create($data);

        $car_options = DrivingEntries::fetchLicencePlates();
        $success = 'yes';
        return view('driver')->with(['car_options' => $car_options])->with(['success' => $success]);
    }



    public function RedirectLogin(Request $request) {
        $car_options = DrivingEntries::fetchLicencePlates();
        $success = '';
        return view('driver')->with(['car_options' => $car_options])->with(['success' => $success]);
    }

    public function ExportByDate(Request $request) {
        
        $data = $request->validate([
            'exportDate' => ['required'],
        ]);

        $exportData = DB::table('driving_entries')->select('licencePlate', 'drivingDate', 'driver', 'distance')->where('drivingDate', '=', $data)->orderBy('licencePlate')->orderBy('distance')->get();

        $handle = fopen('export.csv', 'w'); //writing only to csv
        fputcsv($handle, array('Licenceplate', 'Driver', 'Mileage', 'Date'));


        foreach($exportData as $row) {
            fputcsv($handle, array($row->licencePlate, $row->driver, $row->distance, $row->drivingDate));
        }

        fclose($handle);

        $headers = array(
            'Content-Type' => 'text/csv',
        );

        return response()->download('export.csv', 'export' . implode('' ,$data) . '.csv', $headers);
        

    }




}
