{{-- Search Form --}}
{!! Form::open(['url' => '#', 'method' => 'get', 'id' => 'searchForm', 'onsubmit' => 'return search();']) !!}
    @csrf
    {!! Form::text('keyword', '', ['id' => 'keyword', 'placeholder' => 'Search for News', 'data-contentType' => $data_type]) !!}
{!! Form::close() !!}