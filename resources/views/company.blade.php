@extends('layouts.app')

@section('content')
  <div class="bg-white p-4 rounded shadow">
    <h1 class="text-2xl font-bold">{{ $company->name }}</h1>
    <div class="text-sm text-slate-600">Country: {{ strtoupper($country) }} • Reg#: {{ $company->registration_number ?? '-' }}</div>
    <p class="mt-2">{{ $company->address ?? '' }}</p>
  </div>

  <div class="mt-4 bg-white rounded shadow p-4">
    <h2 class="font-semibold mb-3">Available Reports</h2>
    <table class="w-full">
      <thead>
        <tr class="text-left text-slate-600">
          <th>Name</th>
          <th>Price</th>
          <th></th>
        </tr>
      </thead>
      <tbody>
        @foreach($reports as $report)
          <tr class="border-t">
            <td class="py-2">{{ $report['name'] }}</td>
            <td class="py-2">{{ number_format($report['price'], 2) }}</td>
            <td class="py-2 text-right">
              <form method="POST" action="{{ route('cart.add') }}">
                @csrf
                <input type="hidden" name="country" value="{{ $report['country'] }}">
                <input type="hidden" name="company_id" value="{{ $company->id }}">
                <input type="hidden" name="report_id" value="{{ $report['id'] }}">
                <input type="hidden" name="report_name" value="{{ $report['name'] }}">
                <input type="hidden" name="price" value="{{ $report['price'] }}">
                <button class="bg-indigo-600 text-white px-3 py-1 rounded">Add to cart</button>
              </form>
            </td>
          </tr>
        @endforeach
      </tbody>
    </table>
  </div>
@endsection
