@extends('website.layout.default')
@section('content')
    <div class="row mt-5">
        <div class="col-md-12 text-right">
            <h1 class="p-3">الكتب</h1>
        </div>
        <div class="col-md-12 text-right">
            <a class="caption" href="{{route('home')}}">الرئيسية</a>
            <span class="caption">|</span>
            <a class="caption" href="{{route('collages')}}">الكليات</a>
            <span class="caption">|</span>
            <a class="caption" href="{{route('categories')}}">الأقسام</a>
            <span class="caption">|</span>
            <a class="caption" href="{{route('books')}}">الكتب</a>
        </div>
    </div>
    <section class="books mt-5 box-shadow radius mb-5">
        <h3 class="text-center">شاهد آخر الكتب</h3>
        <p class="text-center">تمتع بمشاهدة جميع الكتب في مكتبة حجة الالكترونية</p>
        <div class="row">
            @foreach($books as $book)
            <div class="col-md-3 bookItem" onclick="window.location.href='{{route('book', $book->id)}}'" style="cursor: pointer">
                <div class="bookImage">
                    <img src="{{$book->getImage()}}">
                </div>
                <div class="bookName">
                    <h6 class="text-right">{{$book->name}}</h6>
                    <p class="text-right">{{$book->category->collage->name}}</p>
                    <p class="text-right">{{$book->category->name}}</p>
                </div>
            </div>
            @endforeach
        </div>

    </section>
@endsection
