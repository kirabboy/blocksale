<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    //
    public function getLogin(){
        return view('admin.login');
    }

    public function postLogin(Request $request){
        if(Auth::guard('admin')->attempt($request->only('username','password'))){
            return redirect()->route('index')->with('success','Đăng nhập thành công');
        }else{
            return back()->with('error','Đăng nhập thất bại');

        }
    }
}
