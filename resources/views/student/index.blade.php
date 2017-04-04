{{--继承父模板--}}
@extends('common.layouts')

{{--要重写的区域--}}
@section('content')
    @include('common.message')
        <!-- 自定义内容区域 -->
        <div class="panel panel-default">
            <div class="panel-heading">学生列表</div>
            <table class="table table-striped table-hover table-responsive">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>姓名</th>
                    <th>年龄</th>
                    <th>性别</th>
                    <th>添加时间</th>
                    <th width="120">操作</th>
                </tr>
                </thead>
                <tbody>
                @foreach($students as $student)
                    <tr>
                        <th scope="row">{{ $student->id }}</th>
                        <td>{{ $student->name }}</td>
                        <td>{{ $student->age }}</td>
                        <td>{{ $student->sex($student->sex) }}</td>
                        <td>{{ date('Y-m-d', $student->created_at) }}</td>
                        <td>
                            <a href="{{ url('student/detial', ['id' => $student->id]) }}">详情</a>
                            <a href="{{ url('student/update', ['id' => $student->id]) }}">修改</a>
                            <a href="{{ url('student/delete', ['id' => $student->id]) }}" onclick="if(confirm('确定删除吗')==false) return false;">删除</a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
            </table>
        </div>
    <!-- 自定义内容区域结束 -->

    <!-- 分页开始 -->
        <div class="pull-right">
            {{ $students->render() }}
        </div>
    <!-- 分页结束 -->

@stop