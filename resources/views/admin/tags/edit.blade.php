@extends('layouts.app')

@section('content')

@include('admin.includes.errors')

<div class="card card-default">

    <div class="card-header">

        Edit Tag: {{ $tag->tag }}

    </div>
    <div class="card-body">

        <form action="{{ route('tag.update', ['id'=>$tag->id]) }}" method="post" enctype="multipart/form-data">

            {{ csrf_field() }}

            <div class="form-group">

                <label for="name">Tag</label>
                <input type="text" name="tag" value="{{ $tag->tag }}" class="form-control"/>

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
