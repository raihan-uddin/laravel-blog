<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Model\user\post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
    	// $posts = post::where('status',1)->get();
    	$posts = post::where('status',1)->paginate(5);
    	// return $posts;
    	return view('user.blog', compact('posts'));
    }
}