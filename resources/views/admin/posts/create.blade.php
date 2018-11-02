@extends('layouts.app')

@section('content')

@include('admin.includes.errors')

<div class="card card-default">

    <div class="card-header">

        Creat a post

    </div>
    <div class="card-body">

        <form action="{{ route('post.store') }}" method="post" enctype="multipart/form-data">

            {{ csrf_field() }}

            <div class="form-group">

                <label for="title">Title</label>
                <input type="text" name="title" class="form-control"/>

            </div>
            <div class="form-group">

                    <label for="Featured">Featured Image</label>
                    <input type="file" name="featured" class="form-control"/>

            </div>

            <div class="form-group">

                <label for="category">Category</label>

                <select name="category_id" id="category" class="form-control">

                    @foreach ($categories as $category)

                        <option value="{{ $category->id }}">{{ $category->name }}</option>

                    @endforeach

                </select>

            </div>

            <div class="form-group">

                <div class="checkbox">

                    <label for="tags">Select Tags: </label>

                        @foreach ($tags as $tag)

                        <input type="checkbox" name="tags[]" value="{{ $tag->id }}" id=""> {{ $tag->tag }}

                        @endforeach

                </div>

            </div>

            <div class="form-group" id="">
                    <label for="Content" id="toolbar">Content</label>
                    <textarea name="content" id="summernote" rows="10" class="form-control"></textarea>
            </div>

            <div class="form-group">

                <button class="btn btn-success" type="submit">

                    Submit

                </button>

            </div>

        </form>

    </div>

</div>

@endsection

