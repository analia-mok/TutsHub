@extends('layouts.default')

@section('meta_data')
<meta name="title" description="{{ $page->meta_title }}">
<meta name="description" description="{{ $page->meta_description }}">
@endsection

@section('page_title')
{{ $page->title }}&nbsp;|
@endsection

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
<div class="page">
  <ul class="page__post-content">
    @foreach ($posts as $post)
    <li class="page__post-content__post">
      <div class="page__post-content__post__image-wrapper">
        <img src="{{ Voyager::image($post->thumbnail('small')) }}" alt="">
      </div>
      <div class="page__post-content__post__content">
        @if( isset($post->categories)) {{-- && count($post->categories > 0) ) --}}
          @foreach( $post->categories as $category )
            <span class="category">{{ $category->name }}</span>
          @endforeach
        @endif
        <h3>{{ $post->title ?? $post->name }}</h3>
        @if( $post->author )
          <em>Written by {{ $post->author->name }}</em>
        @endif
        <div class="page__post-content__post__content__bottom">
          @if($post->tutorials)
            <span class="page__post-content__post__content__bottom__total">{{ count($post->tutorials) }} Tutorials</span>
          @endif
          <span class="page__post-content__post__content__bottom__date">
            @php
              echo date('M d, Y', strtotime($post->updated_at))
            @endphp
          </span>
        </div>
      </div>
    </li>
    @endforeach
  </ul>
  {{ $posts->links() }}
</div>
@else
  <strong>Sorry, there are no available posts</strong>
@endif
@endsection