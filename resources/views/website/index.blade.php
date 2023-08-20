@extends('website.layout.default')
@section('content')
    <section class="mt-5">
        <div class="row text-center">
            <div class="text-center col-lg-6 col-md-12 title-hero">
                <h1>أهلا و سهلا بكم <br/>في مكتبة جامعة<br/> حجة الالكترونية</h1>
            </div>
            <div class="text-center col-lg-6 col-md-12">
                <img src="{{asset('assets/img/banner1.jpg')}}" width="100%">
            </div>
        </div>
    </section>
    <section class="collages mt-5 ">
        <h3 class="text-center">شاهد أفضل الكليات</h3>
        <p class="text-center">تمتع بمشاهدة جميع كليات مكتبة حجة الالكترونية</p>
        <div class="row">
            @foreach($collages as $collage)
            <div class="collageItem" style="cursor: pointer" onclick="window.location.href='{{route('collages.show', $collage->id)}}'">
                <div class="collageImage">
                    <img src="{{$collage->getImage()}}">
                </div>
                <div class="collageName">
                    <h6 class="text-center">{{$collage->name}}</h6>
                    <p class="text-center">{{\App\Models\Category::where('collage_id', $collage->id)->count()}} أقسام</p>
                </div>
            </div>
            @endforeach
        </div>

    </section>
    <section class="books mt-5">
        <h3 class="text-center">شاهد آخر الكتب</h3>
        <p class="text-center">تمتع بمشاهدة جميع الكتب في مكتبة حجة الالكترونية</p>
        <div class="row">
            @foreach($books as $book)
            <div class="col-md-3 bookItem" style="cursor: pointer" onclick="window.location.href='{{route('book', $book->id)}}'">
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
