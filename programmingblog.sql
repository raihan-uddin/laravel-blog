-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2018 at 07:45 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `programmingblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Java', 'java', '2018-03-01 22:16:29', '2018-03-01 22:16:29'),
(2, 'Python', 'python', '2018-03-01 22:16:46', '2018-03-01 22:16:46'),
(3, 'PHP', 'php', '2018-03-01 22:17:01', '2018-03-01 22:17:01'),
(4, 'Technology', 'technology', '2018-03-01 22:39:32', '2018-03-01 22:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 4, '2018-03-01 22:42:24', '2018-03-01 22:42:24'),
(3, 1, '2018-03-07 00:00:21', '2018-03-07 00:00:21'),
(3, 2, '2018-03-07 00:00:22', '2018-03-07 00:00:22'),
(3, 3, '2018-03-07 00:00:22', '2018-03-07 00:00:22'),
(4, 4, '2018-03-07 00:31:40', '2018-03-07 00:31:40'),
(5, 4, '2018-03-07 00:35:34', '2018-03-07 00:35:34'),
(6, 4, '2018-03-07 00:39:42', '2018-03-07 00:39:42'),
(7, 2, '2018-03-07 00:42:32', '2018-03-07 00:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(33, '2014_10_12_000000_create_users_table', 1),
(34, '2014_10_12_100000_create_password_resets_table', 1),
(35, '2018_02_25_162335_create_posts_table', 1),
(36, '2018_02_25_162849_create_tags_table', 1),
(37, '2018_02_25_163030_create_categories_table', 1),
(38, '2018_02_25_163148_create_category_posts_table', 1),
(39, '2018_02_25_175706_create_post_tags_table', 1),
(40, '2018_02_25_181258_create_admins_table', 1),
(41, '2018_02_25_181754_create_roles_table', 1),
(42, '2018_02_25_181852_create_admin_roles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like` tinyint(1) DEFAULT NULL,
  `dislike` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `slug`, `body`, `status`, `posted_by`, `image`, `like`, `dislike`, `created_at`, `updated_at`) VALUES
(3, 'Google Clips review', 'A couple of things to know about Google Clips', 'google-clips-review', '<p>A couple of things to know about Google Clips: First, it is absolutely, unequivocally not a life-logging camera. Sure, it may be called Clips and it does, in fact, have a clip on the back. But do not clip it to your clothing.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Second, it is not an action camera. There are plenty available, if you&rsquo;re in the market. Google Clips is not that. Don&rsquo;t attach it to your skydiving helmet or motorcycle handlebars. Third, Clips is unequivocally not a security camera. Again, there are plenty of those. Here&rsquo;s <a href=\"https://techcrunch.com/2018/02/19/the-20-wyze-security-camera-gets-a-sequel-with-improved-intelligence-and-amazon-echo-support/\" target=\"_blank\">one you can buy for $20</a>.</p>\r\n\r\n<p>So then what, precisely, is Clips? A &ldquo;smart camera,&rdquo; according to Google. It&rsquo;s a new category, of sorts. One that really couldn&rsquo;t have existed in this form without the current on-board technology. The device is actually a deceptively sophisticated collection of tech wrapped up in an adorable little package that looks like an Instagram icon that a fairy godmother turned into a real boy.</p>\r\n\r\n<p>It&rsquo;s not exactly the &ldquo;set it and forget it&rdquo; device that we thought we were getting when the company first announced it way back when at its Pixel 2 event. As advertised, Clips is intended to capture little moments it might otherwise be tough to photograph. The system uses a combination of AI and ML to identify familiar people and animals and determine the moments worth capturing.</p>\r\n\r\n<p>All of that happens through a robust combination of AI and ML, all processed directly on the device itself &mdash; rather than sending it off to a server for processing. This helps cut down on the processing time and maintains some privacy, with nothing you shoot leaving the camera until you choose to transfer it.</p>\r\n\r\n<p>It&rsquo;s an interesting concept &mdash; and one that could certainly appeal to parents looking to capture those little moments without having to keep a smartphone or camera screen at the ready all the time. But is it $249 worth of interesting?</p>\r\n\r\n<h2>Fixed lens</h2>\r\n\r\n<p>A lot of thought clearly went into making Clips as simple as possible to operate. The result is an extremely minimalist object, roughly the size of a silver dollar. On the front is a large, fixed lens. Twisting it turns the camera on an off, while a trio of white lights let you know that it&rsquo;s on. Google says it purposely designed the Clips to be immediately recognizable as a camera, so people are aware that they&rsquo;re being recorded if they&rsquo;ve never seen one before. And, indeed, it looks like a real-world shorthand for the basic idea of a camera.</p>\r\n\r\n<p>Below the lens is a single button &mdash; the only one on the device itself. This is the shutter. Something the company apparently only added after getting feedback from users. Sure, the system is built around the notion of using machine learning to take the perfect photos and videos, but sometimes you want to override that and not leave it up to chance.</p>\r\n\r\n<p>On the bottom is a USB-C port for charging the battery and a small hole used to manually reset the system. The back of the device, meanwhile, is empty, save for a Google &ldquo;G&rdquo; logo. There&rsquo;s no built-in viewfinder, for several reasons, including, but not limited to: price, battery life and the desire to simplify the product as much as possible.</p>\r\n\r\n<p>That means you&rsquo;ll have to sort of eyeball the ideal spot to place the camera to get the right shot. Given the fact that it&rsquo;s got a fixed focal length, there isn&rsquo;t a ton of wiggle room there. Google recommends placing it around three to eight feet from your subject. You also can tap into Live Preview on the accompanying app to get a better idea of what the camera is seeing. The feature also will let you know whether the camera is on a flat surface for better shots. Of course, staring at that sort of defeats the whole &ldquo;not having to keep a smartphone or camera screen at the ready all the time&rdquo; thing.</p>\r\n\r\n<h2>A river runs through it</h2>\r\n\r\n<p>The Clips app is similarly simple, to a fault. By default, everything is captured in a seven-second video called&hellip; wait for it&hellip; a Clip. If you&rsquo;ve ever used Vine, Apple Live Photos or Google Motion Photos, you know the deal here. In fact, the videos shot on device can be saved as either of the latter two and, even more handily, an animated GIF.</p>\r\n\r\n<p>Everything captured by the device is served up in a river. All of the shots appear as static images, until you scroll over them, at which point you can view the full seven seconds of action.</p>\r\n\r\n<p>Tap on a Clip to edit it either as a still image or motion video. The device actually saves every Clip as a series of stills. Using the Photo option, you can scroll through to grab the perfect frame and save that as a JPEG. The video editing option, meanwhile, has built-in scrubbers that let you edit the length of the Clip.</p>\r\n\r\n<h2>Machine learning</h2>\r\n\r\n<p>Once you start capturing shots, you&rsquo;ll notice that some sport a sparkle icon in the upper-right corner. That shows up on &ldquo;Suggested Clips&rdquo; &mdash; when the system identifies the face of a familiar person or pet. If you want to utilize the functionality, you can connect your device to your Google Photos account and the system will cull facial information from there.</p>\r\n\r\n<p>You also can just put the camera to use and it will pick up faces pretty quickly. That aspect did seem to be pretty hit or miss in our testing. There wasn&rsquo;t really much consistency with regard to which Clips of a particular subject the system identified as &ldquo;suggested.&rdquo; So far, it&rsquo;s been trained to capture humans, dogs and cats.</p>\r\n\r\n<p>I also can confirm that it does a pretty decent job on rabbits. The Google team wasn&rsquo;t really sure how it would fare on that front, given some of the complexities of the artificial intelligence on board. For example, the system is trained to identify certain aspects, like standing on four legs, whereas rabbits tend to sit on their hind legs. But Google&rsquo;s AI managed to prevail here, so kudos to them, and congrats to the dozen or so people looking to pick up a Clips to grab photos of their bunny.</p>\r\n\r\n<h2>One perfect shot</h2>\r\n\r\n<p>Clips mostly does a good job capturing key moments. It&rsquo;s not perfect, of course. And really, it requires a bit of good-old-fashioned human curation. That&rsquo;s where you come in. Odds are you&rsquo;re only going to end up sharing a fraction of the shots the camera ends up capturing.</p>\r\n\r\n<p>The device has 16GB of storage on board, so it&rsquo;s going to take you a while to fill the thing up with all of those 1080p videos &mdash; meaning it will be a while before you have to worry about going through and deleting things. The battery, meanwhile, should last around three hours on a charge. It also will go into sleep mode if it gets bored and doesn&rsquo;t spot any action.</p>\r\n\r\n<p>The videos are captured in 1080p and the stills are roughly what you&rsquo;d expect from a standard smartphone camera. And as with many smartphones, Clips struggles in low-light situations. Images come back grainy and motion is blurry. The device will auto-adjust color settings like the default on a handset. You can&rsquo;t futz with those levels in the camera app &mdash; and honestly that level of control probably runs counter to the sort of plug and play functionality Google&rsquo;s shooting for here. Though extra control is never a bad thing.</p>\r\n\r\n<h2>Money clips</h2>\r\n\r\n<p>The first time I tested a smart security camera in my home, I ended up disabling the notifications. I was just getting way too many false positives. Every time my rabbit would move at home, the app would alert me, even if I was on the other side of the world. It was really annoying &mdash; but thankfully, the company added AI functionality that was able to distinguish animals and other movement from people.</p>\r\n\r\n<p>Clips sort of works on the opposite principle, operating on the idea that the right combination of image smarts can scientifically capture the perfect moment in time. It&rsquo;s a new piece of technology designed to free you from being constantly tethered to another piece of technology. It&rsquo;s an odd proposition, and ultimately one that will likely be searching to find its audience for a generation or two.</p>\r\n\r\n<p>Sure, there&rsquo;s appeal for parents looking to capture as many perfect moments with their kids before they get too old. And certainly plenty of pet owners need another excuse to fill their social media feeds full of adorable action shots. Clips certainly delivers as a GIF delivery service, but $249 is a steep price to pay for such novelty in an era when we&rsquo;ve all got a camera within arm&rsquo;s reach 24 hours a day.</p>', 1, NULL, NULL, NULL, NULL, '2018-03-01 22:42:24', '2018-03-07 00:00:22'),
(4, 'The day that changed your phone forever', 'Whether you’re a developer who’s working on mobile app', 'a-day-that-changed-your-phone', '<p>Whether you&rsquo;re a developer who&rsquo;s working on mobile apps, or just someone enjoying the millions of apps available for your phone, today is a very special day.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>It&rsquo;s the 10-year anniversary of the original iPhone SDK.&nbsp;I don&rsquo;t think it&rsquo;s an understatement to say that this release changed a lot of people&rsquo;s lives. I know it changed mine and had a fundamental impact on this company&rsquo;s business. So let&rsquo;s take a moment and look back on what happened a decade ago.</p>\r\n\r\n<div class=\"post-content\">\r\n<div class=\"byline contributor-byline\">\r\n<div class=\"name\">\r\n<div class=\"left\">Craig Hockenberry Contributor</div>\r\n\r\n<div class=\"right\">&nbsp;</div>\r\n</div>\r\n\r\n<p>Craig Hockenberry has been creating software since 1976 and is a principal at the <a href=\"http://iconfactory.com/\">Iconfactory</a></p>\r\n</div>\r\n\r\n<p>There are&nbsp;a lot&nbsp;of links in this piece, many of which were difficult to resurrect on today&rsquo;s web. Make sure you take the time to explore! I&rsquo;ve also tried to avoid technical jargon, so even if you don&rsquo;t know your Swift from a hole in the ground, you can still follow along.</p>\r\n\r\n<h2>Touching the Future</h2>\r\n\r\n<p>For many of us, holding that first iPhone at the end of June 2007 was a glimpse of the future. We all wanted to know what was inside the glass and metal sitting in our pockets.</p>\r\n\r\n<p>Apple had told us&nbsp;<a href=\"https://www.youtube.com/watch?v=TPL9L6bOCr0\" rel=\"noopener\" target=\"_blank\">what the device could do</a>&nbsp;but said&nbsp;<a href=\"https://www.youtube.com/watch?v=P-a_R6ewrmM&amp;t=33m2s\" rel=\"noopener\" target=\"_blank\">very little</a>&nbsp;about how it was done. We didn&rsquo;t know anything about the processor or its speed, how much memory was available, or how you built apps. In many ways, this new device was a black, and silver, box</p>\r\n\r\n<p>As developers, we wanted to understand&nbsp;<a href=\"https://furbo.org/2007/08/21/what-the-iphone-specs-dont-tell-you/\" rel=\"noopener\" target=\"_blank\">this device&rsquo;s capabilities</a>. We wanted to understand&nbsp;<a href=\"https://furbo.org/2007/07/02/beyond-sweet/\" rel=\"noopener\" target=\"_blank\">how our software design was about to change</a>. We were curious and there was much to learn.</p>\r\n\r\n<p>And learn we did. We called it Jailbreaking.</p>\r\n\r\n<h2>Breaking out of jail</h2>\r\n\r\n<p>Discoveries happened quickly. It took just a matter of weeks before&nbsp;<a href=\"https://www.engadget.com/2007/07/10/iphone-hackers-we-have-owned-the-filesystem/\" rel=\"noopener\" target=\"_blank\">the filesystem was exposed</a>. A couple of months later, the entire native app experience was unlocked. Development&nbsp;<a href=\"http://landonf.bikemonkey.org/code/iphone/Toolchain_In_MacPorts.20070812.html\" rel=\"noopener\" target=\"_blank\">toolchains were available</a>&nbsp;and folks were writing&nbsp;<a href=\"https://arstechnica.com/gadgets/2007/08/iphone-installer-and-new-guides-make-iphone-hacking-easier-than-ever/\" rel=\"noopener\" target=\"_blank\">installers for native apps</a>.</p>\r\n\r\n<div class=\"alignright wp-caption\" id=\"attachment_1605298\" style=\"max-width:284px\">\r\n<p>The first iPhone app created outside of Apple.</p>\r\n</div>\r\n\r\n<p>This rapid progress was made possible thanks to the tools used to build the original iPhone. Apple relied on the same infrastructure as Mac OS. They chose a familiar environment to expedite their own development, but that same familiarity allowed those of us outside Cupertino to figure things out quickly.</p>\r\n\r\n<p><a href=\"https://web.archive.org/web/20070911035418/http://iphone.fiveforty.net:80/wiki/index.php/UIKit_Hello_World\" rel=\"noopener\" target=\"_blank\">Hello world.</a></p>\r\n\r\n<p>For example, much of the software on the iPhone was created using Objective-C. Mac developers had long used a tool called&nbsp;<code><a href=\"http://stevenygard.com/projects/class-dump/\" rel=\"noopener\" target=\"_blank\">class-dump</a></code>&nbsp;to show the various pieces of an app and learn how things communicated with each other. After getting access to the first iPhone&rsquo;s apps and frameworks, this software gave great insight into what Apple had written.</p>\r\n\r\n<p>The most important piece was a new thing called&nbsp;<code>UIKit</code>. It contained all the user interface components, like buttons and table views. Since they were similar to the ones we&rsquo;d used on the Mac, it took little effort to make items for taps and scrolling.</p>\r\n\r\n<p>Another important piece of the puzzle was the operating system:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mach_(kernel)\" rel=\"noopener\" target=\"_blank\">Unix</a>. This choice by Apple meant that a lot of open source software was immediately available on our iPhones. We could use it to&nbsp;<a href=\"https://clang.llvm.org/docs/CrossCompilation.html\" rel=\"noopener\" target=\"_blank\">build our apps</a>, then&nbsp;<a href=\"https://matt.ucc.asn.au/dropbear/dropbear.html\" rel=\"noopener\" target=\"_blank\">copy them</a>&nbsp;over to the phone, and, most likely,&nbsp;<a href=\"https://web.archive.org/web/20071022031855/http://phonedev.tumblr.com:80/post/11480920\" rel=\"noopener\" target=\"_blank\">view the content</a>&nbsp;of LatestCrash.plist in /var/logs/CrashReporter.</p>\r\n\r\n<p>I distinctly remember the first time I got a shell prompt on my iPhone and used&nbsp;<code><a href=\"https://en.wikipedia.org/wiki/Uname\" rel=\"noopener\" target=\"_blank\">uname</a></code>&nbsp;to see the system information.&nbsp;<a href=\"https://twitter.com/chockenberry/status/206255882\" rel=\"noopener\" target=\"_blank\">I was home</a>.</p>\r\n\r\n<h2>Early app development</h2>\r\n\r\n<p>I was not alone. Thousands of other developers were finding that the inside of this new device was just as magical as the outside. It shouldn&rsquo;t come as a surprise to hear that there was an explosion of iPhone app development.</p>\r\n\r\n<p>One of the pivotal moments for the burgeoning community came at an&nbsp;<a href=\"https://arstechnica.com/gadgets/2007/08/c41-indie-developer-conference-in-full-swing/\" rel=\"noopener\" target=\"_blank\">independent developer conference called C4[1]</a>. Held in August 2007, many of the attendees had the new device and were discovering its capabilities. Most of us were also experienced Mac developers. We had just been to WWDC and heard&nbsp;<a href=\"https://daringfireball.net/2007/06/wwdc_2007_keynote\" rel=\"noopener\" target=\"_blank\">Apple&rsquo;s pitch for a &ldquo;sweet solution&rdquo;</a>.</p>\r\n\r\n<p>Amid this perfect storm, there was an&nbsp;<a href=\"https://web.archive.org/web/20070907182327/http://ironcoder.org/blog/about/\" rel=\"noopener\" target=\"_blank\">&ldquo;Iron Coder&rdquo;</a>&nbsp;competition for the &ldquo;iPhone API&rdquo;. The conference organizer, Jonathan &ldquo;Wolf&rdquo; Rentzsch, asked us to&nbsp;<a href=\"https://web.archive.org/web/20090615231214/http://rentzsch.com:80/c4/ironCoderLive\" rel=\"noopener\" target=\"_blank\">&ldquo;be creative&rdquo;</a>. We&nbsp;<em>were</em>.</p>\r\n\r\n<p>My own submission was a web app that implemented&nbsp;<a href=\"http://furbo.org/stuff/conspiracy.html\" rel=\"noopener\" target=\"_blank\">a graphing calculator in JavaScript</a>. It epitomized what we all disliked about Apple&rsquo;s proposal a few months earlier: a clunky user interface that ran slowly.&nbsp;<a href=\"http://furbo.org/2007/08/15/benchmarking-in-your-pants/\" rel=\"noopener\" target=\"_blank\">Not the sandwich</a>&nbsp;most of us were hoping for&hellip;</p>\r\n\r\n<p>On the other hand, the native apps blew us away. The winner of the contest was a video conferencing app written by&nbsp;<a href=\"http://www.ecamm.com/about/\" rel=\"noopener\" target=\"_blank\">Glen and Ken Aspeslagh</a>. They built their own&nbsp;<a href=\"https://web.archive.org/web/20071011193817/http://macdaddyworld.com/?p=38\" rel=\"noopener\" target=\"_blank\">front-facing camera hardware and wrote something akin to FaceTime</a>&nbsp;three years before Apple.&nbsp;<a href=\"https://www.youtube.com/watch?v=iew4rXsorTw\" rel=\"noopener\" target=\"_blank\">An amazing achievement</a>&nbsp;considering the first iPhone didn&rsquo;t even have a video camera.</p>\r\n\r\n<p>But for me, the app that came in second place was the shining example of what was to come. First, it was a game and, well, that&rsquo;s worked out pretty well on mobile. But more importantly, it showed how great design and programming could take&nbsp;<a href=\"https://www.youtube.com/watch?v=rkLyDeygOYc\" rel=\"noopener\" target=\"_blank\">something from the physical world</a>, make it work seamlessly on a touch screen and significantly improve the overall experience.</p>\r\n\r\n<p><a href=\"https://www.linkedin.com/in/newmanlucas\" rel=\"noopener\" target=\"_blank\">Lucas Newman</a>&nbsp;and&nbsp;<a href=\"http://www.artofadambetts.com/weblog/\" rel=\"noopener\" target=\"_blank\">Adam Betts</a>&nbsp;created the&nbsp;<a href=\"http://www.artofadambetts.com/weblog/2007/08/lights-off-first-native-iphone-game/\" rel=\"noopener\" target=\"_blank\">Lights Off</a>&nbsp;app a few days before C4. Afterwards, Lucas helped get me started with the Jailbreak tools, and at some point he gave me the source code so I could see how it worked. Luckily, I&rsquo;m good at keeping backups&nbsp;<strong>and</strong>&nbsp;maintaining software:&nbsp;<a href=\"https://www.youtube.com/watch?v=Ec-LwLAbIXQ\" rel=\"noopener\" target=\"_blank\">your iPhone X can still run that same code</a>&nbsp;we all admired 10 years ago!</p>\r\n\r\n<div class=\"aligncenter wp-caption\" id=\"attachment_1605301\" style=\"max-width:1034px\">\r\n<p>Lucas Newman presenting Lights Off at C4[1]. (Source: <a href=\"https://twitter.com/gruber\" rel=\"noopener\" target=\"_blank\">John Gruber</a>)</p>\r\n</div>\r\nIf you&rsquo;re a developer who uses Xcode, get the&nbsp;<a href=\"https://github.com/chockenberry/LightsOffTouch\" rel=\"noopener\" target=\"_blank\">project that&rsquo;s available on GitHub</a>. The project&rsquo;s Jailbreak folder contains everything Lucas sent me. The Xcode project adapts that code so it can be built and run &ndash; no changes were made unless necessary. It&rsquo;s much easier to get running than&nbsp;<a href=\"https://web.archive.org/web/20070827004217/http://www.deliciousmonster.org:80/\" rel=\"noopener\" target=\"_blank\">the original</a>, but please don&rsquo;t complain about the&nbsp;<a href=\"https://github.com/chockenberry/LightsOffTouch/blob/master/Lights%20Off%20-%20iPhone%20X%20Edition.png\" rel=\"noopener\" target=\"_blank\">resolution not being 1-to-1</a>.</div>\r\n\r\n<div class=\"post-content\">\r\n<p>In the code you&rsquo;ll see things like a root view controller that&rsquo;s also an application delegate: remember that we were all learning how to write apps without&nbsp;<em>any</em>&nbsp;documentation. There&rsquo;s also a complete lack of properties, storyboards, asset catalogs, and many other things we take for granted in our modern tools.</p>\r\n\r\n<p>If you don&rsquo;t have Xcode, you&rsquo;re still in luck. Long-time&nbsp;<a href=\"https://duckduckgo.com/?q=site%3Adaringfireball.net+Troughton-Smith\" rel=\"noopener\" target=\"_blank\">&ldquo;iPhone enthusiast&rdquo;</a>&nbsp;Steve Troughton-Smith sells an improved version&nbsp;<a href=\"https://itunes.apple.com/us/app/lights-off/id292025150?mt=8&amp;at=10l4G7&amp;ct=ICONFACTORY_BLOG\" rel=\"noopener\" target=\"_blank\">on the App Store</a>. I still love this game and play it frequently: Its induction into iMore&rsquo;s&nbsp;<a href=\"https://www.imore.com/hall-fame-lucas-newman-adam-betts-and-lights\" rel=\"noopener\" target=\"_blank\">Hall of Fame</a>&nbsp;is well-deserved.</p>\r\n\r\n<p>Now I was armed with tools&nbsp;<strong>and</strong>&nbsp;inspiration. What came next?</p>\r\n\r\n<h2>The Iconfactory&rsquo;s first apps</h2>\r\n\r\n<div class=\"alignleft wp-caption\" id=\"attachment_1605302\" style=\"max-width:280px\">\r\n<p>The first version of Twitterrific on the iPhone. And&nbsp;<a href=\"https://www.jetpens.com/Pilot-G-3-Gel-Ink-Pen-0.38-mm-Black/pd/272\" rel=\"noopener\" target=\"_blank\">pens</a>. And&nbsp;<a href=\"https://web.archive.org/web/20071021023336/https://phonedev.tumblr.com/\" rel=\"noopener\" target=\"_blank\">slerp</a>.</p>\r\n</div>\r\n\r\n<p>In June 2007, we had just released&nbsp;<a href=\"https://iconfactory.com/software/twitterrific_history\" rel=\"noopener\" target=\"_blank\">version 2.1</a>&nbsp;of our wildly popular Mac app for Twitter. It should have be pretty easy to move some Cocoa code from one platform to another, right?</p>\r\n\r\n<div class=\"figure\">\r\n<p>The first version of Twitterrific on the iPhone. And&nbsp;<a href=\"https://www.jetpens.com/Pilot-G-3-Gel-Ink-Pen-0.38-mm-Black/pd/272\" rel=\"noopener\" target=\"_blank\">pens</a>. And&nbsp;<a href=\"https://web.archive.org/web/20071021023336/https://phonedev.tumblr.com/\" rel=\"noopener\" target=\"_blank\">slerp</a>.</p>\r\n</div>\r\n\r\n<p><a href=\"https://furbo.org/2007/08/19/mobiletwitterrific/\" rel=\"noopener\" target=\"_blank\">Not really</a>. But I was learning a lot and having a blast. The iPhone attracted coders of all kinds, including our own&nbsp;<a href=\"https://twitter.com/BigZaphod\" rel=\"noopener\" target=\"_blank\">Sean Heber</a>. In 2007, Sean was doing web development and didn&rsquo;t know anything about Objective-C or programming for the Mac. But that didn&rsquo;t stop him from poking around in the&nbsp;<code>class-dump</code>&nbsp;headers with the rest of us and writing his first app.</p>\r\n\r\n<p>But he took it a step further with a goal to write an app for every day of November 2007 (inspired by his wife doing&nbsp;<a href=\"https://nanowrimo.org/\" rel=\"noopener\" target=\"_blank\">NaNoWriMo</a>.) He called it&nbsp;<a href=\"http://www.appleiphoneschool.com/iapp-a-day/\" rel=\"noopener\" target=\"_blank\">iApp-a-Day</a>&nbsp;and it was a hit in the Jailbreak community. The attention eventually landed him a position at&nbsp;<a href=\"https://web.archive.org/web/20080718210727/http://www.tapulous.com:80/about/\" rel=\"noopener\" target=\"_blank\">Tapulous</a>, alongside the talented folks responsible for the iPhone&rsquo;s first hit franchise:&nbsp;<a href=\"https://en.wikipedia.org/wiki/Tap_Tap_Revenge\" rel=\"noopener\" target=\"_blank\">Tap Tap Revenge</a>.</p>\r\n\r\n<p>Over the course of the month, Sean showed that the iPhone could be whatever the developer wanted it to be. Sure, it could play games, but it could also&nbsp;<a href=\"http://www.appleiphoneschool.com/leftover/\" rel=\"noopener\" target=\"_blank\">keep track of your budget</a>,&nbsp;<a href=\"http://www.appleiphoneschool.com/piano/\" rel=\"noopener\" target=\"_blank\">play a tune</a>, or help you&nbsp;<a href=\"http://www.appleiphoneschool.com/level/\" rel=\"noopener\" target=\"_blank\">hang a painting</a>.</p>\r\n\r\n<div class=\"aligncenter wp-caption\" id=\"attachment_1605299\" style=\"max-width:690px\">\r\n<p>Screenshots from Sean Heber&rsquo;s <a href=\"https://web.archive.org/web/20071107165807/http://www.iphoneatlas.com/2007/10/29/an-iphone-app-a-day-in-november/\" rel=\"noopener\" target=\"_blank\">iApp-a-Day</a>.</p>\r\n</div>\r\n\r\n<p>Both&nbsp;<a href=\"https://github.com/BigZaphod/iappaday\" rel=\"noopener\" target=\"_blank\">Sean</a>&nbsp;and&nbsp;<a href=\"https://github.com/chockenberry/mobile-twitterrific\" rel=\"noopener\" target=\"_blank\">I</a>&nbsp;have archives of the apps we produced during this period. The code is admittedly terrible, but for us it represents something much greater. Reading it brings back fond memories of the halcyon days where we were experimenting with the future.</p>\r\n\r\n<p>There were a lot of surprises in that early version of UIKit. It took forever to find the XML parser because it was buried in the OfficeImport framework. And some important stuff was completely missing: there was no way to return a floating point value with Objective-C.</p>\r\n\r\n<p>There were also strange engineering decisions. You could put arbitrary HTML into a text view, which worked fine with simple tags like&nbsp;<code>&lt;b&gt;</code>, but crashed with more complex ones. Views also used&nbsp;<code>LKLayer</code>&nbsp;for compositing, which was kinda like the new&nbsp;<a href=\"https://en.wikipedia.org/wiki/Mac_OS_X_Leopard\" rel=\"noopener\" target=\"_blank\">Core Animation in Mac OS Leopard</a>, but not the same. Tables also introduced a new concept called &ldquo;cell reuse&rdquo; which allowed for fast scrolling, but it was complex and unwieldy. And it would have been awesome to have view controllers like the ones&nbsp;<a href=\"https://developer.apple.com/documentation/appkit/nsviewcontroller\" rel=\"noopener\" target=\"_blank\">just released for AppKit</a>.</p>\r\n\r\n<p>But that didn&rsquo;t stop us from experimenting and learning what we&nbsp;<em>could</em>&nbsp;do. And then something happened:&nbsp;<a href=\"https://furbo.org/2007/09/11/silence-is-golden/\" rel=\"noopener\" target=\"_blank\">we stopped</a>.</p>\r\n\r\n<h2>A real SDK</h2>\r\n\r\n<p>Apple had worked its butt off to&nbsp;<a href=\"http://www.nytimes.com/2013/10/06/magazine/and-then-steve-said-let-there-be-an-iphone.html?pagewanted=all\" rel=\"noopener\" target=\"_blank\">get the iPhone out the door</a>. Those of us who were writing Jailbreak apps saw some warts in that first product, but they didn&rsquo;t matter at all.&nbsp;<a href=\"https://www.folklore.org/StoryView.py?story=Real_Artists_Ship.txt\" rel=\"noopener\" target=\"_blank\">Real artists ship</a>. Only&nbsp;<a href=\"https://web.archive.org/web/20061205211900/http://www.mercurynews.com/mld/mercurynews/news/columnists/16057579.htm\" rel=\"noopener\" target=\"_blank\">fools</a>&nbsp;thought it sucked.</p>\r\n\r\n<div class=\"alignright wp-caption\" id=\"attachment_1605305\" style=\"max-width:301px\">\r\n<p>Twitterrific&rsquo;s design at the App Store launch.</p>\r\n</div>\r\n\r\n<p>Everyone who&rsquo;s shipped a product knows that the &ldquo;Whew, we did it!&rdquo; is quickly followed by a &ldquo;What&rsquo;s next?&rdquo;</p>\r\n\r\n<p>Maybe the answer to that question was influenced by all the Jailbreaking, or maybe the managers in Cupertino knew what they wanted before the launch. Either way, we were all thrilled when an&nbsp;<a href=\"http://appleinsider.com/articles/07/10/17/steve_jobs_confirms_native_iphone_sdk_by_february\" rel=\"noopener\" target=\"_blank\">official SDK was announced by Steve Jobs</a>, a mere five months after release of the phone itself.</p>\r\n\r\n<p>The iPhone SDK was promised for February of 2008, and given the size of the task, no one was disappointed when it slipped by just a few days. The release was accompanied by&nbsp;<a href=\"https://www.macworld.com/article/1132400/iphonesdk.html\" rel=\"noopener\" target=\"_blank\">an event</a>&nbsp;at the Town Hall theater.</p>\r\n\r\n<p>Ten years ago today was the first time we learned about the Simulator and other changes in Xcode, new and exciting frameworks like Core Location and OpenGL, and a brand new App Store that would get our products into the hands of customers. Jason Snell&nbsp;<a href=\"https://www.macworld.com/article/1132376/liveupdate.html\" rel=\"noopener\" target=\"_blank\">transcribed the event</a>&nbsp;for Macworld. There&rsquo;s also&nbsp;<a href=\"https://youtu.be/HfMvym5SxHU?t=19m32s\" rel=\"noopener\" target=\"_blank\">a video</a>.</p>\r\n\r\n<h2>Our turn to be real artists</h2>\r\n\r\n<p>After recovering from all the great news, developers everywhere started thinking about shipping. We didn&rsquo;t know exactly how long we would have, but we knew we had to hustle.</p>\r\n\r\n<div class=\"alignleft wp-caption\" id=\"attachment_1605296\" style=\"max-width:209px\">\r\n<p>Winning an Apple Design Award.&nbsp;<a href=\"http://furbo.org/2008/06/12/thank-you/\" rel=\"noopener\" target=\"_blank\">Thank you</a>. (Source:&nbsp;<a href=\"https://twitter.com/bagelturf\" rel=\"noopener\" target=\"_blank\">Steve Weller</a>)</p>\r\n</div>\r\n\r\n<p>In the end, we had about four months to get our apps ready. Thanks to what The Iconfactory learned during the Jailbreak era, we had a head start understanding design and development issues. But we still worked our butts off to build&nbsp;<a href=\"https://iconfactory.com/twitterrific_touch/\" rel=\"noopener\" target=\"_blank\">the first iPhone&rsquo;s Twitter app</a>.</p>\r\n\r\n<p>Just before the launch of the App Store, Apple added new categories during its annual design awards ceremony.&nbsp;<a href=\"https://blog.iconfactory.com/2008/06/iconfactory-honored-with-apple-design-award/\" rel=\"noopener\" target=\"_blank\">We were thrilled to win an ADA</a>&nbsp;for our work on the iPhone.</p>\r\n\r\n<p>How thrilled? The exclamation I used&nbsp;<a href=\"https://twitter.com/chockenberry/status/767688189\" rel=\"noopener\" target=\"_blank\">while downloading the new SDK</a>&nbsp;was the same as&nbsp;<a href=\"https://twitter.com/chockenberry/status/832709404\" rel=\"noopener\" target=\"_blank\">getting to hold that silver cube</a>.</p>\r\n\r\n<p>After that, we were among the&nbsp;<a href=\"https://techcrunch.com/2008/07/10/app-store-launches-upgrade-itunes-now/\" rel=\"noopener\" target=\"_blank\">first apps to be featured in the App Store</a>&nbsp;and&nbsp;<a href=\"https://techcrunch.com/2008/07/10/iphone-app-store-the-early-list-of-top-downloads/\" rel=\"noopener\" target=\"_blank\">ranked high</a>&nbsp;in the early charts.</p>\r\n\r\n<p>We knew we were a part of something big. Just not how big.</p>\r\n\r\n<h2>The journey continues</h2>\r\n\r\n<div class=\"alignright wp-caption\" id=\"attachment_1605303\" style=\"max-width:282px\">\r\n<p>The second version of Twitterrific and&nbsp;<a href=\"https://youtu.be/rW5Amx3_L9E?t=32m\" rel=\"noopener\" target=\"_blank\">some guy</a>.</p>\r\n</div>\r\n\r\n<p>The Iconfactory&rsquo;s&nbsp;<a href=\"https://twitterrific.com/ios/\" rel=\"noopener\" target=\"_blank\">first mobile app</a>&nbsp;entered a store where there were hundreds of products. There are now over 2 million.</p>\r\n\r\n<p>We now sell mobile apps for&nbsp;<a href=\"https://iconfactoryapps.com/\" rel=\"noopener\" target=\"_blank\">consumers</a>&nbsp;and tools for the&nbsp;<a href=\"https://linea-app.com/\" rel=\"noopener\" target=\"_blank\">designers</a>&nbsp;&amp;&nbsp;<a href=\"https://xscopeapp.com\" rel=\"noopener\" target=\"_blank\">developers</a>&nbsp;who make them.</p>\r\n\r\n<p>We now do design work for mobile apps at companies&nbsp;<a href=\"https://design.iconfactory.com/facebook-messenger-emoji/\" rel=\"noopener\" target=\"_blank\">large</a>,&nbsp;<a href=\"https://design.iconfactory.com/suunto-7r-for-ios/\" rel=\"noopener\" target=\"_blank\">medium</a>, and<br />\r\n<a href=\"https://design.iconfactory.com/pushtracker/\" rel=\"noopener\" target=\"_blank\">small</a>.</p>\r\n\r\n<p>We now develop mobile apps&nbsp;<a href=\"https://dev.iconfactory.com/\" rel=\"noopener\" target=\"_blank\">for a select group of clients</a>. (<a href=\"https://iconfactory.com/contact\" rel=\"noopener\" target=\"_blank\">Get in touch</a>&nbsp;if you&rsquo;d like to be one of them.)</p>\r\n\r\n<p>A lot can happen in a decade.</p>\r\n\r\n<p>But one thing hasn&rsquo;t changed. Our entire team is still proud to be a part of this vibrant ecosystem and of the contributions we make to it. Here&rsquo;s to another decade!</p>\r\n</div>', 1, NULL, NULL, NULL, NULL, '2018-03-07 00:31:38', '2018-03-07 00:31:38'),
(5, 'Paris-based VC firm Ventech is raising a new fund', 'Paris-based VC firm Ventech is raising a new fund', 'paris-based-vc-firm-ventech-is-raising-a-new-fund', '<p><a href=\"http://www.ventechvc.com\" target=\"_blank\">Ventech</a> has been around for <a href=\"https://www.crunchbase.com/organization/ventech-capital\" target=\"_blank\">20 years</a>, which is the equivalent of 80 years in tech time. And the VC firm is still going strong as it just announced the initial closing of a new fund. The firm has raised $170 million (&euro;140 million) and wants to reach the $250 million hard cap (&euro;200 million) within a few months.</p>\r\n\r\n<p>And Ventech isn&rsquo;t going to reinvent the wheel. The firm plans to do more of the same with seed and Series A investments in Europe. As the name suggest, Ventech is looking for <em>tech</em> investments in general. You can expect investments that range between &euro;0.5 million and &euro;15 million ($18.6 million).</p>\r\n\r\n<p>Recent notable investments include StickyADS.tv, Vestiaire Collective and Webedia. Over the past 20 years, the firm has handled 120 investments, which led to 60 exits including 15 IPOs. That&rsquo;s quite a good ratio.</p>\r\n\r\n<p>Ventech Capital V represents the fifth European fund for the firm. Ventech has also raised multiple funds <a href=\"https://www.crunchbase.com/organization/ventech-china\" target=\"_blank\">in China</a>.</p>\r\n\r\n<p>Behind the scene, Ventech relies exclusively on European institutional investors and family offices. You won&rsquo;t find any big industrial company in the list of limited partners.</p>\r\n\r\n<p>Ventech Europe has <a href=\"http://www.ventechvc.com/team/\" target=\"_blank\">partners</a> in Paris, Munich and Helsinki. If you&rsquo;re creating a startup in one of those areas, chances are they want to hear from you. Many portfolio companies have opened offices in the U.S., so the firm knows how to enter the U.S. market too.</p>', 1, NULL, NULL, NULL, NULL, '2018-03-07 00:35:34', '2018-03-07 00:35:34'),
(6, 'Tinkerer Jonathan Zufi talks about design and Escape From New York', 'This week on Technotopia I talked to Jonathan Zufi', 'tinkerer-jonathan-zufi-talks-about-design-and-escape-from-new-york', '<p>This week on Technotopia I talked to Jonathan Zufi, creator of the <a href=\"http://lifeclockone.com\" target=\"_blank\">LifeClock One</a>, a replica of the watch worn by Snake Pliskin in Escape From New York. Zufi loves design and his insight on what makes something a timeless classic &ndash; even when it comes to computer hardware &ndash; is fascinating.</p>\r\n\r\n<p>Zufi is also the author of <a href=\"http://iconicbook.com\" target=\"_blank\">Iconic</a>, a book that details Apple products from the earliest days to the latest models. It&rsquo;s a beautiful book and the photos are amazing. It&rsquo;s well worth a read if you&rsquo;re into design, hardware, or Apple.</p>\r\n\r\n<p><a href=\"https://techcrunch.com/tag/technotopia%E2%80%9D\" rel=\"noopener\">Technotopia</a> is a podcast by John Biggs about a better future. You can subscribe in <a href=\"http://www.stitcher.com/s?fid=123180&amp;refid=stpr\" rel=\"noopener\" target=\"_blank\">Stitcher</a>, <a href=\"https://audioboom.com/channels/4933416.rss\" target=\"_blank\">RSS</a>, or <a href=\"https://audioboom.com/channels/4933416.rss\" rel=\"noopener\" target=\"_blank\">iTunes</a> and <a href=\"https://audioboom.com/posts/6676650-tinkerer-jonathan-zufi-talks-about-design-and-escape-from-new-york\" target=\"_blank\">listen the MP3 here</a>.</p>', NULL, NULL, NULL, NULL, NULL, '2018-03-07 00:39:42', '2018-03-07 00:39:42'),
(7, 'ReportLab and Future Community Project Launches', 'ReportLab and Future Community Project Launches', 'python-community-project-launches', '<p>Congratulations to fellow Python developer <a href=\"https://github.com/driscollis\">Mike Driscoll</a> for his successful <strong><a href=\"https://www.kickstarter.com/projects/34257246/reportlab-pdf-processing-with-python/\">ReportLab: PDF Processing with Python Kickstarter</a></strong> that just concluded with over double his funding goal.</p>\r\n\r\n<p>I was excited to back Mike&#39;s project for a couple of reasons. First, I&#39;ve used <a href=\"https://www.reportlab.com/opensource/\">ReportLab</a> on past projects and it is a handy library for working with PDFs. Second, it is super useful to have entire books written on niche Python code libraries such as ReportLab.</p>\r\n\r\n<p><a href=\"https://www.fullstackpython.com/\">Full Stack Python</a> will gladly back and spread the word about other awesome, legitimate Python community projects. Let me know via email (matthew.makai@gmail.com or mattmakai@fullstackguides.com) when you are getting ready to launch a Python project so I can help give a boost.</p>\r\n\r\n<p><a href=\"https://talkpython.fm/\">Michael Kennedy</a> and I know from our <a href=\"https://www.kickstarter.com/projects/mikeckennedy/python-for-entrepreneurs-video-course\">own Kickstarter experience</a> how much work goes into making these ideas come to fruition. It&#39;s a big confidence boost to have a community tailwind at your back and I am always happy to be part of that tailwind.</p>\r\n\r\n<p>Got questions or comments about <a href=\"https://www.fullstackpython.com/\">Full Stack Python</a>? Send me an email or <a href=\"https://github.com/mattmakai/fullstackpython.com/issues\">submit an issue ticket on GitHub</a> to let me know how to improve the site as I continue to <a href=\"https://www.fullstackpython.com/table-of-contents.html\">fill in the table of contents</a> with <a href=\"https://www.fullstackpython.com/change-log.html\">new pages</a> and <a href=\"https://www.fullstackpython.com/blog.html\">new tutorials</a>.</p>\r\n\r\n<hr />', 1, NULL, NULL, NULL, NULL, '2018-03-07 00:42:32', '2018-03-07 00:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(3, 5, '2018-03-01 22:42:24', '2018-03-01 22:42:24'),
(3, 6, '2018-03-01 22:42:24', '2018-03-01 22:42:24'),
(3, 7, '2018-03-01 22:42:24', '2018-03-01 22:42:24'),
(3, 8, '2018-03-01 22:42:24', '2018-03-01 22:42:24'),
(4, 9, '2018-03-07 00:31:39', '2018-03-07 00:31:39'),
(4, 10, '2018-03-07 00:31:39', '2018-03-07 00:31:39'),
(4, 11, '2018-03-07 00:31:39', '2018-03-07 00:31:39'),
(4, 12, '2018-03-07 00:31:39', '2018-03-07 00:31:39'),
(4, 13, '2018-03-07 00:31:39', '2018-03-07 00:31:39'),
(6, 12, '2018-03-07 00:39:42', '2018-03-07 00:39:42'),
(6, 13, '2018-03-07 00:39:42', '2018-03-07 00:39:42'),
(7, 4, '2018-03-07 00:42:32', '2018-03-07 00:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', '2018-03-01 22:17:25', '2018-03-01 22:17:25'),
(2, 'Codeigniter', 'codeigniter', '2018-03-01 22:17:40', '2018-03-01 22:17:40'),
(3, 'Symphony', 'symphony', '2018-03-01 22:17:57', '2018-03-01 22:17:57'),
(4, 'Django', 'django', '2018-03-01 22:18:09', '2018-03-01 22:18:09'),
(5, 'Google', 'google', '2018-03-01 22:39:51', '2018-03-01 22:39:51'),
(6, 'Hardware', 'hardware', '2018-03-01 22:40:17', '2018-03-01 22:40:17'),
(7, 'Digital Cameras', 'digital-cameras', '2018-03-01 22:40:45', '2018-03-01 22:40:45'),
(8, 'Google Clips', 'google-clips', '2018-03-01 22:41:09', '2018-03-01 22:41:09'),
(9, 'Apps', 'apps', '2018-03-07 00:25:27', '2018-03-07 00:25:27'),
(10, 'Apple', 'apple', '2018-03-07 00:25:44', '2018-03-07 00:25:44'),
(11, 'iPhone', 'iphone', '2018-03-07 00:26:02', '2018-03-07 00:26:02'),
(12, 'iconfactory', 'iconfactory', '2018-03-07 00:26:34', '2018-03-07 00:26:34'),
(13, 'sdk', 'skd', '2018-03-07 00:26:50', '2018-03-07 00:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD KEY `category_posts_post_id_index` (`post_id`),
  ADD KEY `category_posts_category_id_index` (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_post_id_index` (`post_id`),
  ADD KEY `post_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
