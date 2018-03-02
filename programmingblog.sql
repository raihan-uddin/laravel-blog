-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2018 at 05:43 AM
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
(3, 4, '2018-03-01 22:42:24', '2018-03-01 22:42:24');

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
(3, 'Google Clips review', 'A couple of things to know about Google Clips', 'google-clips-review', '<p>A couple of things to know about Google Clips: First, it is absolutely, unequivocally not a life-logging camera. Sure, it may be called Clips and it does, in fact, have a clip on the back. But do not clip it to your clothing.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Second, it is not an action camera. There are plenty available, if you&rsquo;re in the market. Google Clips is not that. Don&rsquo;t attach it to your skydiving helmet or motorcycle handlebars. Third, Clips is unequivocally not a security camera. Again, there are plenty of those. Here&rsquo;s <a href=\"https://techcrunch.com/2018/02/19/the-20-wyze-security-camera-gets-a-sequel-with-improved-intelligence-and-amazon-echo-support/\" target=\"_blank\">one you can buy for $20</a>.</p>\r\n\r\n<p>So then what, precisely, is Clips? A &ldquo;smart camera,&rdquo; according to Google. It&rsquo;s a new category, of sorts. One that really couldn&rsquo;t have existed in this form without the current on-board technology. The device is actually a deceptively sophisticated collection of tech wrapped up in an adorable little package that looks like an Instagram icon that a fairy godmother turned into a real boy.</p>\r\n\r\n<p>It&rsquo;s not exactly the &ldquo;set it and forget it&rdquo; device that we thought we were getting when the company first announced it way back when at its Pixel 2 event. As advertised, Clips is intended to capture little moments it might otherwise be tough to photograph. The system uses a combination of AI and ML to identify familiar people and animals and determine the moments worth capturing.</p>\r\n\r\n<p>All of that happens through a robust combination of AI and ML, all processed directly on the device itself &mdash; rather than sending it off to a server for processing. This helps cut down on the processing time and maintains some privacy, with nothing you shoot leaving the camera until you choose to transfer it.</p>\r\n\r\n<p>It&rsquo;s an interesting concept &mdash; and one that could certainly appeal to parents looking to capture those little moments without having to keep a smartphone or camera screen at the ready all the time. But is it $249 worth of interesting?</p>\r\n\r\n<h2>Fixed lens</h2>\r\n\r\n<p><img alt=\"\" src=\"https://tctechcrunch2011.files.wordpress.com/2018/02/3q3a0029.jpg?w=1024&amp;h=683\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>A lot of thought clearly went into making Clips as simple as possible to operate. The result is an extremely minimalist object, roughly the size of a silver dollar. On the front is a large, fixed lens. Twisting it turns the camera on an off, while a trio of white lights let you know that it&rsquo;s on. Google says it purposely designed the Clips to be immediately recognizable as a camera, so people are aware that they&rsquo;re being recorded if they&rsquo;ve never seen one before. And, indeed, it looks like a real-world shorthand for the basic idea of a camera.</p>\r\n\r\n<p>Below the lens is a single button &mdash; the only one on the device itself. This is the shutter. Something the company apparently only added after getting feedback from users. Sure, the system is built around the notion of using machine learning to take the perfect photos and videos, but sometimes you want to override that and not leave it up to chance.</p>\r\n\r\n<p><img alt=\"\" src=\"https://tctechcrunch2011.files.wordpress.com/2018/02/3q3a0031-2.jpg?w=1024&amp;h=683\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>On the bottom is a USB-C port for charging the battery and a small hole used to manually reset the system. The back of the device, meanwhile, is empty, save for a Google &ldquo;G&rdquo; logo. There&rsquo;s no built-in viewfinder, for several reasons, including, but not limited to: price, battery life and the desire to simplify the product as much as possible.</p>\r\n\r\n<p>That means you&rsquo;ll have to sort of eyeball the ideal spot to place the camera to get the right shot. Given the fact that it&rsquo;s got a fixed focal length, there isn&rsquo;t a ton of wiggle room there. Google recommends placing it around three to eight feet from your subject. You also can tap into Live Preview on the accompanying app to get a better idea of what the camera is seeing. The feature also will let you know whether the camera is on a flat surface for better shots. Of course, staring at that sort of defeats the whole &ldquo;not having to keep a smartphone or camera screen at the ready all the time&rdquo; thing.</p>\r\n\r\n<h2>A river runs through it</h2>\r\n\r\n<p><img alt=\"\" src=\"https://tctechcrunch2011.files.wordpress.com/2018/02/3q3a0048.jpg?w=1024&amp;h=683\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>The Clips app is similarly simple, to a fault. By default, everything is captured in a seven-second video called&hellip; wait for it&hellip; a Clip. If you&rsquo;ve ever used Vine, Apple Live Photos or Google Motion Photos, you know the deal here. In fact, the videos shot on device can be saved as either of the latter two and, even more handily, an animated GIF.</p>\r\n\r\n<p>Everything captured by the device is served up in a river. All of the shots appear as static images, until you scroll over them, at which point you can view the full seven seconds of action.</p>\r\n\r\n<p><img alt=\"\" src=\"https://tctechcrunch2011.files.wordpress.com/2018/02/3q3a0049.jpg?w=1024&amp;h=683\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>Tap on a Clip to edit it either as a still image or motion video. The device actually saves every Clip as a series of stills. Using the Photo option, you can scroll through to grab the perfect frame and save that as a JPEG. The video editing option, meanwhile, has built-in scrubbers that let you edit the length of the Clip.</p>\r\n\r\n<h2>Machine learning</h2>\r\n\r\n<p><img alt=\"\" src=\"https://tctechcrunch2011.files.wordpress.com/2018/02/unnamed-1.gif?w=640&amp;h=405\" style=\"height:405px; width:640px\" /></p>\r\n\r\n<p>Once you start capturing shots, you&rsquo;ll notice that some sport a sparkle icon in the upper-right corner. That shows up on &ldquo;Suggested Clips&rdquo; &mdash; when the system identifies the face of a familiar person or pet. If you want to utilize the functionality, you can connect your device to your Google Photos account and the system will cull facial information from there.</p>\r\n\r\n<p>You also can just put the camera to use and it will pick up faces pretty quickly. That aspect did seem to be pretty hit or miss in our testing. There wasn&rsquo;t really much consistency with regard to which Clips of a particular subject the system identified as &ldquo;suggested.&rdquo; So far, it&rsquo;s been trained to capture humans, dogs and cats.</p>\r\n\r\n<p>I also can confirm that it does a pretty decent job on rabbits. The Google team wasn&rsquo;t really sure how it would fare on that front, given some of the complexities of the artificial intelligence on board. For example, the system is trained to identify certain aspects, like standing on four legs, whereas rabbits tend to sit on their hind legs. But Google&rsquo;s AI managed to prevail here, so kudos to them, and congrats to the dozen or so people looking to pick up a Clips to grab photos of their bunny.</p>\r\n\r\n<h2>One perfect shot</h2>\r\n\r\n<p><img alt=\"\" src=\"https://tctechcrunch2011.files.wordpress.com/2018/02/gc_20180220_162818_1519238574633-animation.gif?w=640&amp;h=405\" style=\"height:405px; width:640px\" /></p>\r\n\r\n<p>Clips mostly does a good job capturing key moments. It&rsquo;s not perfect, of course. And really, it requires a bit of good-old-fashioned human curation. That&rsquo;s where you come in. Odds are you&rsquo;re only going to end up sharing a fraction of the shots the camera ends up capturing.</p>\r\n\r\n<p>The device has 16GB of storage on board, so it&rsquo;s going to take you a while to fill the thing up with all of those 1080p videos &mdash; meaning it will be a while before you have to worry about going through and deleting things. The battery, meanwhile, should last around three hours on a charge. It also will go into sleep mode if it gets bored and doesn&rsquo;t spot any action.</p>\r\n\r\n<p>The videos are captured in 1080p and the stills are roughly what you&rsquo;d expect from a standard smartphone camera. And as with many smartphones, Clips struggles in low-light situations. Images come back grainy and motion is blurry. The device will auto-adjust color settings like the default on a handset. You can&rsquo;t futz with those levels in the camera app &mdash; and honestly that level of control probably runs counter to the sort of plug and play functionality Google&rsquo;s shooting for here. Though extra control is never a bad thing.</p>\r\n\r\n<h2>Money clips</h2>\r\n\r\n<p><img alt=\"\" src=\"https://tctechcrunch2011.files.wordpress.com/2018/02/3q3a0037.jpg?w=1024&amp;h=683\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>The first time I tested a smart security camera in my home, I ended up disabling the notifications. I was just getting way too many false positives. Every time my rabbit would move at home, the app would alert me, even if I was on the other side of the world. It was really annoying &mdash; but thankfully, the company added AI functionality that was able to distinguish animals and other movement from people.</p>\r\n\r\n<p>Clips sort of works on the opposite principle, operating on the idea that the right combination of image smarts can scientifically capture the perfect moment in time. It&rsquo;s a new piece of technology designed to free you from being constantly tethered to another piece of technology. It&rsquo;s an odd proposition, and ultimately one that will likely be searching to find its audience for a generation or two.</p>\r\n\r\n<p>Sure, there&rsquo;s appeal for parents looking to capture as many perfect moments with their kids before they get too old. And certainly plenty of pet owners need another excuse to fill their social media feeds full of adorable action shots. Clips certainly delivers as a GIF delivery service, but $249 is a steep price to pay for such novelty in an era when we&rsquo;ve all got a camera within arm&rsquo;s reach 24 hours a day.</p>', 1, NULL, NULL, NULL, NULL, '2018-03-01 22:42:24', '2018-03-01 22:42:24');

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
(3, 8, '2018-03-01 22:42:24', '2018-03-01 22:42:24');

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
(8, 'Google Clips', 'google-clips', '2018-03-01 22:41:09', '2018-03-01 22:41:09');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
