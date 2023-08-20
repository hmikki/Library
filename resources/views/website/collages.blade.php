@extends('website.layout.default')
@section('content')
    <div class="row mt-5">
        <div class="col-md-12 text-right">
            <h1 class="p-3">الكليات</h1>
        </div>
        <div class="col-md-12 text-right">
            <a class="caption" href="{{route('home')}}">الرئيسية</a>
            <span class="caption">|</span>
            <a class="caption" href="{{route('collages')}}">الكليات</a>
    </div>
    </div>
    <section class="collages mt-5 mb-5 bg-white box-shadow">
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
@endsection
