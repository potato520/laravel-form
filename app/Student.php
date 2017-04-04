<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    const SEX_UN = 30;
    const SEX_GRIL = 20;
    const SEX_BOY = 10;

    protected $table = 'student';

    protected $primaryKey = 'id';

    public $timestamps = true;

    protected $fillable = ['name', 'age', 'sex']; # 批量赋值 Student::create($data)


    protected function getDateFormat()
    {
        return time();
    }

    protected function asDateTime($value)
    {
       return $value;
    }

    public function sex($ind = NULL)
    {
        $arr = [
            self::SEX_UN => '未知',
            self::SEX_BOY => '男',
            self::SEX_GRIL => '女',
        ];
        if($ind !== NULL){
            return array_key_exists($ind, $arr) ? $arr[$ind] : $arr[self::SEX_UN];
        }
        return $arr;
    }
}