<form class="form-horizontal" method="post" action="">
    {{ csrf_field() }}
    <div class="form-group">
        <label for="name" class="col-sm-2 control-label">姓名</label>
        <div class="col-sm-5">
            <input type="text" name="Student[name]"
                   value="{{ isset($student->name) ? $student->name : old('Student')['age'] }}"
                   class="form-control" id="name" placeholder="请输入学生姓名">
        </div>
        <div class="col-sm-5">
            {{--指定输出错误信息--}}
            <p class="form-control-static text-danger"> {{ $errors->first('Student.name') }} </p>
        </div>
    </div>
    <div class="form-group">
        <label for="age" class="col-sm-2 control-label">年龄</label>

        <div class="col-sm-5">
            <input type="text" name="Student[age]"
                   value="{{ isset($student->age) ? $student->age : old('Student')['age']  }}"
                   class="form-control" id="age" placeholder="请输入学生年龄">
        </div>
        <div class="col-sm-5">
            <p class="form-control-static text-danger"> {{ $errors->first('Student.age') }}</p>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label">性别</label>

        <div class="col-sm-5">

            {{--第二种写法--}}

                {{--@foreach($student->sex() as $ind=>$val)--}}
                {{--<label class="radio-inline">--}}
                    {{--<input type="radio" name="Student[sex]" value="{{ $ind }}"--}}
                      {{----}}
                    {{--> {{ $val }}--}}
                {{--</label>--}}
                {{--@endforeach--}}

            {{--第二种写法结束--}}

            <label class="radio-inline">
                <input type="radio" name="Student[sex]" value="10"
                     @if(isset($student->sex) && $student->sex == 10)
                         checked=""
                         @else
                         ''
                    @endif
                    > 男
            </label>
            <label class="radio-inline">
                <input type="radio" name="Student[sex]" value="20"
                       @if(isset($student->sex) && $student->sex == 20)
                       checked=""
                     @else
                        ''
                     @endif
                > 女
            </label>
            <label class="radio-inline">
                <input type="radio" name="Student[sex]" value="30"
                       @if(isset($student->sex) && $student->sex == 30)
                       checked=""
                @else
                    ''
                @endif
                > 未知
            </label>
        </div>
        <div class="col-sm-5">
            <p class="form-control-static text-danger"> {{ $errors->first('Student.sex') }} </p>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">提交</button>
        </div>
    </div>
</form>