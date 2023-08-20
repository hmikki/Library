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

class HomeController extends Controller
{
    public function index(){
        $title = Setting::where('key', 'title')->first();
        $email = Setting::where('key', 'email')->first();
        $mobile = Setting::where('key', 'mobile')->first();
        $collages = Collage::where('is_active', true)->limit(4)->get();
        $books = Book::where('is_active', true)->limit(4)->get();
        return view('website.index')->with(array(
            'title' => $title,
            'mobile' => $mobile,
            'email' => $email,
            'collages' => $collages,
            'books' => $books,
        ));
    }
    public function collages_show($id){
        $categories = Category::where('collage_id', $id)->get();
        return view('website.categories')->with(array('categories'=>$categories));
    }
    public function books_categories($id){
        $books = Book::where('category_id', $id)->get();
        return view('website.books')->with(array('books'=>$books));
    }
    public function privacy(){
        return view('privacy');
    }
    public function terms(){
        return view('terms');
    }
    public function about(){
        return view('website.about');
    }
    public function contact(){
        return view('website.contact');
    }
    public function collages(){
        $collages = Collage::where('is_active', true)->get();
        return view('website.collages')->with(array('collages'=>$collages));
    }
    public function attachments(){
        $videos = Attachment::where('is_active', true)->where('type', 1)->get();
        $documents = Attachment::where('is_active', true)->where('type', 2)->get();
        $applications = Attachment::where('is_active', true)->where('type', 3)->get();
        return view('website.attachments')->with(array('documents'=>$documents, 'videos'=>$videos, 'applications'=>$applications));
    }
    public function categories(){
        $categories = Category::where('is_active', true)->get();
        return view('website.categories')->with(array('categories'=>$categories));
    }
    public function books(){
        $books = Book::where('is_active', true)->get();
        return view('website.books')->with(array('books'=>$books));
    }
    public function show_book($id){
        $book = Book::find($id);
        return view('website.show_book')->with(array('book'=>$book));
    }
    public function show_attachment($id){
        $attachment = Attachment::find($id);
        return view('website.show_attachment')->with(array('attachment'=>$attachment));
    }
    public function login(){
        return view('website.index');
    }
    public function store_ticket(Request $request)
    {
        $Ticket =new  Ticket();

        $Ticket->setName($request->name);
        $Ticket->setEmail($request->email);
        $Ticket->setTitle($request->title);
        $Ticket->setMessage($request->message);
        if($request->hasFile('attachment')) {
            $Ticket->setAttachment($request->file('attachment'));
        }
        $Ticket->save();
        return redirect()->route('contact')->with('status','تم ارسال النموذج بنجاح');
    }

    public function verify(Request $request){
        if($request->has('token')){
            $verify = (new VerifyAccounts)->where('token',$request->token)->first();
            if($verify){
                $User = User::where('id',$verify->user_id)->first();
                if($User->email_verified_at == null){
                    $User->email_verified_at = now();
                    $User->save();
                    $message = 'Email Verified Successfully';
                }else
                    $message = 'Email Verified Before !';
            }else
                $message = 'Verification Token is invalid !';
        }else
            $message = 'Verification Token is required !';
        return view('mail.verification_done',compact('message'));
    }
}
