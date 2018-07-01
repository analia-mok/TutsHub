@extends('layouts.default')

@section('header')
{{-- TODO: Add gradient --}}
<header class="header header--home">
  <div class="header__content">
    <h2>{{ $page->header_title }}</h2>
    <p>{{ $page->header_content }}</p>
  </div>
</header>
@endsection

@section('content')
{{-- @if(count($posts) > 0)
<ul>
  @foreach ($posts as $post)
    <li>{{ $post->title }}</li>
  @endforeach
</ul>
@else
  <strong>Sorry, there are no available posts</strong>
@endif --}}
@include('partials.latest-news')
@endsection