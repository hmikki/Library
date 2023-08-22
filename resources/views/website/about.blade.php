@extends('website.layout.default')
@section('content')
    <section class="aboutSection mt-5">
        <div class="row">
        <div class="col-md-6">
            <img src="{{asset('assets/img/about.avif')}}" class="w-100">
        </div>
        <div class="col-md-6">
        <h1 class="text-center green">من نحن</h1>
        <p class="text-right">لوريم ايبسوم هو نموذج افتراضي يوضع في التصاميم لتعرض على العميل ليتصور طريقه وضع النصوص بالتصاميم سواء كانت تصاميم مطبوعه ... بروشور او فلاير على سبيل المثال ... او نماذج مواقع انترنت ...

            وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم ويقول البعض ان وضع النصوص التجريبية بالتصميم قد تشغل المشاهد عن وضع الكثير من الملاحظات او الانتقادات للتصميم الاساسي. "</p>

        </div>
        </div>
    </section>
    <section class="collages mt-5 mb-5">
        <h3 class="text-center">فريق العمل</h3>
        <div class="row">
            <div class="teamItem" style="cursor: pointer">
                    <div class="collageImage">
                        <img src="{{asset('assets/img/team4.jpg')}}" width="50px" height="150px">
                    </div>
                    <div class="collageName">
                        <h6 class="text-center">برهان القردوع</h6>
                    </div>
                </div>
            <div class="teamItem" style="cursor: pointer">
                <div class="collageImage">
                    <img src="{{asset('assets/img/team3.jpg')}}" width="50px" height="150px">
                </div>
                <div class="collageName">
                    <h6 class="text-center">صلاح الصربي</h6>
                </div>
            </div>
            <div class="teamItem" style="cursor: pointer">
                <div class="collageImage">
                    <img src="{{asset('assets/img/team2.jpg')}}" width="50px" height="150px">
                </div>
                <div class="collageName">
                    <h6 class="text-center">احمد تاج الدين</h6>
                </div>
            </div>
            <div class="teamItem" style="cursor: pointer">
                <div class="collageImage">
                    <img src="{{asset('assets/img/team1.jpg')}}" width="50px" height="150px">
                </div>
                <div class="collageName">
                    <h6 class="text-center">صادق الصربي</h6>
                </div>
            </div>
        </div>


    </section>
@endsection
