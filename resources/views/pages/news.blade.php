@extends('layouts.default')

@section('meta_data')
<meta name="title" description="{{ $news->meta_title ?? $news->title }}">
<meta name="description" description="{{ $news->meta_description ?? "Tuts Hub News Article" }}">
@endsection

@section('content')
<article class="news">
  <div class="news__header-image">
    <img src="{{ Voyager::image($news->thumbnail('large')) }}" alt="{{ $news->title }}">
  </div>
  <h2 class="news__title">{{ $news->title }}</h2>
  <section class="news__breadcrumb"><a href="/news">News</a>&nbsp;/&nbsp;Updated At:
    @php
      echo date('M d, Y', strtotime($news->updated_at))
    @endphp
    <br>
    <p>Written by: {{ $news->author->name }}</p>
  </section>
  <section class="news__content">{!! $news->content !!}</section>
</article>
@endsection