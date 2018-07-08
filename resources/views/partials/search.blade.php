{{-- Search Form --}}
{!! Form::open(['url' => '#', 'method' => 'get', 'id' => 'searchForm', 'class' => 'search', 'onsubmit' => 'return search();']) !!}
    @csrf
    <div class="search__input-container">
        {!! Form::text('keyword', '', ['id' => 'keyword', 'placeholder' => 'Search for News...', 'data-contentType' => $data_type]) !!}
    </div>
{!! Form::close() !!}