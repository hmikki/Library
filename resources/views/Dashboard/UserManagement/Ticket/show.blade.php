@extends('AhmedPanel.crud.main')
@section('style')
    <style>
        .TicketCard{
            padding: 10px 25px;
            border-radius: 20px;
            margin: 20px;
            font-size: 17px;
            min-width: 250px;
            display: inline-block;
        }
        .TicketCardUser{
            background-color: #e2e0e0;
        }
        .TicketCardAdmin{
            background-color: #e3b9b9;
        }
        .TicketCardLRUser{
            @if(app()->getLocale() == 'ar')
                text-align: right;
            @else
                text-align: left;
            @endif
        }
        .TicketCardLRAdmin{
            @if(app()->getLocale() == 'ar')
                text-align: left;
            @else
                text-align: right;
            @endif
        }
    </style>
@endsection
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header " data-background-color="{{ config('app.color') }}">
                    <h4 class="title" style="display: inline-block">{{__('dashboard.show')}} {{__('crud.'.$lang.'.crud_the_name')}}</h4>
                    @if($Object->getStatus() == \App\Helpers\Constant::TICKETS_STATUS['Open'])
                        <a href="{{url('dashboard/user_managements/tickets/'.$Object->getId().'/close')}}" class="btn btn-white" style="margin: 0;float: @if(app()->getLocale()=='ar') left @else right @endif"><i class="fa fa-window-close"></i>{{__('dashboard.close')}}</a>
                    @endif

                </div>
                <div class="card-content">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-content table-responsive">
                                    <div class="col-md-6">
                                        <div class="card">
                                            <div class="card-content table-responsive">
                                                <table class="table table-hover">
                                                    <tr>
                                                        <th style="border-top: none !important;">{{__('crud.'.$lang.'.name')}}</th>
                                                        <td style="border-top: none !important;">{{$Object->getName()}}</td>
                                                    </tr>
                                                    <tr>
                                                        <th style="border-top: none !important;">{{__('crud.'.$lang.'.mobile')}}</th>
                                                        <td style="border-top: none !important;">{{$Object->getMobile()}}</td>
                                                    </tr>
                                                    <tr>
                                                        <th style="border-top: none !important;">{{__('crud.'.$lang.'.email')}}</th>
                                                        <td style="border-top: none !important;">{{$Object->getEmail()}}</td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="card">
                                            <div class="card-content table-responsive">
                                                <table class="table table-hover">
                                                    <tr>
                                                        <th style="border-top: none !important;">{{__('crud.'.$lang.'.title')}}</th>
                                                        <td style="border-top: none !important;">{{$Object->getTitle()}}</td>
                                                    </tr>
                                                    <tr>
                                                        <th style="border-top: none !important;">{{__('crud.'.$lang.'.message')}}</th>
                                                        <td style="border-top: none !important;">{{$Object->getMessage()}}</td>
                                                    </tr>

                                                    <tr>
                                                        <th style="border-top: none !important;">{{__('crud.'.$lang.'.created_at')}}</th>
                                                        <td style="border-top: none !important;">{{\Carbon\Carbon::parse($Object->created_at)->format('Y-m-d')}}</td>
                                                    </tr>

                                                </table>
                                            </div>
                                        </div>
                                    </div>

{{--                                    <div class="col-md-12">--}}
{{--                                        <div class="TicketCard TicketCardUser">--}}
{{--                                            <strong> {{$Object->getTitle()}}</strong>--}}
{{--                                            <br>--}}
{{--                                            <span>{{$Object->getMessage()}}</span>--}}
{{--                                        </div>--}}
{{--                                    </div>--}}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
