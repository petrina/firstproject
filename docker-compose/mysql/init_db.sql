-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: firstproject
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--
create database if not exists firstproject;

use firstproject;


DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
INSERT INTO `failed_jobs` VALUES (1,'3a7593f4-429a-40aa-9c8a-e1d05c14bd2b','database','default','{\"uuid\":\"3a7593f4-429a-40aa-9c8a-e1d05c14bd2b\",\"displayName\":\"App\\\\Jobs\\\\ParsingRss\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\ParsingRss\",\"command\":\"O:19:\\\"App\\\\Jobs\\\\ParsingRss\\\":0:{}\"}}','Error: Class \"App\\Jobs\\Http\" not found in /home/sasha/Project/laravel/firstproject/app/Jobs/ParsingRss.php:35\nStack trace:\n#0 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): App\\Jobs\\ParsingRss->handle()\n#1 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#2 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#3 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#4 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#5 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(128): Illuminate\\Container\\Container->call()\n#6 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}()\n#7 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#8 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Bus/Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then()\n#9 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(119): Illuminate\\Bus\\Dispatcher->dispatchNow()\n#10 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}()\n#11 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#12 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(121): Illuminate\\Pipeline\\Pipeline->then()\n#13 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Queue/CallQueuedHandler.php(69): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware()\n#14 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Queue/Jobs/Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call()\n#15 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(428): Illuminate\\Queue\\Jobs\\Job->fire()\n#16 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(378): Illuminate\\Queue\\Worker->process()\n#17 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Queue/Worker.php(172): Illuminate\\Queue\\Worker->runJob()\n#18 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(128): Illuminate\\Queue\\Worker->daemon()\n#19 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Queue/Console/WorkCommand.php(112): Illuminate\\Queue\\Console\\WorkCommand->runWorker()\n#20 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#21 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Container/Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#22 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure()\n#23 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Container/BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod()\n#24 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Container/Container.php(653): Illuminate\\Container\\BoundMethod::call()\n#25 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Console/Command.php(171): Illuminate\\Container\\Container->call()\n#26 /home/sasha/Project/laravel/firstproject/vendor/symfony/console/Command/Command.php(291): Illuminate\\Console\\Command->execute()\n#27 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Console/Command.php(156): Symfony\\Component\\Console\\Command\\Command->run()\n#28 /home/sasha/Project/laravel/firstproject/vendor/symfony/console/Application.php(989): Illuminate\\Console\\Command->run()\n#29 /home/sasha/Project/laravel/firstproject/vendor/symfony/console/Application.php(299): Symfony\\Component\\Console\\Application->doRunCommand()\n#30 /home/sasha/Project/laravel/firstproject/vendor/symfony/console/Application.php(171): Symfony\\Component\\Console\\Application->doRun()\n#31 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Console/Application.php(102): Symfony\\Component\\Console\\Application->run()\n#32 /home/sasha/Project/laravel/firstproject/vendor/laravel/framework/src/Illuminate/Foundation/Console/Kernel.php(129): Illuminate\\Console\\Application->run()\n#33 /home/sasha/Project/laravel/firstproject/artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle()\n#34 {main}','2022-04-08 17:45:40');
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (7,'2014_10_12_000000_create_users_table',1),(8,'2014_10_12_100000_create_password_resets_table',1),(9,'2019_08_19_000000_create_failed_jobs_table',1),(10,'2019_12_14_000001_create_personal_access_tokens_table',1),(11,'2022_04_08_154017_create_posts_table',1),(12,'2022_04_08_175826_create_jobs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pubdate` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Transition Into Spring With the Backyard Smash','https://lifehacker.com/transition-into-spring-with-the-backyard-smash-1848770356','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--ZYxWwcQI--/c_fit,fl_progressive,q_80,w_636/8040b33e2899ede3e4876e9d7464530a.jpg\" /><p>Some mornings I don’t need to look out the window to know it’s going to be a lousy weather day. The grayness can be felt before it’s visually perceived and confirmed. Maybe it’s the precipitation that makes the air heavy with dread, but this morning, before I opened my eyes and performed that daily ritual of mindless…</p><p><a href=\"https://lifehacker.com/transition-into-spring-with-the-backyard-smash-1848770356\">Read more...</a></p>','Devojka','2022-04-08 17:00:00','2022-04-08 17:48:01','2022-04-08 17:48:01'),(2,'How Much Money Do You Really Save By Unplugging Appliances?','https://lifehacker.com/how-much-money-do-you-really-save-by-unplugging-applian-1848763594','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--g2gPuDce--/c_fit,fl_progressive,q_80,w_636/2e5c2fc0b50de9635460063dcc38830a.jpg\" /><p>You obviously know that turning off lights and powering down electronics is one way to lower your electricity usage and, as a result, money. But what about leaving your phone on its charger overnight, or leaving your devices  plugged in while they are asleep or turned off? Is it really worth unplugging them when not…</p><p><a href=\"https://lifehacker.com/how-much-money-do-you-really-save-by-unplugging-applian-1848763594\">Read more...</a></p>','Emily Long','2022-04-08 16:30:00','2022-04-08 17:48:01','2022-04-08 17:48:01'),(3,'The Best Way to Answer \'Tell Me About a Mistake You Made\' During an Interview','https://lifehacker.com/the-best-way-to-answer-tell-me-about-a-mistake-you-made-1848770251','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--oV0sjO1---/c_fit,fl_progressive,q_80,w_636/b6f345b27445b23e9673a42adb69616f.jpg\" /><p>Most of have had to face the dreaded, “Tell me about a time you made a mistake” question while interviewing for a new job. And while the whole point of an interview is to put your <em>best</em> foot forward—and nobody relishes disclosing past work failures—with a little advanced preparation, your response can actually work in…</p><p><a href=\"https://lifehacker.com/the-best-way-to-answer-tell-me-about-a-mistake-you-made-1848770251\">Read more...</a></p>','Sarah Showfety','2022-04-08 16:00:00','2022-04-08 17:48:01','2022-04-08 17:48:01'),(4,'Do Opposites Attract Anymore?','https://lifehacker.com/do-opposites-attract-anymore-1848728003','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--vQcAKJl0--/c_fit,fl_progressive,q_80,w_636/96a4da9dfc677e78d29acb3e8d396025.png\" /><p>No dating cliché has endured quite like the infamous belief that “opposites attract.” Clichés are often rooted in some truth, and while this one has been upended a little <a href=\"https://www.nytimes.com/2020/09/08/books/review/republic-of-wrath-james-a-morone.html\" target=\"_blank\" rel=\"noopener noreferrer\">in these divided times</a>, there are still elements of honesty within it. Here’s what to know about why and how opposites attract—and what you can do…</p><p><a href=\"https://lifehacker.com/do-opposites-attract-anymore-1848728003\">Read more...</a></p>','Lindsey Ellefson','2022-04-08 15:30:00','2022-04-08 17:48:02','2022-04-08 17:48:02'),(5,'How to Use SMS Automatically When RCS or iMessage Don\'t Work','https://lifehacker.com/how-to-use-sms-automatically-when-rcs-or-imessage-dont-1848768400','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--YndfjG-i--/c_fit,fl_progressive,q_80,w_636/bb834b6acb178afcd2680c00d4cc2908.jpg\" /><p>iMessage revolutionized texting for iPhone users. It replaced SMS with a new, better, faster protocol. Now, Android is trying to do the same with RCS. And while it’s getting there, it does have one issue: It doesn’t automatically fall back to SMS if a message doesn’t go through—instead, you’re asked to manually send…</p><p><a href=\"https://lifehacker.com/how-to-use-sms-automatically-when-rcs-or-imessage-dont-1848768400\">Read more...</a></p>','Khamosh Pathak','2022-04-08 15:00:00','2022-04-08 17:48:02','2022-04-08 17:48:02'),(6,'Your Apple Watch Just Needs a New Battery','https://lifehacker.com/your-apple-watch-just-needs-a-new-battery-1848769007','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--DbUwsNx2--/c_fit,fl_progressive,q_80,w_636/471ccc1856ce3afa9420e6bba53d9960.png\" /><p>Apple Watches are impressive little computers, but they don’t last forever. After enough time, the battery starts to go, which can ruin your chances of closing your daily rings. On top of that, the watch starts to slow down, to the point where you think you’d be better off upgrading to the next Apple Watch generation.…</p><p><a href=\"https://lifehacker.com/your-apple-watch-just-needs-a-new-battery-1848769007\">Read more...</a></p>','Jake Peterson','2022-04-08 14:30:00','2022-04-08 17:48:02','2022-04-08 17:48:02'),(7,'This Bot Can Tell You How Good You Really Are at Wordle','https://lifehacker.com/this-bot-can-tell-you-how-good-you-really-are-at-wordle-1848769075','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--sejkwnrC--/c_fit,fl_progressive,q_80,w_636/1821a494b7a3fc3f96292f663be8a01c.jpg\" /><p>I like to think of myself as good at Wordle (caring about Wordle is one of my worst personality flaws and I’m embracing it, thank you very much), so I was thrilled to see that the New York Times has <a href=\"https://www.nytimes.com/2022/04/07/upshot/wordle-bot-introduction.html\" target=\"_blank\" rel=\"noopener noreferrer\">a new tool called WordleBot</a> that can grade your performance on any past Wordle.</p><p><a href=\"https://lifehacker.com/this-bot-can-tell-you-how-good-you-really-are-at-wordle-1848769075\">Read more...</a></p>','Beth Skwarecki','2022-04-08 14:00:00','2022-04-08 17:48:02','2022-04-08 17:48:02'),(8,'The One Extra Thing You Should Always Buy From McDonald’s','https://lifehacker.com/the-one-extra-thing-you-should-always-buy-from-mcdonald-1848765527','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--hJjTl9Pr--/c_fit,fl_progressive,q_80,w_636/f46bb252ec5478ac94e87979048f530b.jpg\" /><p>People tend to use meal planning as an attempt to gain control over their diet and budget. Usually, they have a goal to “eat better” and “stop buying takeout.” That is almost never <em>my</em> goal when it comes to meal planning (or  anything else). My goal is always to have to do less and to experience more pleasure, which is…</p><p><a href=\"https://lifehacker.com/the-one-extra-thing-you-should-always-buy-from-mcdonald-1848765527\">Read more...</a></p>','Claire Lower','2022-04-08 13:30:00','2022-04-08 17:48:02','2022-04-08 17:48:02'),(9,'How to Restore Your Old Deck Without Going Broke','https://lifehacker.com/how-to-restore-your-old-deck-without-going-broke-1848764994','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--MXtoqgRV--/c_fit,fl_progressive,q_80,w_636/5cc69f6a224498bed59d18ad824aa6c8.jpg\" /><p>A deck can be an extension of your living space during the warmer months, becoming a second living room for get-togethers or a quiet retreat to soak in a summer breeze. For all their usefulness, decks can be a pain to maintain and can become an eyesore as they age. Keeping your deck looking sharp and ready for use…</p><p><a href=\"https://lifehacker.com/how-to-restore-your-old-deck-without-going-broke-1848764994\">Read more...</a></p>','Becca Lewis','2022-04-08 13:00:00','2022-04-08 17:48:02','2022-04-08 17:48:02'),(10,'How Many Calories Do You Actually Burn During Sex?','https://lifehacker.com/how-many-calories-do-you-actually-burn-during-sex-1848764963','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--Mg-0gNn5--/c_fit,fl_progressive,q_80,w_636/85ca5abd1cd3504f7c9715488538e8fb.png\" /><p>Can anything  spice up a roll in the hay more than worrying about how many calories you’re burning while you do it? Impossible, right? So let’s take a look at the energy expenditure of various ways of having sex, as calculated by the world’s greatest scientific minds. And when I say scientific minds, I mostly mean…</p><p><a href=\"https://lifehacker.com/how-many-calories-do-you-actually-burn-during-sex-1848764963\">Read more...</a></p>','Beth Skwarecki','2022-04-08 12:30:00','2022-04-08 17:48:02','2022-04-08 17:48:02'),(11,'Why You Should Buy the Dumbest TV You Can Find','https://lifehacker.com/why-you-should-buy-the-dumbest-tv-you-can-find-1848768646','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--GAc0O_eG--/c_fit,fl_progressive,q_80,w_636/a4e2614d04ab16c6fe589dfc012093ab.jpg\" /><p>Watching television used to be a pretty straightforward experience. At one time, there were roughly seven channels and you got them by fiddling with an antenna. But the proliferation of programming platforms and the advance of technology has made interacting with your television a much more complex experience. Enter…</p><p><a href=\"https://lifehacker.com/why-you-should-buy-the-dumbest-tv-you-can-find-1848768646\">Read more...</a></p>','Jeff Somers','2022-04-08 12:00:00','2022-04-08 17:48:02','2022-04-08 17:48:02'),(12,'The Out-of-Touch Adults\' Guide to Kid Culture: What Is \'The Ick\'?','https://lifehacker.com/the-out-of-touch-adults-guide-to-kid-culture-what-is-t-1848767322','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--ZVwo3Wgd--/c_fit,fl_progressive,q_80,w_636/e82ec73685c8feb16723c4635caa899a.png\" /><p>This week’s exploration of the underbelly of young people culture takes us to surreal and terrifying imaginary spaces and invites us to have a heart-to-heart talk with a cartoon dog from a nearly forgotten app. I hope it doesn’t give you the ick.<br></p><p><a href=\"https://lifehacker.com/the-out-of-touch-adults-guide-to-kid-culture-what-is-t-1848767322\">Read more...</a></p>','Stephen Johnson','2022-04-08 11:39:59','2022-04-08 17:48:02','2022-04-08 17:48:02'),(13,'This Is the ‘Ideal’ Amount of Time to Spend in the Shower','https://lifehacker.com/this-is-the-ideal-amount-of-time-to-spend-in-the-show-1848765787','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--NCI6H4fg--/c_fit,fl_progressive,q_80,w_636/cc43731238eb3dd3ad192247c6b623c8.jpg\" /><p>Showering is one of the biggest uses of water in a typical residential home, according to the EPA. You don’t want to use <em>too</em> much water in your shower, but you do need more than a few minutes to get fully clean. So where is the balance?<br></p><p><a href=\"https://lifehacker.com/this-is-the-ideal-amount-of-time-to-spend-in-the-show-1848765787\">Read more...</a></p>','Beth Skwarecki','2022-04-08 11:00:00','2022-04-08 17:48:03','2022-04-08 17:48:03'),(14,'10 Non-Alcoholic Beers That Are Actually Worth Drinking','https://lifehacker.com/10-non-alcoholic-beers-that-are-actually-worth-drinking-1848764117','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--jN3LM7fT--/c_fit,fl_progressive,q_80,w_636/0c23bc2960d5d873264c62be1c468fe3.jpg\" /><p>Beer is one of mankind’s greatest achievements. We’ve been brewing it according to various recipes for thousands of years—the <a href=\"https://blog.britishmuseum.org/a-sip-of-history-ancient-egyptian-beer/\" target=\"_blank\" rel=\"noopener noreferrer\">ancient Egyptians were brewing up a storm</a>, and we can actually replicate their recipes in the modern day. While beer is often associated with alcohol and inebriation, people who love beer…</p><p><a href=\"https://lifehacker.com/10-non-alcoholic-beers-that-are-actually-worth-drinking-1848764117\">Read more...</a></p>','Jeff Somers','2022-04-08 10:30:00','2022-04-08 17:48:03','2022-04-08 17:48:03'),(15,'How to Prevent Your AMD Processor From Automatically Overclocking','https://lifehacker.com/how-to-prevent-your-amd-processor-from-automatically-ov-1848764075','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s---Eer7USg--/c_fit,fl_progressive,q_80,w_636/6a5c7001f9e1fa633a385efc42409626.jpg\" /><p>If you’re rocking AMD components in your desktop PC, take a moment to make sure your CPU isn’t unintentionally overclocking itself. A bug in a recent AMD graphics card driver update is automatically triggering the “Auto Overclocking” option on AMD CPUs, even if users don’t explicitly turn it on themselves. </p><p><a href=\"https://lifehacker.com/how-to-prevent-your-amd-processor-from-automatically-ov-1848764075\">Read more...</a></p>','Brendan Hesse','2022-04-08 10:00:00','2022-04-08 17:48:03','2022-04-08 17:48:03'),(16,'15 Surprisingly Practical Ways to Use Dental Floss Around the House','https://lifehacker.com/15-surprisingly-practical-ways-to-use-dental-floss-arou-1848745159','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--AAudEVB7--/c_fit,fl_progressive,q_80,w_636/7ba915aefef0e66d90cd56c369610000.jpg\" /><p>It’s strong, it’s stretchy, it’s lightweight. Sometimes, after a dentist’s visit, it’s even free—and it can do a lot more than prevent cavities and halitosis. Turns out, dental floss isn’t <em>just</em> for removing plaque, spinach, and those blasted popcorn kernels. With many  unique uses, from  gardening and sewing to…</p><p><a href=\"https://lifehacker.com/15-surprisingly-practical-ways-to-use-dental-floss-arou-1848745159\">Read more...</a></p>','Sarah Showfety','2022-04-08 09:30:00','2022-04-08 17:48:03','2022-04-08 17:48:03'),(17,'Avoid These Raw Oysters From Canada, FDA Says','https://lifehacker.com/avoid-these-raw-oysters-from-canada-fda-says-1848764765','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--ZX4id-aR--/c_fit,fl_progressive,q_80,w_636/e421336a6f72c9897378294febbd8fd2.jpg\" /><p>Fans of raw oysters: We’re afraid we have some bad news. You know that little voice in the back of your head that whispers “let’s hope eating this probably-still-alive sea creature that spent its life <a href=\"https://www.whoi.edu/oceanus/feature/can-clams-and-oysters-help-clean-up-waterways/\" target=\"_blank\" rel=\"noopener noreferrer\">filtering dirty ocean water</a> isn’t going to make me deathly ill” every time you slurp one down? Well, you may want to…</p><p><a href=\"https://lifehacker.com/avoid-these-raw-oysters-from-canada-fda-says-1848764765\">Read more...</a></p>','Elizabeth Yuko','2022-04-07 17:30:00','2022-04-08 17:48:03','2022-04-08 17:48:03'),(18,'You Should Roast a Whole Bunch of Onions in a Muffin Tin','https://lifehacker.com/you-should-roast-a-whole-bunch-of-onions-in-a-muffin-ti-1848764907','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--mi0EaFoi--/c_fit,fl_progressive,q_80,w_636/e99346317aa94c773d439322312d3f7f.jpg\" /><p>I am a huge fan of the <a href=\"https://lifehacker.com/behold-the-simple-comfort-of-a-butter-baked-onion-1842794181\">butter-baked onion</a>: soft, savory, and comforting. There’s no char and no browned bits, just soft layers of allium that melt in your mouth. </p><p><a href=\"https://lifehacker.com/you-should-roast-a-whole-bunch-of-onions-in-a-muffin-ti-1848764907\">Read more...</a></p>','Claire Lower','2022-04-07 17:00:00','2022-04-08 17:48:03','2022-04-08 17:48:03'),(19,'Why You Should Un-Sync Google and Apple Photos','https://lifehacker.com/why-you-should-un-sync-google-and-apple-photos-1848762896','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--i4EXc6PD--/c_fit,fl_progressive,q_80,w_636/a86048684e1853157d0589c57d969026.jpg\" /><p>You have some choices when it comes to iPhone photo management. Apple Photos is the built in choice, and is generally good. Google Photos is an optional app, and is also generally good. Using both at the same time, however, is not good, and should be avoided. That said, if you’ve already mixed the two, there’s a way…</p><p><a href=\"https://lifehacker.com/why-you-should-un-sync-google-and-apple-photos-1848762896\">Read more...</a></p>','Jake Peterson','2022-04-07 16:30:00','2022-04-08 17:48:03','2022-04-08 17:48:03'),(20,'How to Remove Ketchup and Mustard Stains From Your Clothes','https://lifehacker.com/how-to-remove-ketchup-and-mustard-stains-from-your-clot-1848764558','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--6cqwH1KE--/c_fit,fl_progressive,q_80,w_636/9fb54ea341db58cc6379e660030876df.jpg\" /><p>With the season of baseball games, barbecues, and outdoor potlucks nearly upon us, it’s time we had a refresher on how to remove some of the most popular condiment stains from your clothes. Because, while pool parties and cookouts are fun, coming home with bright red blotches on our favorite shirts is not. Here’s how…</p><p><a href=\"https://lifehacker.com/how-to-remove-ketchup-and-mustard-stains-from-your-clot-1848764558\">Read more...</a></p>','Sarah Showfety','2022-04-07 16:00:00','2022-04-08 17:48:03','2022-04-08 17:48:03'),(21,'Change These Settings to Make the Brave Browser Even More Private','https://lifehacker.com/change-these-settings-to-make-the-brave-browser-even-mo-1848763348','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--wQ4H7oGX--/c_fit,fl_progressive,q_80,w_636/01381a080c579630dc5b17666ef95eef.jpg\" /><p>The Brave Browser promotes itself as a <a href=\"https://lifehacker.com/9-default-chrome-settings-you-should-change-if-you-care-1848561036\">Google Chrome</a> alternative focused on privacy, but its default settings aren’t the most privacy friendly. If you need to use a Chrome-based browser, Brave is definitely a better option than what Google offers, but with a few tweaks, you can make it even more private.<br></p><p><a href=\"https://lifehacker.com/change-these-settings-to-make-the-brave-browser-even-mo-1848763348\">Read more...</a></p>','Pranay Parab','2022-04-07 15:30:00','2022-04-08 17:48:03','2022-04-08 17:48:03'),(22,'How to Make Your Cordless Vacuum Battery Last Longer','https://lifehacker.com/how-to-make-your-cordless-vacuum-battery-last-longer-1848762500','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--wl_JGr1E--/c_fit,fl_progressive,q_80,w_636/37f49ce53663b53332bce522f171b882.jpg\" /><p>The war on wires is ongoing. The modern home is absolutely infested with them—power cords, Internet cables, HDMI cables, drawers and drawers full of random USB cords we’re terrified to throw away—despite the proliferation of wireless technology. Even our beloved Wi-Fi pretty much always starts with a cable of some…</p><p><a href=\"https://lifehacker.com/how-to-make-your-cordless-vacuum-battery-last-longer-1848762500\">Read more...</a></p>','Jeff Somers','2022-04-07 15:00:00','2022-04-08 17:48:03','2022-04-08 17:48:03'),(23,'When Good Samaritan Laws Can Protect You (and When They Can\'t)','https://lifehacker.com/when-good-samaritan-laws-protect-you-and-when-they-don-1848763677','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--RStrhDfm--/c_fit,fl_progressive,q_80,w_636/c5c8cf3d133ea50e80c7ba3aef0526e6.jpg\" /><p>Broadly speaking, Good Samaritan laws give legal protections to people who assist someone who is hurt, sick, or incapacitated. These types of laws exist in all 50 states and Washington, D.C. They even exist in <a href=\"https://www.govinfo.gov/content/pkg/CRPT-105hrpt456/pdf/CRPT-105hrpt456.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">the airspace</a> over the country, so no doctor or well-intentioned and qualified person has to think twice about…</p><p><a href=\"https://lifehacker.com/when-good-samaritan-laws-protect-you-and-when-they-don-1848763677\">Read more...</a></p>','Lindsey Ellefson','2022-04-07 14:39:00','2022-04-08 17:48:04','2022-04-08 17:48:04'),(24,'What to Do When the Tips of Your Plant’s Leaves Turn Brown','https://lifehacker.com/what-to-do-when-the-tips-of-your-plant-s-leaves-turn-br-1848764030','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--gN9p14h3--/c_fit,fl_progressive,q_80,w_636/72c3b5dfde26a349aecd851cef7c1089.jpg\" /><p>It sucks finding brown leaf-tips on your little plant baby: You know it’s your fault, but you’re not sure what you’ve done wrong, and it’s not like your plant can recriminate you for your failures (it probably wants to though.) If you find brown leaf-tips on your houseplant, you’ll have to do some botanical detective…</p><p><a href=\"https://lifehacker.com/what-to-do-when-the-tips-of-your-plant-s-leaves-turn-br-1848764030\">Read more...</a></p>','Stephen Johnson','2022-04-07 14:30:00','2022-04-08 17:48:04','2022-04-08 17:48:04'),(25,'Stop Telling Kids to \'Be Careful\' (and What to Say Instead)','https://lifehacker.com/stop-telling-kids-to-be-careful-and-what-to-say-instea-1848762621','<img src=\"https://i.kinja-img.com/gawker-media/image/upload/s--WeBXctSE--/c_fit,fl_progressive,q_80,w_636/01f3c136ddb16dcf9c43c145290ddd43.jpg\" /><p>If you’ve ever watched your not-so-sure-footed kids ascend a tall—<em>very tall—</em>rope climbing structure at the playground, or hoist themselves atop a large, wobbly  log in the woods, or attempt the monkey bars<em> </em>alone<em> </em>for the first time (at breakneck speed), you may have felt the  urge to call out, “Be careful!” And why?…</p><p><a href=\"https://lifehacker.com/stop-telling-kids-to-be-careful-and-what-to-say-instea-1848762621\">Read more...</a></p>','Sarah Showfety','2022-04-07 14:00:00','2022-04-08 17:48:04','2022-04-08 17:48:04'),(26,'new title','https://google.com','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at mollis sem. Sed in tellus id erat imperdiet consequat in eget arcu. Nulla tempus eget massa at aliquam. Cras augue urna, euismod id erat at, malesuada varius ex. Aliquam ullamcorper augue sem, vel suscipit mi consequat vel. Nunc a velit ut libero blandit posuere ut vitae lacus. Curabitur eros augue, malesuada vitae congue at, vehicula non justo. Praesent fringilla vel neque quis auctor. Mauris ultrices rhoncus dictum. Integer sed nisl eget tortor suscipit convallis. Quisque eget quam lorem. Sed eleifend placerat massa, non fermentum quam fringilla eget. Proin feugiat bibendum condimentum. Cras id luctus massa. In ut nunc faucibus, vestibulum augue quis, efficitur eros.','Jhon Smit','2022-04-09 18:31:00','2022-04-09 15:35:25','2022-04-09 15:35:25'),(27,'new title','https://google.com','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at mollis sem. Sed in tellus id erat imperdiet consequat in eget arcu. Nulla tempus eget massa at aliquam. Cras augue urna, euismod id erat at, malesuada varius ex. Aliquam ullamcorper augue sem, vel suscipit mi consequat vel. Nunc a velit ut libero blandit posuere ut vitae lacus. Curabitur eros augue, malesuada vitae congue at, vehicula non justo. Praesent fringilla vel neque quis auctor. Mauris ultrices rhoncus dictum. Integer sed nisl eget tortor suscipit convallis. Quisque eget quam lorem. Sed eleifend placerat massa, non fermentum quam fringilla eget. Proin feugiat bibendum condimentum. Cras id luctus massa. In ut nunc faucibus, vestibulum augue quis, efficitur eros.','Jhon Smit','2022-04-09 18:31:00','2022-04-09 15:37:23','2022-04-09 15:37:23'),(28,'new title','https://google.com','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras at mollis sem. Sed in tellus id erat imperdiet consequat in eget arcu. Nulla tempus eget massa at aliquam. Cras augue urna, euismod id erat at, malesuada varius ex. Aliquam ullamcorper augue sem, vel suscipit mi consequat vel. Nunc a velit ut libero blandit posuere ut vitae lacus. Curabitur eros augue, malesuada vitae congue at, vehicula non justo. Praesent fringilla vel neque quis auctor. Mauris ultrices rhoncus dictum. Integer sed nisl eget tortor suscipit convallis. Quisque eget quam lorem. Sed eleifend placerat massa, non fermentum quam fringilla eget. Proin feugiat bibendum condimentum. Cras id luctus massa. In ut nunc faucibus, vestibulum augue quis, efficitur eros.','Jhon Smit','2022-04-09 18:31:00','2022-04-09 15:37:56','2022-04-09 15:37:56'),(29,'title','https://google.com','some new description12345','john smith','2020-04-08 11:43:00','2022-04-09 15:39:46','2022-04-09 15:39:46');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-10 21:57:21
