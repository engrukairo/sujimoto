<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>{{config('app.name', "XYZ")}}</title>
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="{{asset('css/app.css')}}" class="rel">
    </head>
    <body class="antialiased">
        <header>
            <div class="navbar navbar-light bg-white shadow-sm">
                <div class="container">
                    <a href="#" class="navbar-brand d-flex align-items-center">
                    <strong>XYZ</strong>
                    </a>
                    <div>
                        <a class="p-2 text-dark" href="#">Employees</a>
                        <a class="p-2 text-dark" href="#">Clock Ins</a>
                        <a class="btn btn-outline-primary btn-sm" href="#">Account</a>
                    </div>
                </div>
            </div>
        </header>
        @yield('content')
    </body>
</html>
