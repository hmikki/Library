<footer>
    <div class="container">
        <div class="row">
            <div class="about text-right col-lg-3">
                <h6>عن الموقع<hr/></h6>
                <p><a href="{{route('about')}}">من نحن</a> </p>
                <p><a href="{{route('contact')}}">تواصل معنا</a> </p>
                <p><a href="{{route('privacy')}}">سياسة الخصوصية</a> </p>
            </div>
            <div class="contact text-right col-lg-3">
                <h6>تواصل معنا<hr/></h6>
                <p><a href="#">{{(\App\Models\Setting::where('key', 'mobile')->first())->getValue()}}</a> </p>
            </div>
            <div class="social col-lg-6">
                <h6>منصات التواصل</h6>
                <div class="row float-left">
                    <div class="socialItem">
                        <i class="fab fa-facebook-f"></i>
                    </div>
                    <div class="socialItem">
                        <i class="fab fa-twitter"></i>
                    </div>
                    <div class="socialItem">
                        <i class="fab fa-instagram"></i>
                    </div>
                    <div class="socialItem">
                        <i class="fab fa-snapchat"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 text-center">
                <h6 class="text-center">جميع الحقوق محفوظة</h6>
            </div>
        </div>
    </div>
</footer>
