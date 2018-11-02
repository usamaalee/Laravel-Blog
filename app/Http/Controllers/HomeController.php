<?php

namespace App\Http\Controllers;

use App\Post;
use App\Category;
use App\User;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('admin.home')
        ->with('posts_count', Post::all()->count())
        ->with('trashed_count', Post::onlyTrashed()->count())
        ->with('categories_count', Category::all()->count())
        ->with('users_count', User::all()->count());
    }
}
