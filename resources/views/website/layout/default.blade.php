<!DOCTYPE html>
<html lang="en">
@include('website.includes.head')
<body>
@if (session('status'))
    <div class="alert alert-success mb-0 text-center" role="alert">
        {{ session('status') }}
    </div>
@endif
@if (session('error'))
    <div class="alert alert-danger mb-0 text-center" role="alert">
        {{ session('error') }}
    </div>
@endif
@if ($errors->any())
    <div class="alert alert-danger mb-0 text-center">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<div class="container">
    @include('website.includes.header')
    @yield('content')
</div>

@include('website.includes.footer')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Popper.JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<!-- Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
@yield('scripts')
</body>
</html>
