@extends('layouts.default')

@section('header')
<h2>{{ $page->header_title }}</h2>
<p>{{ $page->header_content }}</p>
@endsection

@section('content')
<p>This is the content</p>
@endsection