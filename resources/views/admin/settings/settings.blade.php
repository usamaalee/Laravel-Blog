@extends('layouts.app')

@section('content')

@include('admin.includes.errors')

<div class="card card-default">

    <div class="card-header">

        Edit Blog Settings

    </div>
    <div class="card-body">

        <form action="{{ route('settings.update') }}" method="post" enctype="multipart/form-data">

            {{ csrf_field() }}

            <div class="form-group">

                <label for="name">Website Name</label>
                <input type="text" name="site_name" value="{{ $settings->site_name }}" class="form-control"/>

            </div>

            <div class="form-group">

                <label for="name">Address</label>
                <input type="text" name="address" value="{{ $settings->address }}" class="form-control"/>

            </div>

            <div class="form-group">

                    <label for="name">Contact Phone</label>
                    <input type="text" name="contact_number" value="{{ $settings->contact_number }}" class="form-control"/>

            </div>

            <div class="form-group">

                    <label for="name">Contact Email</label>
                    <input type="email" name="contact_email" value="{{ $settings->contact_email }}" class="form-control"/>

            </div>

            <div class="form-group">

                <button class="btn btn-success" type="submit">

                    Update Settings

                </button>

            </div>

        </form>

    </div>

</div>

@endsection
