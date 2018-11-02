<?php


Route::get('/test', function(){

    return App\Profile::find(1)->user;

});


Route::get('/', [

    'uses' => 'FrontEndController@index',
    'as' => 'index'

]);

Route::get('/post/{slug}', [

    'uses' => 'FrontEndController@singlePost',
    'as' => 'post.single'

]);

Route::get('/category/{id}', [

    'uses' => 'FrontEndController@category',
    'as' => 'category.single'

]);

Route::get('/tag/{id}', [

    'uses' => 'FrontEndController@tag',
    'as' => 'tag.single'
]);

Route::get('/results', function(){

    $posts = \App\Post::where('title', 'like', '%'.request('query').'%')->get();

    return view('results')->with('posts', $posts)
    ->with('title', 'Search results for: '. request('query'))
    ->with('setting', \App\Setting::first())
    ->with('categories', \App\Category::take(5)->get())
    ->with('query', request('query'));

});


Route::post('/subscribe', function(){

    $email = request('email');

    Newsletter::subscribe($email);

    Session::flash('subsrcibed', 'Successfully Subscribed!');

    return redirect()->back();

});


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::group(['prefix' => 'admin', 'middleware' => 'auth'], function() {

    Route::get('/post/create', [

        'uses' => 'PostsController@create',
        'as'   => 'post.create'

    ]);

    Route::post('/post/store', [

        'uses' => 'PostsController@store',
        'as'   => 'post.store'

    ]);

    Route::get('/posts/trashed', [

        'uses' => 'PostsController@trashed',
        'as' => 'posts.trashed'

    ]);

    Route::get('/post/kill/{id}', [

        'uses' => 'PostsController@kill',
        'as' => 'post.kill'

    ]);

    Route::get('/post/restore/{id}', [

        'uses' => 'PostsController@restore',
        'as' => 'post.restore'

    ]);

    Route::get('/posts', [

        'uses' => 'PostsController@index',
        'as' => 'posts'

    ]);

    Route::get('/post/edit/{id}', [

        'uses' => 'PostsController@edit',
        'as' => 'post.edit'

    ]);

    Route::post('/post/update/{id}', [

        'uses' => 'PostsController@update',
        'as' => 'post.update'

    ]);

    Route::get('/post/delete/{id}', [

        'uses' => 'PostsController@destroy',
        'as' => 'post.delete'

    ]);

    Route::get('/category/create', [

        'uses' => 'CategoriesController@create',
        'as' => 'category.create'

    ]);

    Route::get('/categories', [

        'uses' => 'CategoriesController@index',
        'as' => 'categories'

    ]);

    Route::post('/category/store', [

        'uses' => 'CategoriesController@store',
        'as'   => 'category.store'

    ]);

    Route::get('/category/edit/{id}', [

        'uses' => 'CategoriesController@edit',
        'as'   => 'category.edit'

    ]);

    Route::get('/category/delete/{id}', [

        'uses' => 'CategoriesController@destroy',
        'as'   => 'category.delete'

    ]);

    Route::post('/category/update/{id}', [

        'uses' => 'CategoriesController@update',
        'as'   => 'category.update'

    ]);

    Route::get('/tags', [

        'uses' => 'TagsController@index',
        'as'   => 'tags'

    ]);

    Route::get('/tag/create', [

        'uses' => 'TagsController@create',
        'as'   => 'tag.create'

    ]);

    Route::get('/tag/edit/{id}', [

        'uses' => 'TagsController@edit',
        'as'   => 'tag.edit'

    ]);

    Route::post('/tag/store', [

        'uses' => 'TagsController@store',
        'as'   => 'tag.store'

    ]);

    Route::post('/tag/update/{id}', [

        'uses' => 'TagsController@update',
        'as'   => 'tag.update'

    ]);

    Route::get('/tag/delete/{id}', [

        'uses' => 'TagsController@destroy',
        'as'   => 'tag.delete'

    ]);

    Route::get('users', [

        'uses' => 'UsersController@index',
        'as' => 'users'

    ]);

    Route::get('user/create', [

        'uses' => 'UsersController@create',
        'as' => 'user.create'

    ]);


    Route::post('user/store', [

        'uses' => 'UsersController@store',
        'as' => 'user.store'

    ]);

    Route::get('user/admin/{id}', [

        'uses' => 'UsersController@admin',
        'as' => 'user.admin'

    ])->middleware('admin');

    Route::get('user/not-admin/{id}', [

        'uses' => 'UsersController@not_admin',
        'as' => 'user.not.admin'

    ])->middleware('admin');

    Route::get('user/profile', [

        'uses' => 'ProfilesController@index',
        'as' => 'user.profile'

    ]);

    Route::get('user/delete/{id}', [

        'uses' => 'UsersController@destroy',
        'as' => 'user.delete'

    ]);

    Route::post('/user/profile/update', [

        'uses' => 'ProfilesController@update',
        'as' => 'user.profile.update'

    ]);

    Route::get('/settings', [

        'uses' => 'SettingsController@index',
        'as' => 'settings'

    ])->middleware('admin');

    Route::post('/settings/update', [

        'uses' => 'SettingsController@update',
        'as' => 'settings.update'

    ])->middleware('admin');

});
