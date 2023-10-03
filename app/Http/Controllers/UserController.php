<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
    public function Register(Request $request) {
        $data = $request->validate([
            'name' => ['required', Rule::unique('users', 'name')],
            'email' => ['required', 'min:2'],
            'password' => ['required']
        ]);

        $data['password'] = bcrypt($data['password']);
        $user = User::create($data);
        Auth::login($user);

        return redirect('/');
    }

    public function Logout() {
        auth()->logout();
        return redirect('/');
    }

    public function Login(Request $request) {
        $data = $request->validate([
            'loginname' => ['required'],
            'loginpassword' => ['required']
        ]);

        if (Auth::attempt(['name' => $data['loginname'], 'password' => $data['loginpassword']])) {
            $request->session()->regenerate();
        }

        
        return redirect('/');
    }

    public function RedirectHome(Request $request) {
        return view('login');
      }
      
}
