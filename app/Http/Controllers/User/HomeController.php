<?php
namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Model\user\category;
use App\Model\user\post;
use App\Model\user\tag;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
    	// $posts = post::where('status',1)->get();
    	$posts = post::whereStatus(1)->orderBy('created_at', 'DESC')->paginate(5);
    	// return $posts;
    	return view('user.blog', compact('posts'));
    }

    public function tag(tag $tag)
    {
    	$posts = $tag->posts();
        return view('user.blog', compact('posts'));
    }
    public function category(category $category)
    {
        $posts = $category->posts();
        return view('user.blog', compact('posts'));
        // return $category = category::whereSlug($slug)->get();
    	// return $request->all();
    }
}