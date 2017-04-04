@extends('common.layouts')


@section('content')

    {{--引入错误提示--}}
    @include('common.validator')
    {{--引入错误提示--}}

    {{--<form class="form-horizontal" method="post" action="{{ url('student/save') }}">--}}
    @include('common._form')
    @stop