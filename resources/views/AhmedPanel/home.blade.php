@extends('AhmedPanel.layouts.app')

@section('content')
    <div class="row">
        <h3 class="px-3">أهلا بك
            <span style="color: #d4a806">{{auth('dashboard')->user()->getName()}}</span></h3>
    </div>
    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-12" onclick="window.location='dashboard/app_content/collages'" style="cursor: pointer">
            <div class="card card-stats">
                <div class="card-header" data-background-color="black">
                    <i class="material-icons">flag-pennant</i>
                </div>
                <div class="card-content">
                    <p class="category">{{__('crud.Collages.crud_names')}}</p>
                    <h3 class="title">{{\App\Models\Collage::where('is_active', true)->count()}}</h3>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12" onclick="window.location='dashboard/app_content/categories'">
            <div class="card card-stats" style="cursor: pointer">
                <div class="card-header" data-background-color="black">
                    <i class="material-icons">inventory_2</i>
                </div>
                <div class="card-content">
                    <p class="category">{{__('crud.Categories.crud_names')}}</p>
                    <h3 class="title">{{\App\Models\Category::where('is_active', true)->count()}}</h3>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12" onclick="window.location='dashboard/app_content/books'">
            <div class="card card-stats" style="cursor: pointer">
                <div class="card-header" data-background-color="black">
                    <i class="material-icons">book</i>
                </div>
                <div class="card-content">
                    <p class="category">{{__('crud.Books.crud_names')}}</p>
                    <h3 class="title">{{\App\Models\Book::where('is_active', true)->count()}}</h3>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-12" onclick="window.location='dashboard/app_content/attachments'">
            <div class="card card-stats" style="cursor: pointer">
                <div class="card-header" data-background-color="black">
                    <i class="material-icons">camera</i>
                </div>
                <div class="card-content">
                    <p class="category">{{__('crud.Attachments.crud_names')}}</p>
                    <h3 class="title">{{\App\Models\Attachment::where('is_active', true)->count()}}</h3>
                </div>
            </div>
        </div>
    </div>
@endsection
@push('script')
@endpush
