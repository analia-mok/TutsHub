@extends('layouts.default')

@section('header')
<header class="guide__header">
  <img src="{{ Voyager::image($guide->image) }}" alt="">
</header>
@endsection

@section('content')
<article class="guide__wrapper">
  <h2>{{ $guide->name }}</h2>
  <section class="guide__overview">
    <h3>Overview</h3>
    {!! $guide->overview !!}
  </section>
  <section class="guide__tutorials">
    <h3>Let's Begin</h3>
    <ul class="guide__tutorials__list">
      @if(count($tutorials))
        @foreach($tutorials as $tutorial)
          <li class="guide__tutorials__list__item">
            <img src="{{ Voyager::image($tutorial->thumbnail('small')) }}" alt="{{ $tutorial->title }}">
            <div class="guide__tutorials__list__item__content">
              <h3>{{ $loop->index + 1 }}.&nbsp;{{ $tutorial->title }}</h3>
              <em> Written by {{ $tutorial->author->name }}</em>
              {!! str_limit($tutorial->excerpt, 250) !!}
            </div>
          </li>
        @endforeach
      @endif
    </ul>
  </section>
</article>
@endsection