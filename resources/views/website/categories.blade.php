@extends('website.layout.default')
@section('content')
    <div class="row mt-5">
        <div class="col-md-12 text-right">
            <h1 class="p-3">الأقسام</h1>
        </div>
        <div class="col-md-12 text-right">
            <a class="caption" href="{{route('home')}}">الرئيسية</a>
            <span class="caption">|</span>
            <a class="caption" href="{{route('collages')}}">الكليات</a>
            <span class="caption">|</span>
            <a class="caption" href="{{route('categories')}}">الأقسام</a>
        </div>
    </div>
    <section class="collages mt-5 mb-5 bg-white box-shadow">
        <h3 class="text-center">شاهد أفضل الأقسام</h3>
        <p class="text-center">تمتع بمشاهدة جميع أقسام كليات مكتبة حجة الالكترونية</p>
        <div class="row">
            @foreach($categories as $category)
            <div class="collageItem customWidth" onclick="window.location.href='{{route('books.show', $category->id)}}'" style="cursor: pointer">
                <div class="collageImage">
                    <img src="{{$category->getImage()}}">
                </div>
                <div class="collageName">
                    <h6 class="text-center">{{$category->name}}</h6>
                    <p class="text-center">{{\App\Models\Book::where('category_id', $category->id)->count()}} كتب</p>
                </div>
                </div>
            @endforeach
        </div>

    </section>
@endsection
