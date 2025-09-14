@extends('layouts.app')

@section('content')
  <form action="{{ route('search') }}" method="GET" class="mb-4">
    <div class="flex gap-2">
      <input name="q" value="{{ $q ?? '' }}" placeholder="Search company name..." class="flex-1 border p-2 rounded" />
      <button class="bg-indigo-600 text-white px-4 py-2 rounded">Search</button>
    </div>
  </form>

  @if(!empty($q))
    <h2 class="font-semibold mb-2">Results for "{{ $q }}"</h2>
    @if($results instanceof \Illuminate\Pagination\LengthAwarePaginator && $results->isNotEmpty())
      <ul class="space-y-2">
        @foreach($results as $r)
          <li class="bg-white shadow p-3 rounded flex justify-between items-center">
            <div>
              <a href="{{ route('company.show', ['country' => $r->country, 'id' => $r->id]) }}" class="font-medium text-indigo-600">{{ $r->name }}</a>
              <div class="text-sm text-slate-500">Country: {{ $r->country }} • Reg#: {{ $r->registration_number ?? '-' }}</div>
            </div>
            <div class="text-sm text-slate-500">{{ $r->address ?? '' }}</div>
          </li>
        @endforeach
      </ul>

      <div class="mt-4">
        {{ $results->links() }}
      </div>
    @else
      <p>No results</p>
    @endif
  @endif
@endsection
