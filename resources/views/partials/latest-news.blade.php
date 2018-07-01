@if(isset($latest_news) && count($latest_news) > 0)
    <div class="latest-news">
        <h3>Latest News</h3>
        <ul class="latest-news__news">
            @foreach($latest_news as $news)
            <li class="latest-news__news__item">
                <div class="latest-news__news__item__image">
                    <img src="{{ Voyager::image($news->thumbnail('medium')) }}" alt="{{ $news->title }}">
                </div>
                <div class="latest-news__news__item__content">
                    <small>
                        @php echo date('M d, Y', strtotime($news->published_date)); @endphp
                    </small>
                    <strong>
                        <a href="/news/{{ $news->slug }}">{{ $news->title }}</a>
                    </strong>
                </div>
            </li>
            @endforeach
        </ul>
        <div class="latest-news__button">
            <a href="/news">Check Out More In News</a>
        </div>
    </div>
@endif