@extends('layouts.app')

@section('content')
  <div class="bg-white p-4 rounded shadow">
    <h1 class="text-xl font-bold">Cart</h1>

    @if(empty($cart))
      <p class="mt-4">Your cart is empty.</p>
    @else
      <table class="w-full mt-4">
        <thead>
          <tr class="text-left text-slate-600">
            <th>Report</th>
            <th>Country</th>
            <th>Price</th>
            <th>Qty</th>
            <th>Subtotal</th>
            <th></th>
          </tr>
        </thead>
        <tbody>
          @foreach($cart as $key => $item)
            <tr class="border-t">
              <td class="py-2">{{ $item['report_name'] }}</td>
              <td class="py-2">{{ $item['country'] }}</td>
              <td class="py-2">{{ number_format($item['price'], 2) }}</td>
              <td class="py-2">{{ $item['qty'] }}</td>
              <td class="py-2">{{ number_format($item['price'] * $item['qty'], 2) }}</td>
              <td class="py-2">
                <form method="POST" action="{{ route('cart.remove') }}">
                  @csrf
                  <input type="hidden" name="key" value="{{ $key }}">
                  <button class="text-red-600">Remove</button>
                </form>
              </td>
            </tr>
          @endforeach
        </tbody>
      </table>

      <div class="text-right mt-4">
        <div class="text-lg font-semibold">Total: {{ number_format($total, 2) }}</div>
      </div>
    @endif
  </div>
@endsection
