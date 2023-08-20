
@extends('AhmedPanel.crud.main')
@section('title') | {{ __('dashboard.add') }} {{ __('crud.' . $lang . '.crud_name') }} @endsection
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header" data-background-color="{{ config('app.color') }}">
                    <h4 class="title">{{ __('dashboard.add') }} {{ __('crud.' . $lang . '.crud_name') }}</h4>
                </div>
                <div class="card-content">
                    <form action="{{ url($redirect) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            @foreach ($Fields as $Field)
                                {!! \App\Traits\AhmedPanelTrait::Fields($Field, old($Field['name']), $lang) !!}
                            @endforeach
                        </div>

                        <div class="row submit-btn">
                            <button type="submit" class="btn btn-primary"
                                    style="margin-left:15px;margin-right:15px;">{{ __('dashboard.save') }}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
