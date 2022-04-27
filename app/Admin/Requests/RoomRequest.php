<?php

namespace App\Admin\Requests;

use Illuminate\Support\Str;
use Illuminate\Validation\Rule;
use Illuminate\Http\JsonResponse;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Validation\ValidationException;
use Illuminate\Http\Exceptions\HttpResponseException;

class RoomRequest extends FormRequest

{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'code' => ['required','unique:App\Models\Room,code','max:255'],
            'name' => ['required'],
            'name_blog' => ['required', 'unique:App\Models\Room,name_blog'],
            'building_id' => ['required'],
            'floor_id' => ['required'],
            'type' => ['required'],
            'acreage' => ['required'],
        ];
    }

    public function withValidator($validator){
        $validator->after(function ($validator) {
            if (!Str::of($this->code)->isAscii() || strpos($this->code, ' ')) {
                $validator->errors()->add('code', 'Mã hợp đồng không chứ các ký tự đặc biệt');
            }
        });
    }

    public function messages()
    {
        return [
            'code.required' => 'Mã hợp đồng không được bỏ trống',
            'name.required' => 'Tên hợp đồng không được bỏ trống',
            'price.required' => 'Giá trị hợp đồng không được bỏ trống',
        ];
    }

    protected function failedValidation(Validator $validator)
    {
        $errors = (new ValidationException($validator))->errors();
        if($this->ajax()){
            throw new HttpResponseException(
                response()->json([
                    'status' => 416,
                    'message' => $errors], 416
                )
            );
        }else{
            throw (new ValidationException($validator))
            ->errorBag($this->errorBag)
            ->redirectTo($this->getRedirectUrl());
        }
    }
}
