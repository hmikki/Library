
<nav class="navbar navbar-expand-lg navbar-light bg-white">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="navbar-brand mt-2 mt-lg-5 ml-2 ml-lg-5 font-weight-bolder" href="{{route('home')}}">
            <img src="{{asset('assets/img/logo.jpeg')}}" width="100px">
        </a>
        <ul class="navbar-nav ml-auto mt-2 mt-lg-5">
            <li class="nav-item active">
                <a class="nav-link" href="{{route('home')}}">الرئيسية <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{route('collages')}}">الكليات</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{route('attachments')}}">الملحقات</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{route('contact')}}">راسلنا</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{route('about')}}">حول</a>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0 mt-2 mt-lg-5 loginForm">
            <div class="col-lg-12">
                @guest
                <div class="row">
                    <div class= "mr-2 LogNavBtn"><a type="button" id="LogNavIcon" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-user"></i></a></div>
                    <div class="ml-2 mr-3 LogNavBtn">
                        <a type="button" id="LogNavBtn" href="#" data-toggle="modal" data-target="#exampleModal"> تسجيل الدخول</a>
                        <span>/</span>
                        <a type="button" id="RegNavBtn" href="#" data-toggle="modal" data-target="#exampleModalRegister"> تسجيل جديد</a>
                    </div>
                </div>
                @endguest
                @auth('web')
                        <div class="row">
                            <div class= "mr-2 LogNavBtn"><a type="button" id="LogNavIcon" href="#" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-user"></i></a></div>
                            <div class="ml-2 mr-3 LogNavBtn">
                                <a id="LogNavBtn" href="#logout_form" onclick="event.preventDefault(); document.getElementById('logout_form').submit();"> تسجيل خروج</a>
                                </div>
                        </div>
                    @endauth
            </div>
        </form>
    </div>
</nav>
<form method="POST" id="logout_form" action="{{ route('logout') }}" style="display: none;">
    @csrf
</form>

<!-- Login Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">تسجيل الدخول</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <form method="post" action="{{route('login')}}">
                    @csrf
                    <div class="form-group text-right">
                        <label for="email">البريد الالكتروني</label>
                        <input class="form-control" type="text" name="email" id="email">
                    </div>
                    <div class="form-group text-right">
                        <label for="password">كلمة المرور</label>
                        <input class="form-control" type="password" name="password" id="password">
                    </div>
                    <div class="modal-footer">
                    <div class="form-group">
                        <button type="submit" class="btn w-100 ticket-submit">تسجيل الدخول</button>
                    </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Register Modal -->
<div class="modal fade" id="exampleModalRegister" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelRegister" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabelRegister">تسجيل جديد</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

                <form method="post" action="{{route('register')}}">
                    @csrf
                    <div class="form-group text-right">
                        <label for="email">البريد الالكتروني</label>
                        <input class="form-control" type="text" name="email" id="email">
                    </div>
                    <div class="form-group text-right">
                        <label for="password">كلمة المرور</label>
                        <input class="form-control" type="password" name="password" id="password">
                    </div>
                    <div class="modal-footer">
                        <div class="form-group">
                            <button type="submit" class="btn w-100 ticket-submit">تسجيل</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
