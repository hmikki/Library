@extends('AhmedPanel.crud.main')
@section('title') | {{__('crud.'.$lang.'.crud_names')}} @endsection
@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header" data-background-color="{{ config('app.color') }}">
                <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                        <ul class="nav nav-tabs" data-tabs="tabs" role="tablist">
                            <li class="nav-item active">
                                <a class="nav-link active" style="font-size:15px;font-weight: bold" href="#pages" data-toggle="tab">{{__('crud.'.$lang.'.pages')}}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#values" style="font-size:15px;font-weight: bold" data-toggle="tab">{{__('crud.'.$lang.'.other')}}</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="card-content table-responsive">
                <div class="tab-content">
                    <div class="tab-pane active" id="pages">
                        <table class="table">
                            <thead class="text-primary">
                                @foreach($Columns as $column)
                                    <th @if( $column['order']) onclick="orderBy('{{$column['name']}}')" class="pointer" @endif>
                                        {{__('crud.'.$lang.'.'.$column['name'])}}
                                        @if( $column['order'])
                                            @if(request()->has('order_type') && request()->order_by ==$column['name'])
                                                @if(request('order_type') == 'desc')
                                                    <span class="px-3"><i class="fa fa-caret-down"></i></span>
                                                @else
                                                    <span class="px-3"><i class="fa fa-caret-up"></i></span>
                                                @endif
                                            @else
                                                <span class="px-3"><i class="fa fa-sort"></i></span>
                                            @endif
                                        @endif
                                    </th>
                                @endforeach
                                <th><a href="#" onclick="AdvanceSearch()">{{__('dashboard.advance_search')}} <i id="advance_search_caret" class="fa fa-caret-down"></i></a></th>
                            </thead>
                            <tbody>
                                <tr id="advance_search">
                                    <form action="{{url($redirect)}}" id="search">
                                        <input type="hidden" name="order_by" id="order_by" value="{{app('request')->input('order_by')}}">
                                        <input type="hidden" name="order_type" id="order_type" value="{{app('request')->input('order_type')}}">
                                        @foreach($Columns as $Column)
                                            <td>{!! \App\Traits\AhmedPanelTrait::SearchColumns($Column,$lang) !!}</td>
                                        @endforeach
                                        <td>
                                            <input type="submit" class="btn btn-sm btn-primary" style="margin: 0;" value="{{__('dashboard.search')}}">
                                        </td>
                                    </form>
                                </tr>
                            @foreach($Objects as $object)
                            @if($object->type == \App\Helpers\Constant::SETTING_TYPE['Page'])
                                <tr>
                                    @foreach($Columns as $Column)
                                        <td>{!! \App\Traits\AhmedPanelTrait::Columns($Column,$object) !!}</td>
                                    @endforeach
                                    <td class="text-primary">
                                        @foreach($Links as $Link)
                                            {!! \App\Traits\AhmedPanelTrait::Links($Link,$object,$redirect) !!}
                                        @endforeach
                                    </td>
                                </tr>
                            @endif
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane" id="values">
                        <table class="table">
                            <thead class="text-primary">
                                @foreach($Columns as $column)
                                    <th @if( $column['order']) onclick="orderBy('{{$column['name']}}')" class="pointer" @endif>
                                        {{__('crud.'.$lang.'.'.$column['name'])}}
                                        @if( $column['order'])
                                            @if(request()->has('order_type') && request()->order_by ==$column['name'])
                                                @if(request('order_type') == 'desc')
                                                    <span class="px-3"><i class="fa fa-caret-down"></i></span>
                                                @else
                                                    <span class="px-3"><i class="fa fa-caret-up"></i></span>
                                                @endif
                                            @else
                                                <span class="px-3"><i class="fa fa-sort"></i></span>
                                            @endif
                                        @endif
                                    </th>
                                @endforeach
                                <th><a href="#" onclick="AdvanceSearch()">{{__('dashboard.advance_search')}} <i id="advance_search_caret" class="fa fa-caret-down"></i></a></th>
                            </thead>
                            <tbody>
                                <tr id="advance_search">
                                    <form action="{{url($redirect)}}" id="search">
                                        <input type="hidden" name="order_by" id="order_by" value="{{app('request')->input('order_by')}}">
                                        <input type="hidden" name="order_type" id="order_type" value="{{app('request')->input('order_type')}}">
                                        @foreach($Columns as $Column)
                                            <td>{!! \App\Traits\AhmedPanelTrait::SearchColumns($Column,$lang) !!}</td>
                                        @endforeach
                                        <td>
                                            <input type="submit" class="btn btn-sm btn-primary" style="margin: 0;" value="{{__('dashboard.search')}}">
                                        </td>
                                    </form>
                                </tr>
                            @foreach($Objects as $object)
                                @if($object->type == \App\Helpers\Constant::SETTING_TYPE['Values'])

                                    <tr>
                                        @foreach($Columns as $Column)
                                            <td>{!! \App\Traits\AhmedPanelTrait::Columns($Column,$object) !!}</td>
                                        @endforeach
                                        <td class="text-primary">
                                            @foreach($Links as $Link)
                                                {!! \App\Traits\AhmedPanelTrait::Links($Link,$object,$redirect) !!}
                                            @endforeach
                                        </td>
                                    </tr>
                                @endif
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

