<?php

namespace App\Http\Controllers;

use App\Models\Attachment;
use App\Models\Book;
use App\Models\Category;
use App\Models\Collage;
use App\Models\Post;
use App\Models\Service;
use App\Models\Setting;
use App\Models\Ticket;
use App\Models\User;
use App\Models\VerifyAccounts;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{

    public function login(Request $request){
        $data = $request->all();

        $this->validate($request, [
            'email' => 'required',
            'password' => 'required',
        ]);
        if(auth('web')->attempt(array('email'=> $data['email'], 'password' => $data['password'])))
        {
            return redirect()->route('home');
        }else{
            return redirect()->back()->with('error', 'بيانات الدخول غير صحيحة');
        }
    }
    public function register(Request $request)
    {

        request()->validate([
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6|max:8',
        ]);

        $data = $request->all();

        $check = $this->create($data);
//        if ($check){
//            auth('web')->attempt(array('email'=> $data['email'], 'password' => $data['password']));
//        }
        return redirect()->route('home');
    }
    public function create(array $data)
    {
        return User::create([
            'email' => $data['email'],
            'password' => Hash::make($data['password'])
        ]);
    }
    public function logout()
    {
        Auth::guard('web')->logout();
        return redirect()->route('home');
    }
}
