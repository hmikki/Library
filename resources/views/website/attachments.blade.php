@extends('website.layout.default')
@section('content')
    <div class="row mt-50">
        <div class="col-md-12 text-right">
            <h1 class="p-3">الملحقات</h1>
        </div>
        <div class="col-md-12 text-right">
            <a class="caption" href="{{route('home')}}">الرئيسية</a>
            <span class="caption">|</span>
            <a class="caption" href="{{route('attachments')}}">الملحقات</a>
        </div>
    </div>
        <ul id="tabs" class="mt-5 nav nav-tabs">
            <li class="nav-item"><a href="" data-target="#videos" data-toggle="tab" class="nav-link small text-uppercase active black">فيديوهات</a></li>
            <li class="nav-item"><a href="" data-target="#documents" data-toggle="tab" class="nav-link small text-uppercase black">مستندات</a></li>
            <li class="nav-item"><a href="" data-target="#applications" data-toggle="tab" class="nav-link small text-uppercase black">برامج و تطبيقات</a></li>
        </ul>

    <div id="tabsContent" class="tab-content">
        <div id="videos" class="tab-pane fade  active show">
            <section class="books mt-5 box-shadow radius mb-5">
{{--                <form action="" method="post" class="search-form">--}}
{{--                    @csrf--}}
{{--                    <div class="form-group has-search">--}}
{{--                        <span class="fa fa-search form-control-feedback"></span>--}}
{{--                        <input type="text" class="form-control" placeholder="Search">--}}
{{--                    </div>--}}
{{--                </form>--}}

                <div class="row">
                    @foreach($videos as $video)
                    <div class="col-md-3 bookItem">
                        <div class="bookImage">
                            <video width="320" height="240" controls>
                                <source src="{{$video->getFile()}}" type="video/mp4">
                                Your browser does not support the video tag.
                            </video>

                        </div>
                        <div class="bookName" onclick="window.location.href='{{route('attachment', $video->id)}}'" style="cursor: pointer">
                            <h6 class="text-right">{{$video->name}}</h6>
                            <p class="text-right">{{$video->category->collage->name}}</p>
                            <p class="text-right">{{$video->category->name}}</p>
                        </div>
                    </div>
                    @endforeach
                </div>

            </section>
        </div>
        <div id="documents" class="tab-pane fade">
            <section class="books mt-5 box-shadow radius mb-5">
{{--                <form action="" method="post" class="search-form">--}}
{{--                    @csrf--}}
{{--                    <div class="form-group has-search">--}}
{{--                        <span class="fa fa-search form-control-feedback"></span>--}}
{{--                        <input type="text" class="form-control" placeholder="Search">--}}
{{--                    </div>--}}
{{--                </form>--}}
                <div class="row">
                    @foreach($documents as $document)
                    <div class="col-md-3 bookItem">
                        <div class="bookImage">
                            <img src="{{asset('assets/img/file.png')}}">
                        </div>
                        <div class="bookName" onclick="window.location.href='{{route('attachment', $document->id)}}'" style="cursor: pointer">
                            <h6 class="text-right">{{$document->name}}</h6>
                            <p class="text-right">{{$document->category->collage->name}}</p>
                            <p class="text-right">{{$document->category->name}}</p>
                        </div>
                    </div>
                    @endforeach
                </div>

            </section>
        </div>
        <div id="applications" class="tab-pane fade">
            <section class="books mt-5 box-shadow radius mb-5">
{{--                <form action="" method="post" class="search-form">--}}
{{--                    @csrf--}}
{{--                    <div class="form-group has-search">--}}
{{--                        <span class="fa fa-search form-control-feedback"></span>--}}
{{--                        <input type="text" class="form-control" placeholder="Search">--}}
{{--                    </div>--}}
{{--                </form>--}}
                <div class="row">
                    @foreach($applications as $application)
                        <div class="col-md-3 bookItem">
                            <div class="bookImage">
                                <img src="{{asset('assets/img/file.png')}}">
                            </div>
                            <div class="bookName" onclick="window.location.href='{{route('attachment', $application->id)}}'" style="cursor: pointer">
                                <h6 class="text-right">{{$application->name}}</h6>
                                <p class="text-right">{{$application->category->collage->name}}</p>
                                <p class="text-right">{{$application->category->name}}</p>
                            </div>
                        </div>
                    @endforeach
                </div>

            </section>
        </div>
    </div>
@endsection
