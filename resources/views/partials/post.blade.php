@if(count($results) > 0)
  <ul class="page__post-content">
    @foreach ($paged_results as $result)
    <li class="page__post-content__post">
      <div class="page__post-content__post__image-wrapper">
        <a href="/{{ $slug_base }}/{{ $result->slug }}">
          @php
            $src = $result->image;
            $is_https = preg_match('/^https?:\/\//', $src);
          @endphp
          @if($is_https)
          <img src="{{ $result->image }}" alt="{{ $result->title ?? $result->name }}">
          @else
            <img src="{{ Voyager::image($result->thumbnail('small')) }}" alt="{{ $result->title ?? $result->name }}">
          @endif
        </a>
      </div>
      <a href="/{{ $slug_base }}/{{ $result->slug }}">
        <div class="page__post-content__post__content">
          @if( isset($result->categories))
            @foreach( $result->categories as $category )
              <span class="category">{{ $category->name }}</span>
            @endforeach
          @endif
          <h3>{{ $result->title ?? $result->name }}</h3>
          @if( $result->author )
            <em>Written by {{ $result->author->name }}</em>
          @endif
          <div class="page__post-content__post__content__bottom">
            @if($result->tutorials)
            <span class="page__post-content__post__content__bottom__total">{{ count($result->tutorials) }} Tutorials</span>
            @endif
            <span class="page__post-content__post__content__bottom__date">
              @php
              echo date('M d, Y', strtotime($result->published_date))
              @endphp
            </span>
          </div>
        </div>
      </a>
    </li>
    @endforeach
  </ul>
  <div class="search__pagination">
    {{ $results->links() }}
  </div>
@else
  <strong>Sorry, there are no available posts</strong>
@endif
