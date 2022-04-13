<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StorePostRequest extends FormRequest
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
            'title' => ['required', 'max:255', 'min:5'],
            'link' => ['required', 'unique:posts,link', 'max:255', 'min:5'],
            'description' => ['required', 'min:5'],
            'creator' => ['required', 'max:255', 'min:3'],
            'pubdate' => ['required', 'date_format:Y-m-d H:i:s']
        ];
    }
}
