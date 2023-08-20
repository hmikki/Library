@extends('website.layout.default')
@section('content')
    <div class="row mt-5 mb-0">
        <div class="col-md-12 text-right">
            <h1 class="p-3">{{$attachment->name}}</h1>
        </div>
        <div class="col-md-12 text-right">
            <a class="caption" href="{{route('home')}}">الرئيسية</a>
            <span class="caption">|</span>
            <a class="caption" href="{{route('attachments')}}">الملحقات</a>
            <span class="caption">|</span>
            <span class="caption">{{$attachment->name}}</span>
        </div>
    </div>
    <section class="">
        <div class="row">
            <div class="pictures col-lg-6 p-5">
                <div class="row">
                    @if($attachment->type == 1)
                        <video width="320" height="240" controls>
                            <source src="{{$attachment->getFile()}}" type="video/mp4">
                            Your browser does not support the video tag.
                        </video>
                    @else
                        <img src="{{asset('assets/img/file.png')}}">
                    @endif
                </div>
            </div>
            <div class="details col-lg-6 p-5">
                <div class="row pr-3 text-right pt-5">
                    <span>{{$attachment->created_at->format('Y-m-d')}}</span>
                </div>
                <div class="row">
                    <h2 class="text-right col-md-12 col-lg-12 green">{{$attachment->name}}</h2>
                    @if($attachment->type == 1)
                    <p class="text-right col-md-12 col-lg-12">فيديو</p>
                    @elseif($attachment->type == 2)
                        <p class="text-right col-md-12 col-lg-12">مستند</p>
                    @else
                        <p class="text-right col-md-12 col-lg-12">برنامج</p>
                    @endif
                </div>
                <div class="row pr-3">
                    <div class="col-md-12 mt-5">
                        <h2 class="text-right">الوصف</h2>
                    </div>
                    <div class="col-md-12 mt-5">
                    <p class="text-right">{{$attachment->description}}</p>
                    </div>
                </div>
                @auth('web')
                <div class="row mt-5">
                    <div class="col-md-6"> <a class="btn bg-yellow w-100" href="{{$attachment->getFile()}}" download="">تحميل</a></div>
                </div>
                @endauth
            </div>
        </div>
    </section>
@endsection
