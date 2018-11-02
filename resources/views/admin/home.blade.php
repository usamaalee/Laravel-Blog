@extends('layouts.app')

@section('content')

                <div class="row col-md-12">

                        <div class="col-lg-3">

                                <div class="card card-info">

                                    <div class="card-header text-center bg-primary text-white">
                                        Posted
                                    </div>

                                    <div class="card-body text-center">
                                            {{ $posts_count }}
                                    </div>

                                </div>

                            </div>

                            <div class="col-lg-3">

                                    <div class="card card-info">

                                        <div class="card-header text-center bg-danger text-white">
                                            Trashed
                                        </div>

                                        <div class="card-body text-center">
                                            {{ $trashed_count }}
                                        </div>

                                    </div>

                            </div>

                            <div class="col-lg-3">

                                    <div class="card card-info">

                                        <div class="card-header text-center bg-success text-white">
                                            Categories
                                        </div>

                                        <div class="card-body text-center">
                                                {{ $categories_count }}
                                        </div>

                                    </div>

                            </div>

                            <div class="col-lg-3">

                                    <div class="card card-info">

                                        <div class="card-header text-center bg-info text-white">
                                            Users
                                        </div>

                                        <div class="card-body text-center">
                                                {{ $users_count }}
                                        </div>

                                    </div>

                            </div>

                </div>

@endsection
