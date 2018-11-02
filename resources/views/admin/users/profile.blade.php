@extends('layouts.app')

@section('content')

@include('admin.includes.errors')

<div class="card card-default">

    <div class="card-header">

        Edit your profile

    </div>
    <div class="card-body">

        <form action="{{ route('user.profile.update') }}" method="post" enctype="multipart/form-data">

            {{ csrf_field() }}

            <div class="form-group">

                <label for="name">Username</label>
                <input type="text" name="name" value="{{ $user->name }}" class="form-control"/>

            </div>

            <div class="form-group">

                <label for="name">Email</label>
                <input type="email" name="email" value="{{ $user->email }}" class="form-control"/>

            </div>

            <div class="form-group">

                    <label for="name">New Password</label>
                    <input type="text" name="password" class="form-control"/>

            </div>

            <div class="form-group">

                    <label for="name">Upload new avatar</label>
                    <input type="file" name="avatar" class="form-control"/>

            </div>

            <div class="form-group">

                    <label for="name">Facebook Profile</label>
                    <input type="text" name="facebook" value="{{ $user->profile->facebook }}" class="form-control"/>

            </div>

            <div class="form-group">

                    <label for="name">Youtube Channel</label>
                    <input type="text" name="youtube" value="{{ $user->profile->youtube }}" class="form-control"/>

            </div>

            <div class="form-group">

                    <label for="name">About you</label>
                    <textarea name="about" id="about" cols="6" rows="6" class="form-control">{{ $user->profile->about }}
                    </textarea>

            </div>

            <div class="form-group">

                <button class="btn btn-success" type="submit">

                    Update Profile

                </button>

            </div>

        </form>

    </div>

</div>

@endsection
