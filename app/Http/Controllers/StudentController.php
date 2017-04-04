<?php

namespace App\Http\Controllers;

use App\Student;
use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;

class StudentController extends Controller
{
    /*
     * 学生列表页
     */
    public function index()
    {
        $students = Student::paginate(5);
        return view('student.index',
            [
                'students' => $students
            ]
        );
    }

    /*
     * 添加学生
     */
    public function create(Request $request)
    {
        if($request->isMethod('POST')){

            // 1.控制器验证
//            $this->validate($request, [
//               'Student.name' => 'required|min:2|max:10',
//                'Student.age' => 'required|integer',
//                'Student.sex' => 'required|integer',
//            ], [
//                'required' => ':attribute 为必填项',
//                'min' => ':attribute 最小长度为2个字符',
//                'integer' => ':attribute 必须为整数',
//                'max' => ':attribute 姓名长度不超过10个字符'
//            ],[
//                'Student.name' =>'姓名',
//                'Student.age' =>'年龄',
//                'Student.sex' =>'性别',
//            ]);

            // 2.validate 类验证
            $validator = \Validator::make($request->input(),
                [
               'Student.name' => 'required|min:2|max:10',
                'Student.age' => 'required|integer',
                'Student.sex' => 'required|integer',
            ], [
                'required' => ':attribute 为必填项',
                'min' => ':attribute 最小长度为2个字符',
                'integer' => ':attribute 必须为整数',
                'max' => ':attribute 姓名长度不超过10个字符'
            ],[
                'Student.name' =>'姓名',
                'Student.age' =>'年龄',
                'Student.sex' =>'性别',
            ]);
            if($validator->fails()){
                        // 返回上一页-> 传递错误信息->保存上一个页面的表单数据
                        // withInput() 会往模板中传递数据，例如： value="{{ old('Student')['name] }}"
                return redirect()->back()->withErrors($validator)->withInput();
            }

            $data = $request->input('Student');
            if(Student::create($data)){
                return redirect('student/index')->with('success', '添加成功');
            }else{
                return redirect()->back();
            }
        }
        return view('student.create');
    }

    /*
     * 保存数据
     */
    public function save(Request $request)
    {
        $data = $request->input('Student');
        $student = new Student();
        $student->name = $data['name'];
        $student->age = $data['age'];
        $student->sex = $data['sex'];
        if($student->save()){
            return redirect('student/index');
        }else{
            return redirect()->back();
        }
    }

    /*
     * 修改
     */
    public function update(Request $request, $id)
    {
        $student = Student::find($id);

        if($request->isMethod('POST')){
            $this->validate($request, [
               'Student.name' => 'required|min:2|max:10',
                'Student.age' => 'required|integer',
                'Student.sex' => 'required|integer',
            ], [
                'required' => ':attribute 为必填项',
                'min' => ':attribute 最小长度为2个字符',
                'integer' => ':attribute 必须为整数',
                'max' => ':attribute 姓名长度不超过10个字符'
            ],[
                'Student.name' =>'姓名',
                'Student.age' =>'年龄',
                'Student.sex' =>'性别',
            ]);

            $data = $request->input('Student');
            $student->name = $data['name'];
            $student->sex = $data['sex'];
            $student->age = $data['age'];
            if($student->save()){
                return redirect('student/index')->with('success', '修改成功id-'.$id);
            }
        }
        return view('student/update',
            [
                'student' => $student,
            ]);
    }

    /**
     * 详情
     */
    public function detial(Request $request, $id)
    {
        $student = Student::find($id);
        return view('student/detial',
            [
                'student' => $student
            ]);
    }

    /*
     * 删除
     */
    public function delete(Request $reques, $id)
    {
        $student = Student::find($id);
        if($student->delete()){
            return redirect('student/index')->with('success', '删除成功-' . $id);
        }else{
            return redirect('student/index')->with('error', '删除失败-'. $id);
        }
    }




























}