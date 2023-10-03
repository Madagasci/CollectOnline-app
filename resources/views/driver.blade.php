<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Register KM</h1>

    @if ($success !== '')
         <p>Distance saved!</p>      
    @else
        
    @endif

    <form action="/SaveDistance" method="POST">
        {{ csrf_field() }} <!-- Had to google this -->
        <select name="licencePlate">
            @foreach($car_options as $car )
              <option value="{{ $car}}">{{ $car }}</option>
            @endforeach
        </select> <br>
        <input name='drivingDate' type="date"> <br>
        <input name='driver' type="text" placeholder="Driver"> <br>
        <input name='distance' type="text" placeholder="Mileage"> <br>
        <button>Save</button>
    </form>

    <form action="/ExportByDate" method="POST">
        {{ csrf_field() }} <!-- Had to google this -->
        <input name='exportDate' type="date">
        <button>Export</button>
    </form>

    <a href="/RedirectHome">Go back.</a>
</body>
</html>
