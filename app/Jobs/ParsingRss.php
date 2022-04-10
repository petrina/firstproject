<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

use \App\Models\Post;
use Illuminate\Support\Facades\Http;

class ParsingRss implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $response = Http::get('https://lifehacker.com/rss');
        $rssData = $response->body();
        \preg_match_all('/<title><!\[CDATA\[(?<title>.*?)\]\]><\/title>'.
            '<link>(?<link>.*?)<\/link>'.
            '<description><!\[CDATA\[(?<description>.*?)\]\]><\/description>.*?'.
            '<pubDate>(?<pubdate>.*?)<\/pubDate>.*?'.
            '<dc:creator><!\[CDATA\[(?<creator>.*?)\]\]><\/dc:creator>/is', $rssData, $match);
        
        for ($i = 0; $i < count($match[0]); $i++) {

            $existPost = Post::where(['link' => $match['link'][$i]])->first()->toArray();

            if (!empty($existPost)) {
                break;
            }

            $pubdate = \DateTime::createFromFormat('D, d M Y H:i:s e', $match['pubdate'][$i]);

            $post = new Post;
            $post->title = $match['title'][$i];
            $post->link = $match['link'][$i];
            $post->description = $match['description'][$i];
            $post->pubdate = $pubdate->format('Y-m-d H:i:s');
            $post->creator = $match['creator'][$i];

            $post->save();

        }
    }
}
