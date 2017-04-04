
{{--如果有错误信息--}}
@if(count($errors))
    <div class="alert alert-danger">
        <ul>
            <li>{{ $errors->first() }}</li>
            <ul>
    </div>

<div class="alert alert-danger">
    <ul>
        @foreach($errors->all() as $error)
        <li>{{ $error }}</li>
        @endforeach
    <ul>
</div>
    @endif