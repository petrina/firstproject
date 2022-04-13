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

        $doc = new \DOMDocument();
        $doc->loadXML($rssData);

        $destinations = $doc->getElementsByTagName("item");
        foreach ($destinations as $destination) {
            $post = new Post();

            $exist = true;

            foreach($destination->childNodes as $child) {

                $tagName = $child->tagName;
                $value = $child->textContent;
                
                if ($tagName == 'category' || $tagName == 'guid') {
                    continue;
                }

                if ($tagName == 'link') {
                    $exist = Post::where('link', '=', $value)->exists();

                    if ($exist) {
                        break;
                    }
                }

                if ($tagName == 'dc:creator') {
                    $tagName = 'creator';
                }

                if ($tagName == 'pubDate') {
                    $tagName = 'pubdate';
                    $pubdate = \DateTime::createFromFormat('D, d M Y H:i:s e', $value);
                    $value = $pubdate->format('Y-m-d H:i:s');
                }
                
                $post->{$tagName} = $value;

            }
            
            if (!$exist) {
                $post->save();
            }
        }
    }
}
