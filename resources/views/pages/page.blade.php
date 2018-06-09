@extends('layouts.default')

@section('header')

@if($page->slug === 'home')
{{-- TODO: Add gradient --}}
<header class="header header--home">
@else
<header class="header" style="background-color: {{ $page->header_background_color }};">
@endif
  <div class="header__content">
    <h2>{{ $page->header_title }}</h2>
    <p>{{ $page->header_content }}</p>
  </div>
</header>
@endsection

@section('content')
@if(count($posts) > 0)
<ul>
  @foreach ($posts as $post)
    <li>{{ $post->title }}</li>
  @endforeach
</ul>
@else
  <strong>Sorry, there are no available posts</strong>
@endif
@endsection