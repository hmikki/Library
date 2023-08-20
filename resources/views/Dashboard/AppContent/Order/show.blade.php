@extends('AhmedPanel.crud.main')
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header " data-background-color="{{ config('app.color') }}">
                    <h4 class="title">{{__('dashboard.show')}} {{__(('crud.'.$lang.'.crud_the_name'))}}</h4>
                </div>
                <div class="card-content">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-content table-responsive">
                                    <table class="table table-hover">
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.User.name')}}</th>
                                            <td style="border-top: none !important;">{{$Object->user->getName()}}</td>
                                        </tr>
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.User.email')}}</th>
                                            <td style="border-top: none !important;">{{$Object->user->getEmail()}}</td>
                                        </tr>
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.User.mobile')}}</th>
                                            <td style="border-top: none !important;">{{$Object->user->getMobile()}}</td>
                                        </tr>
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.Country.crud_the_name')}}</th>
                                            <td style="border-top: none !important;">{{app()->getLocale() == 'ar'?$Object->user->country->getNameAr():$Object->user->country->getName()}}</td>
                                        </tr>
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.City.crud_the_name')}}</th>
                                            <td style="border-top: none !important;">{{app()->getLocale() == 'ar'?$Object->user->city->getNameAr() :$Object->user->city->getName()}}</td>
                                        </tr>
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.User.address')}}</th>
                                            <td style="border-top: none !important;">{{$Object->user->getAddress()}}</td>
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
                                            <th style="border-top: none !important;">{{__('crud.Product.crud_names')}}</th>
                                        </tr>
                                        @foreach($Object->orders_products as $item)
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.Product.name')}}</th>
                                            <td style="border-top: none !important;">{{app()->getLocale() == 'ar'?$item->product->getNameAr():$item->product->getName()}}</td>
                                        </tr>
                                            <tr>
                                                <th style="border-top: none !important;">{{__('crud.Product.images')}}</th>
                                            </tr>
                                            <tr>
                                                @foreach($item->product->media as $media)
                                                <td style="border-top: none !important;"><img src="{{asset($media->file)}}" style="width: 200px; height: 200px;"></td>
                                                @endforeach
                                            </tr>
                                            @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-content table-responsive">
                                    <table class="table table-hover">
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.Order.discount_id')}}</th>
                                            <td style="border-top: none !important;">{{$Object->getDiscountId()}}</td>
                                        </tr>
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.Order.discount_amount')}}</th>
                                            <td style="border-top: none !important;">{{$Object->getDiscountAmount()}}</td>
                                        </tr>
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.Order.amount')}}</th>
                                            <td style="border-top: none !important;">{{$Object->getAmount()}}</td>
                                        </tr>
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.Order.tax')}}</th>
                                            <td style="border-top: none !important;">{{$Object->getTax()}}</td>
                                        </tr>
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.Order.delivery')}}</th>
                                            <td style="border-top: none !important;">{{$Object->getDelivery()}}</td>
                                        </tr>
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.Order.total')}}</th>
                                            <td style="border-top: none !important;">{{$Object->getTotal()}}</td>
                                        </tr>
                                        <tr>
                                            <th style="border-top: none !important;">{{__('crud.Order.status')}}</th>
                                            <td style="border-top: none !important;">{{__('crud.Order.Statuses.'.$Object->getStatus())}}</td>
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
                                            <th style="border-top: none !important;">{{__('crud.Order.order_statuses')}}</th>
                                        </tr>
                                        @foreach($Object->order_status as $order_status)
                                            <tr>
                                            <td style="border-top: none !important;">{{__('crud.Order.order_id')}}: {{$order_status->getOrderId()}}</td>
                                            <td style="border-top: none !important;">{{__('crud.Order.order_status')}}: {{$order_status->getStatus()}}</td>
                                            </tr>
                                        @endforeach
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
