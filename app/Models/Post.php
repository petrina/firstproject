<?php

/**
 * @license Apache 2.0
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Pet.
 *
 * @author Petryna Oleksandr <winduzemustdie@gmail.com>
 *
 * @OA\Schema(
 *     description="Post model",
 *     title="Post model",
 *     required={"title", "link", "description", "creator", "pubdate"},
 *     @OA\Xml(
 *         name="Post"
 *     )
 * )
 */

class Post extends Model
{

    /**
     * @OA\Property(
     *     format="int64",
     *     description="ID",
     *     title="ID",
     * )
     *
     * @var int
     */

    private $id;

    /**
     * @OA\Property(
     *     format="int64string",
     *     description="Post title",
     *     title="Post title",
     *     example="New Title"
     * )
     *
     * @var int
     */

    private $title;

    /**
     * @OA\Property(
     *     format="string",
     *     description="Post link",
     *     title="Post link",
     *     example="https://google.com/"
     * )
     *
     * @var int
     */

    private $link;

    /**
     * @OA\Property(
     *     format="string",
     *     description="Post description",
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
     *     description="Post creator",
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
     *     description="Post publication date",
     *     title="Post publication date",
     *     example="2022-04-14 04:10:00"
     * )
     *
     * @var int
     */

    private $pubdate;

    use HasFactory;

    protected $fillable = ['title', 'link', 'description', 'creator', 'pubdate'];
}
