<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <title>Company Search</title>
  @vite(['resources/css/app.css','resources/js/app.js'])
</head>
<body class="bg-slate-50 text-slate-800">
  <div class="max-w-5xl mx-auto p-4">
    <header class="flex items-center justify-between mb-6">
      <a href="{{ route('search') }}" class="text-2xl font-bold">Central Company Search</a>
      <a href="{{ route('cart.index') }}" class="bg-indigo-600 text-white px-4 py-2 rounded">Cart</a>
    </header>

    @if(session('success'))
      <div class="bg-green-100 text-green-800 p-3 rounded mb-4">{{ session('success') }}</div>
    @endif

    @yield('content')
  </div>
</body>
</html>
