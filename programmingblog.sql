-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2018 at 07:12 PM
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
(1, 'Technology', 'technology', '2018-02-26 23:06:44', '2018-02-26 23:06:44'),
(2, 'JAVA', 'java', '2018-02-27 10:09:24', '2018-02-27 10:09:24');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_25_162335_create_posts_table', 1),
(4, '2018_02_25_162849_create_tags_table', 1),
(5, '2018_02_25_163030_create_categories_table', 1),
(6, '2018_02_25_163148_create_category_posts_table', 1),
(7, '2018_02_25_175706_create_post_tags_table', 1),
(8, '2018_02_25_181258_create_admins_table', 1),
(9, '2018_02_25_181754_create_roles_table', 1),
(10, '2018_02_25_181852_create_admin_roles_table', 1);

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
  `status` tinyint(1) DEFAULT '0',
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
(2, 'Google Clips review', 'A couple of things to know about Google Clips', 'google-clips-review', '<p>\r\n</p><p>A couple of things to know about Google Clips: First, \r\nit is absolutely, unequivocally not a life-logging camera. Sure, it may \r\nbe called Clips and it does, in fact, have a clip on the back. But do \r\nnot clip it to your clothing.</p>\r\n<p></p>\r\n<p>Second, it is not an action camera. There are \r\nplenty available, if you’re in the market. Google Clips is not that. \r\nDon’t attach it to your skydiving helmet or motorcycle handlebars. \r\nThird, Clips is unequivocally not a security camera. Again, there are \r\nplenty of those. Here’s <a target=\"_blank\" rel=\"nofollow\" href=\"https://techcrunch.com/2018/02/19/the-20-wyze-security-camera-gets-a-sequel-with-improved-intelligence-and-amazon-echo-support/\">one you can buy for $20</a>.</p>\r\n<p>So then what, precisely, is Clips? A “smart camera,” according to \r\nGoogle. It’s a new category, of sorts. One that really couldn’t have \r\nexisted in this form without the current on-board technology. The device\r\n is actually a deceptively sophisticated collection of tech wrapped up \r\nin an adorable little package that looks like an Instagram icon that a \r\nfairy godmother turned into a real boy.</p>\r\n<p>It’s not exactly the “set it and forget it” device that we thought we\r\n were getting when the company first announced it way back when at its \r\nPixel 2 event. As advertised, Clips is intended to capture little \r\nmoments it might otherwise be tough to photograph. The system uses a \r\ncombination of AI and ML to identify familiar people and animals and \r\ndetermine the moments worth capturing.</p>\r\n\r\n\r\n<p>All of that happens through a robust combination of AI and ML, all \r\nprocessed directly on the device itself — rather than sending it off to a\r\n server for processing. This helps cut down on the processing time and \r\nmaintains some privacy, with nothing you shoot leaving the camera until \r\nyou choose to transfer it.</p>\r\n<p>It’s an interesting concept — and one that could certainly appeal to \r\nparents looking to capture those little moments without having to keep a\r\n smartphone or camera screen at the ready all the time. But is it $249 \r\nworth of interesting?</p>\r\n\r\n\r\n<p>A lot of thought clearly went into making Clips as simple as possible\r\n to operate. The result is an extremely minimalist object, roughly the \r\nsize of a silver dollar. On the front is a large, fixed lens. Twisting \r\nit turns the camera on an off, while a trio of white lights let you know\r\n that it’s on. Google says it purposely designed the Clips to be \r\nimmediately recognizable as a camera, so people are aware that they’re \r\nbeing recorded if they’ve never seen one before. And, indeed, it looks \r\nlike a real-world shorthand for the basic idea of a camera.</p>\r\n<p>Below the lens is a single button — the only one on the device \r\nitself. This is the shutter. Something the company apparently only added\r\n after getting feedback from users. Sure, the system is built around the\r\n notion of using machine learning to take the perfect photos and videos,\r\n but sometimes you want to override that and not leave it up to chance.</p><p>\r\n</p><p>On the bottom is a USB-C port for charging the battery and a small \r\nhole used to manually reset the system. The back of the device, \r\nmeanwhile, is empty, save for a Google “G” logo. There’s no built-in \r\nviewfinder, for several reasons, including, but not limited to: price, \r\nbattery life and the desire to simplify the product as much as possible.</p>\r\n<p>That means you’ll have to sort of eyeball the ideal spot to place the\r\n camera to get the right shot. Given the fact that it’s got a fixed \r\nfocal length, there isn’t a ton of wiggle room there. Google recommends \r\nplacing it around three to eight feet from your subject. You also can \r\ntap into Live Preview on the accompanying app to get a better idea of \r\nwhat the camera is seeing. The feature also will let you know whether \r\nthe camera is on a flat surface for better shots. Of course, staring at \r\nthat sort of defeats the whole “not having to keep a smartphone or \r\ncamera screen at the ready all the time” thing.</p>\r\n\r\n<p></p><p>\r\n</p><p>The Clips app is similarly simple, to a fault. By default, everything\r\n is captured in a seven-second video called… wait for it… a Clip. If \r\nyou’ve ever used Vine, Apple Live Photos or Google Motion Photos, you \r\nknow the deal here. In fact, the videos shot on device can be saved as \r\neither of the latter two and, even more handily, an animated GIF.</p>\r\n<p>Everything captured by the device is served up in a river. All of the\r\n shots appear as static images, until you scroll over them, at which \r\npoint you can view the full seven seconds of action.</p>\r\n\r\n<br><p></p><p></p>', 0, NULL, NULL, NULL, NULL, '2018-02-27 12:11:02', '2018-02-27 12:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Laravel', 'laravel', '2018-02-26 22:59:28', '2018-02-26 22:59:28'),
(2, 'Django', 'django', '2018-02-27 10:02:35', '2018-02-27 10:02:35'),
(3, 'Codeigniter', 'codeigniter', '2018-02-27 11:21:28', '2018-02-27 11:21:28'),
(4, 'Ruby on Rails', 'ruby-on-rails', '2018-02-27 11:22:23', '2018-02-27 11:22:23'),
(5, 'Flask', 'flask', '2018-02-27 11:22:46', '2018-02-27 11:22:46'),
(6, 'JQuery', 'jquery', '2018-02-27 11:23:22', '2018-02-27 11:23:22'),
(7, 'ASP.NET MVC', 'asp.net-mvc', '2018-02-27 11:23:57', '2018-02-27 11:23:57');

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category_posts`
--
ALTER TABLE `category_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
