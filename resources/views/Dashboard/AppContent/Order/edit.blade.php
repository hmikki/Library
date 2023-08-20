@extends('AhmedPanel.crud.main')
@section('title') | {{__('dashboard.edit')}} {{__('crud.'.$lang.'.crud_the_name')}} @endsection
@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header" data-background-color="{{ config('app.color') }}">
                    <h4 class="title">{{__('dashboard.edit')}} {{__(('crud.'.$lang.'.crud_the_name'))}}</h4>
                </div>
                <div class="card-content">
                    <form action="{{url($redirect.'/'.$Object->id)}}" method="post" enctype="multipart/form-data">
                        <input name="_method" type="hidden" value="PUT">
                        @csrf
                        <div class="row">
                            @foreach($Fields as $Field)
                                @if(isset($Field['editable']))
                                    @if($Field['editable'])
                                        @if($Field['type'] != 'multi_checkbox' && $Field['type'] != 'images')
                                            {!! \App\Traits\AhmedPanelTrait::Fields($Field,$Object->{$Field['name']},$lang) !!}
                                        @else
                                            {!! \App\Traits\AhmedPanelTrait::Fields($Field,$Object,$lang) !!}
                                        @endif
                                    @endif
                                @else
                                    @if($Field['type'] != 'multi_checkbox' && $Field['type'] != 'images')
                                        {!! \App\Traits\AhmedPanelTrait::Fields($Field,$Object->{$Field['name']},$lang) !!}
                                    @else
                                        {!! \App\Traits\AhmedPanelTrait::Fields($Field,$Object,$lang) !!}
                                    @endif
                                @endif
                            @endforeach
                        </div>
                        <div class="col-md-12">
                            <div class="form-group label-floating">
                                <label for="status" class="control-label">{{__('crud.'.$lang.'.status')}} *</label>
                                 <select id="status" name="status" required class="form-control {{ $errors->has('status') ? ' is-invalid' : '' }}">
                                    <option></option>
                                    <option @if($Object->status == "{{\App\Helpers\Constant::ORDER_STATUSES['InProgress']}}") selected @endif value="{{\App\Helpers\Constant::ORDER_STATUSES['InProgress']}}">{{__('crud.Order.in_progress')}}</option>
                                    <option @if($Object->status == "{{\App\Helpers\Constant::ORDER_STATUSES['Rejected']}}") selected @endif value="{{\App\Helpers\Constant::ORDER_STATUSES['Rejected']}}">{{__('crud.Order.rejected')}}</option>
                                    <option @if($Object->status == "{{\App\Helpers\Constant::ORDER_STATUSES['Accepted']}}") selected @endif value="{{\App\Helpers\Constant::ORDER_STATUSES['Accepted']}}">{{__('crud.Order.accepted')}}</option>
                                    <option @if($Object->status == "{{\App\Helpers\Constant::ORDER_STATUSES['InDelivery']}}") selected @endif value="{{\App\Helpers\Constant::ORDER_STATUSES['InDelivery']}}">{{__('crud.Order.in_delivery')}}</option>
                                    <option @if($Object->status == "{{\App\Helpers\Constant::ORDER_STATUSES['Received']}}") selected @endif value="{{\App\Helpers\Constant::ORDER_STATUSES['Received']}}">{{__('crud.Order.received')}}</option>
                                </select>
                                </div>
                            @if ($errors->has('status'))
                                <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('status') }}</strong>
                                    </span>
                            @endif
                        </div>
                        <div class="row submit-btn">
                            <button type="submit" class="btn btn-primary"
                                    style="margin-left:15px;margin-right:15px;">{{__('dashboard.save')}}</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

@endsection
@push('script')
    <script>

        function permissionCheck() {
            let roleEls = document.getElementsByClassName('role');
            let permissionEls = document.getElementsByClassName('permission');
            for (let p = 0; p < permissionEls.length; p++) {
                // permissionEls[p].checked=false;
                permissionEls[p].disabled = false;
            }
            for (let r = 0; r < roleEls.length; r++) {
                let roleEl = roleEls[r];
                let permission = RolePermission[roleEl.id];
                for (let i = 0; i < permission.length; i++) {
                    let permissionEl = document.getElementById('permission' + permission[i]);
                    if (roleEl.checked) {
                        permissionEl.checked = true;
                        permissionEl.disabled = true;
                    }
                }
            }
        }
        permissionCheck();
        function ParentCheck(id) {
            let main_permission = document.getElementById('permission' + id);
            let permissionEls = document.getElementsByClassName('permission_' + id);
            for (let p = 0; p < permissionEls.length; p++) {
                permissionEls[p].checked = !!main_permission.checked;
            }
        }
        function TriggerParentCheck(id, id2) {
            let main_permission = document.getElementById('permission' + id);
            let sub_permission = document.getElementById('permission' + id2);
            if (sub_permission.checked) {
                main_permission.checked = true;
            }
        }
    </script>
@endpush
