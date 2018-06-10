<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  @yield('meta_data')
  <title>@yield('page_title'){{ setting('site.title') }}</title>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Lato%7CRoboto+Slab" rel="stylesheet">
  <!-- Styles -->
  <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
  <div id="app">
    @include('partials/navbar')
    @yield('header')
    <main>
      @yield('content')
    </main>
    @include('partials/footer')
  </div>
</body>
</html>