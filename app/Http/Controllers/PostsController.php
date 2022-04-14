<?php

/**
 * @license Apache 2.0
 */

namespace App\Http\Controllers;

use App\Http\Requests\StorePostRequest;
use App\Http\Requests\UpdatePostRequest;
use App\Models\Post;
use App\Jobs\ParsingRss;

/**
 * Class Posts.
 *
 * @author Petryna Olekdsandr
 */

 /**
     * @OA\Info(
     *      version="1.0.0",
     *      title="Lifehacker Rss Parser REST API",
     *      description="Simple Rest Api",
     *      @OA\Contact(
     *          name="Oleksandr Petryna"
     *      ),
     *      @OA\License(
     *          name="Apache 2.0",
     *          url="http://www.apache.org/licenses/LICENSE-2.0.html"
     *      )
     * )
     *
     * @OA\Server(
     *      url=L5_SWAGGER_CONST_HOST,
     *      description="Demo API Server"
     * )

     *
     * @OA\Tag(
     *     name="Posts",
     *     description="First Project on Laravel with REST API"
     * )
     */

class PostsController extends Controller
{
    /**
     * @OA\Get(
     *      path="/posts",
     *      operationId="posts.index",
     *      tags={"Posts"},
     *      summary="Get list of posts",
     *      description="Returns list of posts",
     *      @OA\Response(
     *          response=200,
     *          description="Successful operation",
     *          @OA\JsonContent(
     *             type="array",
     *             @OA\Items(ref="#/components/schemas/Post"),
     *          ),
     *       ),
     *      @OA\Response(
     *          response=404,
     *          description="Posts not found"
     *      )
     *   )
     */
    public function index()
    {
        return Post::all();
    }

    /**
     * @OA\Post(
     *      path="/posts",
     *      operationId="posts.store",
     *      tags={"Posts"},
     *      summary="Store new post",
     *      description="Returns created post data",
     *      @OA\RequestBody(
     *          required=true,
     *          @OA\JsonContent(ref="#/components/schemas/StorePostRequest")
     *      ),
     *      @OA\Response(
     *          response=201,
     *          description="Successful operation",
     *          @OA\JsonContent(ref="#/components/schemas/Post")
     *       ),
     *      @OA\Response(
     *          response=400,
     *          description="Bad Request"
     *      ),
     *      @OA\Response(
     *          response=422,
     *          description="Required field not found or Link field already save"
     *      )
     * )
     */
    public function store(StorePostRequest $request)
    {
        return Post::create($request->all());
    }

    /**
     * @OA\Get(
     *      path="/posts/{id}",
     *      operationId="posts.show",
     *      tags={"Posts"},
     *      summary="Get post information",
     *      description="Returns post data",
     *      @OA\Parameter(
     *          name="id",
     *          description="Post id",
     *          required=true,
     *          in="path",
     *          @OA\Schema(
     *              type="integer"
     *          )
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Successful operation",
     *          @OA\JsonContent(ref="#/components/schemas/Post")
     *       ),
     *      @OA\Response(
     *          response=400,
     *          description="Bad Request"
     *      ),
     *      @OA\Response(
     *          response=404,
     *          description="Not found"
     *      ),
     * )
     */
    public function show(Post $post)
    {
        return $post;
    }

/**
     * @OA\Put(
     *      path="/posts/{id}",
     *      operationId="posts.update",
     *      tags={"Posts"},
     *      summary="Update existing post",
     *      description="Returns updated post data",
     *      @OA\Parameter(
     *          name="id",
     *          description="Post id",
     *          required=true,
     *          in="path",
     *          @OA\Schema(
     *              type="integer"
     *          )
     *      ),
     *      @OA\RequestBody(
     *          required=true,
     *          @OA\JsonContent(ref="#/components/schemas/UpdatePostRequest")
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Successful operation",
     *          @OA\JsonContent(ref="#/components/schemas/Post")
     *       ),
     *      @OA\Response(
     *          response=400,
     *          description="Bad Request"
     *      ),
     *      @OA\Response(
     *          response=404,
     *          description="Resource Not Found"
     *      ),
     *      @OA\Response(
     *          response=422,
     *          description="Required field not found or Link field already save"
     *      ),
     * )
     */
    public function update(UpdatePostRequest $request, Post $post)
    {
        $post->update($request->all());
        return $post;
    }

    /**
     * @OA\Delete(
     *      path="/posts/{id}",
     *      operationId="posts.delete",
     *      tags={"Posts"},
     *      summary="Delete existing project",
     *      description="Deletes a record and returns no content",
     *      @OA\Parameter(
     *          name="id",
     *          description="Project id",
     *          required=true,
     *          in="path",
     *          @OA\Schema(
     *              type="integer"
     *          )
     *      ),
     *      @OA\Response(
     *          response=204,
     *          description="Successful operation",
     *       ),
     *      @OA\Response(
     *          response=404,
     *          description="Resource Not Found"
     *      )
     * )
     */
    public function destroy(Post $post)
    {
        $post->delete();
        return response('', 204);
    }

    public function setqueue() {
        
        ParsingRss::dispatch();
    }
}
