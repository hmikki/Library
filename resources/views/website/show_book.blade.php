@extends('website.layout.default')
@section('content')
    <div class="row mt-5 mb-0">
        <div class="col-md-12 text-right">
            <h1 class="p-3">{{$book->name}}</h1>
        </div>
        <div class="col-md-12 text-right">
            <a class="caption" href="{{route('home')}}">الرئيسية</a>
            <span class="caption">|</span>
            <a class="caption" href="{{route('collages')}}">الكليات</a>
            <span class="caption">|</span>
            <a class="caption" href="{{route('categories')}}">الأقسام</a>
            <span class="caption">|</span>
            <a class="caption" href="{{route('books')}}">الكتب</a>
            <span class="caption">|</span>
            <span class="caption">{{$book->name}}</span>
        </div>
    </div>
    <section class="">
        <div class="row">
            <div class="pictures col-lg-6 p-5">
                <div class="row">
                    <img class="w-100" src="{{$book->getImage()}}">
                </div>
            </div>
            <div class="details col-lg-6 p-5">
                <div class="row pr-3 text-right pt-5">
                    <span>{{$book->created_at->format('Y-m-d')}}</span>
                </div>
                <div class="row">
                    <h2 class="text-right col-md-12 col-lg-12 green">{{$book->name}}</h2>
                </div>
                <div class="row pr-3">
                    <div class="col-md-12 mt-5">
                        <h2 class="text-right">الوصف</h2>
                    </div>
                    <div class="col-md-12 mt-5">
                    <p class="text-right">{{$book->description}}</p>
                    </div>
                </div>

                @auth('web')
                <div class="row mt-5">
                    <div class="col-md-6"> <a class="btn bg-yellow w-100" href="{{($book->download_link)? $book->download_link : '#'}}" download="">تحميل</a></div>
                    <div class="col-md-6"> <a class="btn bg-yellow w-100" href="{{($book->open_link)? $book->open_link : '#'}}" target="_blank">مشاهدة</a></div>
                </div>
                @endauth
            </div>
        </div>
    </section>
@endsection
