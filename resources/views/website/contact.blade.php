@extends('website.layout.default')
@section('content')
    <section class="contactSection mt-5">
        <div class="row mt-5">
            <div class="col-md-6">
                <form method="post" action="{{route('ticket.store')}}">
                    @csrf
                    <div class="form-group text-right">
                        <label for="name">الاسم</label>
                        <input class="form-control" type="text" name="name" id="name" required>
                    </div>
                    <div class="form-group text-right">
                        <label for="email">البريد الالكتروني</label>
                        <input class="form-control" type="text" name="email" id="email">
                    </div>
                    <div class="form-group text-right">
                        <label for="title">العنوان</label>
                        <input class="form-control" type="text" name="title" id="title">
                    </div>
                    <div class="form-group text-right">
                        <label for="message">الرسالة</label>
                        <textarea class="form-control" name="message" id="message"></textarea>
                    </div>
                    <div class="form-group text-right">
                        <label for="attachment">المرفقات</label>
                        <input type="file" name="attachment" id="attachment">
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn w-100 ticket-submit">ارسال</button>
                    </div>
                </form>
            </div>
            <div class="col-md-6">
                <img src="{{asset('assets/img/contact.avif')}}" class="w-100">
            </div>
        </div>
    </section>
@endsection
