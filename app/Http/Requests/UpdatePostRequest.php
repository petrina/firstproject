<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

/**
 * @OA\Schema(
 *      title="Update Post request",
 *      description="Update Post request body data",
 *      type="object",
 *      required={"id","title","link","description","creator","pubdate'"}
 * )
 */

class UpdatePostRequest extends FormRequest
{
    /**
     * @OA\Property(
     *     format="int64string",
     *     description="Title of the updated Post",
     *     title="Post title",
     *     example="Update Title"
     * )
     *
     * @var int
     */

    private $title;

    /**
     * @OA\Property(
     *     format="string",
     *     description="Link of the updated Post",
     *     title="Post link",
     *     example="https://update.example.com/"
     * )
     *
     * @var int
     */

    private $link;

    /**
     * @OA\Property(
     *     format="string",
     *     description="Description of the updated Post",
     *     title="Post description",
     *     example="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at mollis sem. Sed in tellus id erat imperdiet consequat in eget arcu. Nulla tempus eget massa at aliquam. Cras augue urna, euismod id erat at, malesuada varius ex. Aliquam ullamcorper augue sem, vel suscipit mi consequat vel. Nunc a velit ut libero blandit posuere ut vitae lacus. Curabitur eros augue, malesuada vitae congue at, vehicula non justo. Praesent fringilla vel neque quis auctor. Mauris ultrices rhoncus dictum. Integer sed nisl eget tortor suscipit convallis. Quisque eget quam lorem. Sed eleifend placerat massa, non fermentum quam fringilla eget. Proin feugiat bibendum condimentum. Cras id luctus massa. In ut nunc faucibus, vestibulum augue quis, efficitur eros."
     * )
     *
     * @var int
     */

    private $description;

    /**
     * @OA\Property(
     *     format="string",
     *     description="Creator of the updated Post",
     *     title="Post creator",
     *     example="John Smith"
     * )
     *
     * @var int
     */

    private $creator;

    /**
     * @OA\Property(
     *     format="date-time",
     *     description="Pubication Date of the updated Post",
     *     title="Post publication date",
     *     example="2022-04-14 04:10:00"
     * )
     *
     * @var int
     */

    private $pubdate;
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
