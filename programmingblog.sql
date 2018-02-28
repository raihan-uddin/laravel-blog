-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2018 at 08:05 PM
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
(1, 'Power User দের জন্য গুগলের ৮৯টি Hidden টিপস এন্ড ট্রিক্স', 'Power User দের জন্য গুগলের ৮৯টি Hidden টিপস এন্ড ট্রিক্স', 'Power-User-দের -জন্য-গুগলের-৮৯টি-Hidden-টিপস-এন্ড-ট্রিক্স', '<p>\r\n</p><p>টেকটিউনসে আমার প্রায় ৬ বছর হতে চলছে! তো অনেক দিন হয়ে গেল এক্সক্লুসিভ \r\nকিছু লিখি না। তাই আজ কিছু অন্যরকম এবং বিশাল আকৃতির টিউন করতে মন চাইলো। \r\nযেই কথা সেই কাজ!</p><p>আপনি ইন্টারনেট ব্যবহার করে আর দিনে অন্তত একবার \r\nহলেও গুগলে প্রবেশ করেন না এমন লোক খুঁজে পাওয়া যাবে না। আমি টিউনার \r\nগেমওয়ালা আজ টেকটিউনসে গুগল সম্পর্কে জব্বর ৮৯টি টিপস এন্ড ট্রিক্স নিয়ে \r\nএসেছি যা হয়তো আগে আপনারা জানতেন না। যেহেতু এটি একটু বড়সড় টিউন  তাই \r\nভূমিকায় আর বেশি কথা না বাড়িয়ে চলুন সরাসরি মূল টিউনে চলে যাই, তো হাই \r\nহ্যালো না বলে সরাসরি টিউনে চলে যাচ্ছি!</p><h2>১) টাইমার বা স্টপ-ওয়াচ!</h2><p></p><p>গুগল সার্চ বক্সে Set timer for ## minutes  লিখলে তত মিনিটের জন্য গুগল আপনাকে টাইমার হিসেবে কাজ করাবে।</p><h2>২) সুর্যদয় এবং সুর্যাস্ত!</h2><p>\r\nগুগলে আপনি প্রতিদিনের সুর্যদয় এবং সুর্যাস্তের সময় জেনে নিতে পারবেন খুবই \r\nসহজে। এর জন্য Sunrise in ## অথবা Sunset in ## লিখে গুগলে সার্চ দিলেই \r\nহবে। এখানে ড্যাশের জায়গায় আপনার কাঙ্খিত জায়গার নাম লিখতে হবে।&nbsp;</p><p>\r\n</p><h2>৩) আবহাওয়া!</h2>\r\n\r\n\r\nগুগলের সাহায্যে আপনি বিশ্বের যেকোনো স্থানের আবহাওয়ার খবরেও চোখ বুলিয়ে \r\nনিতে পারবেন। শুধু সার্চ বক্সে লিখুন forecast in ## তাহলেই হবে। এখানেও \r\nড্যাশের জায়গায় আপনার কাঙ্খিত জায়গার নাম লিখতে হবে।&nbsp;<p></p><p>\r\n</p><h2>৪) ডাবল কোট সার্চ!</h2>\r\n\r\n<p></p><p>\r\nকোনো নির্দিষ্ট বিষয়ে গুগল থেকে বেশি একুরেট এবং সুক্ষ সার্চ রেজাল্ট পেতে \r\nচাইলে ডাবল কোটস দিয়ে সার্চ দিন। যেমন \"bangla songs\", \"hindi movies\" \r\nইত্যাদি।&nbsp;</p><p>\r\n</p><h2>৫) ব্যারেল রোল!</h2>\r\n\r\n\r\n<p>গুগল সার্চ বক্সে শুধু লিখুন do a barrel roll আর নিজেই মজা লুটুন!</p><h2>৬) কোনো ওয়েবসাইট থেকে নির্দিষ্ট বিষয়ের সার্চ</h2>\r\n\r\n<p></p><p>\r\n</p><p>কোনো ওয়েবসাইট থেকে নির্দিষ্ট বিষয়ের সার্চ রেজাল্ট পেতে চাইলে গুগলে \r\nসার্চ আইটেম লিখে কোনোল চিহ্ন দিয়ে পরে ওয়েবসাইটের নাম লিখে সার্চ দিতে \r\nহবে। যেমন how to delete facebook account:<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.facebook.com\">www.facebook.com</a></p><h2>৭) নির্দিষ্ট টাইটেলের সার্চ!</h2>\r\n\r\n<p></p><p>\r\n</p><p>আপনি যদি কোনো নির্দিষ্ট কিওর্য়াডের টাইটেলের সার্চ রেজাল্ট পেতে চান \r\nতাহলে গুগল বক্সে অন্যভাবে লিখতে হবে। যেমন ২০১৭ সালের বেস্ট অ্যান্ড্রয়েড \r\nএপপস লিস্ট। তাহলে বক্সে লিখুন best android apps intitle:2016 এভাবে \r\nলিখুন।</p><h2>৮) গুগল নিউজপ্যাপার</h2>\r\n\r\n<p></p><p>\r\n</p><p>গুগলে আপনি ১৯৯৮ সাল থেকে ২০১০ সাল পর্যন্ত ইংরেজি বহু ধরনের \r\nনিউজপ্যাপারের কালেকশন পাবেন। শুধু লিখুন google newspaper collection আর \r\nনিজেই ট্রাই করে দেখতে পারেন। দুঃখের বিষয় হচ্ছে গত কয়েক বছর ধরে গুগল \r\nতাদের এই ফিচারের কোনো আপগ্রেড করেনি।</p><h2>৯) ফ্লাইট স্ট্যাটাস</h2>\r\n\r\n\r\n<p>বিমানের ফ্লাইট স্ট্যাটাস আপনি গুগল সার্চ বক্সেই পেযে যাবেন খুব সহজেই! এর জন্য সার্চ বক্সে ফ্লাইট নাম আর নাম্বার লিখে সার্চ দিন।</p><h2>১০) ভিন্ন এঙ্গেলের গুগল</h2><p>\r\n</p><p>গুগলকে অন্য এঙ্গেলে দেখবার জন্য আপনি সার্চ বক্সে লিখুন askew আর নিজেই মজা লুটুন!</p><h2>১১) গুগল প্যাকম্যান!</h2><p>গুগল সার্চ পেইজেই প্যাকম্যান খেলার জন্য বক্সে লিখুন google pacman আর নিজেই খেলা শুরু করে দিন।</p><h2>১২) এরিয়া কনভার্ট</h2><p>গুগলে যেকোনো ধরনের পরিমাপ আপনি খুব সহজেই করতে পারবেন। এর জন্য সরাসরি \r\nনির্দিষ্ট বিষয়বস্তু লিখে সার্চ দিতে হবে। যেমন 10 meters to inches \r\nইত্যাদি।</p><h2>১৩) কোম্পানির মালিকের নাম!</h2><p>\r\n</p><p>গুগলে আপনি কোনো নির্দিষ্ট কোম্পানির মালিকের নাম খুব সহজেই জেনে নিতে \r\nপারবেন। এরজন্য founder of ## বা owner of ## লিখুন। ড্যাসের জায়গায় \r\nকোম্পানি নাম লিখতে হবে।</p><h2>১৪) Zerg Rush</h2>\r\n\r\n<p></p><p>গুগল সার্চ বক্সে লিখুন Zer Rush আর নিজেই এই মজাদার গেমটি পরখ করে নিতে পারবেন।</p><h2>১৫) কারেন্সি কনভার্টার</h2><p>\r\n</p><p>মুদ্রা বা কারেন্সি কনভার্টার হিসেবেও আপনি গুগলকে ব্যবহার করতে পারবেন।\r\n এরজন্য বক্সে লিখতে হবে যেটার সাথে কনভার্টর করতে চান সেটা যেমন 100 usd \r\nto bdt ইত্যাদি।</p><h2>১৬) টিপ ক্যালকুলেটর</h2><p>টিপ ক্যালকুলেটর হিসেবেও আপনি গুগল সার্চ পেইজকে ব্যবহার করতে পারবেন। এর জন্য বক্সে লিখুন tip calculator!</p><h2>১৭) বুক ফাইন্ডার</h2>\r\n\r\n<p></p>\r\n\r\n<p></p>\r\n<p>গুগলকে আপনি বুক ফাইন্ডার হিসেবেও ইউজ করতে পারবেন। যেমন books written by ## লেখকের নাম আর ব্যাস!</p><h2>১৮) গুগল ইমেইজ রিভার্স সার্চ</h2><p>\r\n</p><p>এটা হয়তো কেউ কেউ জানেন। আপনি গুগল ইমেইজয়ে গিয়ে কোনো ইমেইজ কে আপলোড করে ইমেইজ ভিক্তিক সার্চ রেজাল্ট পেতে পারবেন।</p><h2>১৯) ওকে গুগল!</h2>\r\n\r\n<p></p><p>\r\n</p><p>আপনি লক্ষ্য করলে দেখে থাকবেন যে গুগলের সার্চ বক্সের ডান পাশে একটি \r\nমাইক্রোফোনের আইকন রয়েছে। এর মাধ্যমে আপনি গুগলে ভয়েস ভিক্তিক সার্চ করতে \r\nপারবেন।</p><h2>২০) ডিফাইন</h2>\r\n\r\n<p></p><p>\r\n</p><p>কোনো নির্দিষ্ট বিষয়ের সংঙ্গাও আপনি গুগল সার্চে পেতে পারেন। এর জন্য \r\nশব্দের আগে Define লিখে শব্দটি লিখুন এবং এন্টার দিন। যেমন Define \r\ncomputer, Define mobile ইত্যাদি।</p><h2>২১) একটি রেজাল্টে দুটি কিওয়ার্ড সার্চ!</h2>\r\n\r\n<p></p><p>\r\n</p><p>আপনি চাইলে একটি সার্চ বক্সে একই সাথে দুটি সার্চ দিতে পারবেন। দুটি \r\nএকসাথে সার্চ দিতে চাইলে একটি পরে and লিখে পরবর্তী শব্দটি লিখুন এবং সার্চ\r\n দিন।</p><h2>২২) ডিসট্যান্স মাপুন!</h2>\r\n\r\n<p></p><p>\r\n</p><p>আপনি চাইলে গুগলে একটি স্থান থেকে অপর স্থানের দুরত্ব মাপতে পারবেন। এর জন্য এভাবে লিখে সার্চ দিন distance from dhaka to khulna.</p><h2>২৩) রেস্টুরেন্ট!</h2>\r\n\r\n<p></p><p>\r\n</p><p>আপনি চাইলে খুব সহজে আপনার আশেপাশের কোনো রেস্টুরেন্ট গুগলের সাহায্যে \r\nখুঁজতে পারবেন। এর জন্য গুগল সার্চ বক্সে লিখুন restaurants near me এবং \r\nএন্টার দিন।</p><h2>২৪) ট্রাভেল টাইম</h2>\r\n\r\n<p></p><p>\r\n</p><p>আপনি চাইলে এক শহর থেকে অন্য শহরের বিমানের ট্রাভেল টাইম গুগলের মাধ্যমে\r\n ক্যালকুলেট করতে পারবেন। এর জন্য এভাবে লিখে সার্চ দিন travel time \r\nbetween dhaka and new work.</p><h2>২৫) আইপি ঠিকানা!</h2>\r\n\r\n<p></p><p>\r\n</p><p>আপনার আইডি এড্রেস ও আপনি চাইলে গুগলের মাধ্যমে খুঁজে নিতে পারবেন। এর জন্য সরাসরি সার্চ বক্সে লিখুন ip address এবং এন্টার দিন।</p><h2>২৬) এন্ড অপারেটর!</h2>\r\n\r\n<p></p><p>\r\n</p><p>আপনি যদি কোনো নির্দিষ্ট ওয়েবসাইট থেকে একই সাথে দুটি সার্চ রেজাল্ট \r\nখুঁজে পেতে চান তাহলে এই টিপসটি অনুসরণ করুন। যেমন apple and \r\niphone6:<a target=\"_blank\" rel=\"nofollow\" href=\"http://www.apple.com\">www.apple.com</a></p><h2>২৭) বিশ্বব্যাপী রেজাল্ট!</h2>\r\n\r\n<p></p><p>\r\n</p><p>আপনি লক্ষ্য করলে দেখবেন যে ব্রাউজে গুগল ডট কম লিখলে এটি আপনার দেশ \r\nভিক্তিক গুগল পেজে রিডাইরেক্ট করে নিয়ে যাবে যেমন google.com.bd বা \r\ngoogle.com.in এবং এই সাইটে সার্চ রেজাল্ট গুলো আপনার দেশ ভিক্তিক হয়ে \r\nথাকবে। গুগলের অরিজিনাল পেজে যেতে চাইলে সরাসরি লিখুন <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.google.com/ncr\">http://www.google.com/ncr</a></p><h2>২৮) র্স্টাটপেইজ!</h2>\r\n\r\n<p></p><p>\r\n</p><p>ওয়েবে সত্যিকার অর্থে private ভাবে কোনো কিছু ব্রাউজ করতে চাইলে গুগলের আরেকটি প্রজেক্ট <a target=\"_blank\" rel=\"nofollow\" href=\"http://www.startpage.com\">http://www.startpage.com</a> য়ে চলে যেতে পারেন। এই সাইট থেকে আপনার লোকেশন, আইডি এড্রেস ইত্যাদি লুকিয়ে রেখে আপনি ব্রাউজ করতে পারবেন।</p><h2>২৯) গুগল সার্চ সেটিংকে কাস্টমাইজ করুন</h2>\r\n\r\n<p></p><p>\r\n</p><p>আপনি আপনার নিজের মতো করে গুগল সার্চ রেজাল্টকে সেটিং করে কাস্টমাইজড \r\nকরে নিতে পারবেন। এর জন্য গুগলের সেটিং অপশনে যান। এখানে গিয়ে আপনি প্রতি \r\nপেজে কতগুলো সার্চ রেজাল্ট দেখাবে সেটা, প্রাইভেট রেজাল্ট দেখাবে কিনা, \r\nস্পিকার ফিচারটি থাকবে কিনা ইত্যাদি বহু কিছুর সেটিংস আপনি খুঁজে পাবেন।</p><h2>৩০) ফাইল টাইপ সার্চ</h2>\r\n\r\n<p></p><p>\r\n</p><p>আপনি যদি কোনো সার্চ রেজাল্টে নির্দিষ্ট ফাইল টাইপ খুঁজে পেতে চান তাহলে\r\n কোলন দিয়ে শব্দের পর ফাইল টাইপের নামটি লিখে সার্চ দিন। যেমন chinese \r\nhistory:pdf, doom3:mkv ইত্যাদি।</p><h2>৩১) পছন্দমতো ডিউরেশন নির্ধারণ</h2>\r\n\r\n<br><p></p>\r\n\r\n<br><p></p><p></p>\r\n\r\n<p></p>', 0, NULL, NULL, NULL, NULL, '2018-02-28 12:58:53', '2018-02-28 12:58:53'),
(2, 'Android এ জিরো থেকে হিরো [পর্ব-০৯] :: কাস্টম রম?', 'নিজের ফোনের জন্য কোথায় পাব? আর কিভাবে দিব? চলুন জেনে নেই', 'Android-এ-জিরো-থেকে-হিরো-পর্ব-০৯-কাস্টম-রম', '<p>\r\n</p><p>সুপ্রিয় ভিউয়ার, <b>আশাকরি সবাই ভালো আছেন। </b></p><h2>কিছু কথাঃ</h2><p>টিউন শুরু করার আগে কিছু কথা বলে নেয়া প্রয়োজনীয় বলে মনে করলাম।<br>\r\n বিভিন্ন কারনে এই সিরিজ 3 মাসের বেশি দিন ধরে বন্ধ ছিলো। ভাবছিলাম আর \r\nরুটের টিউন করব না। কিন্তু এটা নেশার মত হয়ে গেছে, তাই ছাড়তে পারলাম না।<br>\r\n আমিও যেহেতু মানুষ তাই আমিও ব্যস্ত থাকতে পারি, আপনাদের অনেকেরই প্রশ্নের \r\nউত্তর দেবার সময় হয় না। আবার অনেকেই এমন প্রশ্ন করেন যেটা নিয়ে আগেই টিউন \r\nহয়েছে, তাই রিপ্লে দেই না। <b>তো এই কারনে অহেতুক ফেসবুকে অকথ্য ভাষায় গালিগালাজ করে ব্লক করাটা আপনাদের শোভায় না। </b><br> আশা করি পরবর্তীতে এসব কথা আবার না লিখতে হয়।<br> টিউন এর টাইটেল দেখেই হয়ত বুঝেই গেছেন এটা অ্যান্ড্রয়েড নিয়ে চেইন বা সিরিজ টিউন।</p><h2>Android.</h2><p>বর্তমানের\r\n জনপ্রিয় মোবাইল অপারেটিং সিস্টেম। আর ওপেন সোর্স হওয়ায় এর মোড / চেঞ্জ \r\nসবাই করতে পারে। আমার এই সিরিজের মাধ্যমে নতুনদের কে সঠিক ভাবে কাজ করার \r\nপ্রক্রিয়া, ধাপ ও বিভিন্ন ট্রিক সম্পর্কে জানানো হবে। তাই আশা করি সাথেই \r\nথাকবেন।<br> তার আগে একটা ধাপ জেনে নিন যেটা সবার জানা উচিৎ। এই ধাপেধাপে \r\nকাজ করলে ফোন নিয়ে কাস্টোমার কেয়ারে দৌড়াদৌড়ি করতে হবে না (আমার মনে হয়)<br> *<br> *<br> <b>রুট\r\n &gt; Xposed &gt; কাস্টম রিকভারী &gt; স্টক রমের ব্যাকাপ &gt; ফার্মওয়ার \r\nব্যাকাপ (Optional) &gt; নতুন রম পোর্ট &gt; নতুন রম দেওয়া.</b> (ভার্সন ভেদে কাস্টম রিকভারীর সিরিয়াল একটু চেঞ্জ হবে)<br> *<br> *<br>\r\n আমার এই সিরিজে এই ধাপ গুলো বেশ ভালোভাবেই বলা হবে। অনেকে হয়ত এই ধাপ গুলো\r\n নিয়ে বিভিন্ন মত প্রকাশ করবে তাদের উদ্দ্যেশেঃ আমি আরো অনেক জিনিস স্কিপ /\r\n বাদ দিয়ে ছোট করে নিয়েছি।</p><p><b>আজ সিরিজ এর ৯ম পর্ব। ছোট কথায় আজকের \r\nসিরিজ হচ্ছে কাস্টম রমের উপর। আজকে শুধু এর উপর বকে যাব। পরের পার্ট এ আসব \r\nএর কাজ গুলো কিভাবে করব তা নিয়ে। </b></p><p>তো চলুন শুরু করা যাক।</p><h2>প্রথম কথাঃ</h2><p>এখনো\r\n যদি চিন্তা করেন যে কাস্টম রম কি জিনিস? তাহলে এই টিউন পড়া আপনার বৃথা। এই\r\n টিউন তাদেরই জন্য যারা একটু এডভান্স হয়েছেন। যারা আমার সিরিজের 1-8 পর্ব \r\nঅবধি পড়ে কাজ করে সাকসেসফুল হয়েছেন। তো যদি আগের পর্ব গুলো পড়ে না থাকেন তো\r\n প্রোফাইল এ গিয়ে পড়ে নিন। আর যারা পড়ে ফেলেছেন তারা চলুন আগে যাই। কাস্টম \r\nরম জিনিস টাকে চলুন একটু আলাদাভাবে জানি।<br> এটাকে দুই ধরনের ভেবে নেইঃ<br> ★ OS আপডেট দেয়।<br> ★ OS আপডেট দেয় না।<br> এই দুই জিনিস নিয়ে ভাগ করলে রম পোর্ট করাটা সহজ হবে।<br> আগে এদের নিয়ে বিস্তারিত জেনে নেই।</p><h2>OS আপডেট দেয়:</h2><p>ধরুন\r\n আপনি কিটক্যাট এ আছেন। এতে আপনি DU Screen Recorder ব্যবহার করতে পারবেন \r\nনা। কিন্তু যদি আপনি এই ধরনের কোন কাস্টম রম দিয়ে ফোনের OS আপডেট করে ললিপপ\r\n বা মার্শম্যালো কিংবা নুগ্যাট করে নেন তবে কিন্তু অনায়েসে এই app ইউজ করতে\r\n পারবেন। এই ধরনের রমের সমস্যা হচ্ছে কিছু বাগ থাকতে পারে। যেটা ফিক্স করা \r\nনাও যেতে পারে। এই ধরনের রমের নাম হচ্ছেঃ CM, AOSP, Tesla OS, Resurrection\r\n Remix, crDroid, ইত্যাদি, অথবা যেকোন CM based রম। যেটা টিউন এ লেখা থাকে।\r\n এ ধরনের রম পোর্ট করতে একটু বেশি খাটুনিও করতে হয়।</p><h2>OS আপডেট দেয় না:</h2><p>এ\r\n ধরনের রম শুধু আপনার ফোনের ui চেন্জ করে দিবে। কোন ভার্সন আপডেট দিবে না। \r\nমানে আপনি কিটক্যাট এ থাকলে কিটক্যাট এই থাকবেন। এ ধরনের রম সাধারণত বাগলেস\r\n হয়, ফাস্ট, ব্যাটারি সেভিং হয়। এ যেহেতু এটা os আপডেট দেয় না, তাই এর \r\nপোর্ট করা সহজ। Stay OS এর মধ্যে অন্যতম। তাছাড়া বিভিন্ন ফোনের নামের রম \r\nগুলো এই ধরনের রম।</p><h2>কোন ধরনের রম দিয়ে শুরু করবঃ</h2><p>হ্যা, এটা একটা সহজ কনফিউশন। এটা আপনার চাহিদার উপর নির্ভরশীল।<br> তবে যেহেতু আপনারা নতুন তাই যে রম OS আপডেট দেয় না সেই রম দিয়েই শুরু করতে পারেন।</p><h2>পোর্ট কি করতেই হবেঃ</h2><p>এ\r\n ধরনের প্রশ্নও হতে পারে। যদি আপনার ফোন ভাল ব্রান্ডের হয় কিংবা নিজের \r\nফোনের জন্য গুগল সার্চ করে রম পেয়ে যান তবে সেটা আর পোর্ট করতে হবে না। \r\nকিন্তু যদি নিজের ফোনের জন্য রম না পান তবে সেক্ষেত্রে পোর্ট করতেই হবে। \r\nএখানে সার্চ করতেও বিভিন্ন নিয়ম মানতে হবে। সেগুলো জেনে নেই।</p><h2>নিজের ফোনের জন্য কাস্টম রমঃ</h2><p>দুই পদ্ধতিতে খুঁজতে পারেন।<br>\r\n ★ নিজের সেটের নাম দিয়েঃ এ জন্য গুগল এ গিয়ে সার্চ করুন Custom Rom For \r\nLava iris 505 এখানে Lava iris 505 এর জায়গায় নিজের সেটের নাম দিন। আরো \r\nএকটু যদি সার্চ এডভান্স হোন তবে সার্চ বারে Custom Rom এর জায়গাতে রমের নাম\r\n লিখে সার্চ দিন। যেমন CM For Lava iris 505. এভাবে নিজের ফোনের জন্য রম \r\nখুঁজে পেলে সেটা পোর্ট করতে হবে না। আর যদি না পান তো পরের পদ্ধতি ট্রাই \r\nকরুন।<br> ★ চিপসেট মডেল দিয়েঃ এক্ষেত্রে আপনাকে ফোনের চিপসেট মডেল ও ফোনের\r\n অ্যান্ড্রয়েড ভার্সন কাজে লাগিয়ে সার্চ করতে হবে, যেমন আমার ফোনের চিপসেট \r\nmt6572 ও অ্যান্ড্রয়েড ভার্সন 4.4.2। তো আমার সার্চ হবে Custom Rom For \r\nmt6572 4.4 2, অথবা CM for mt6572 4.4.2। এখানে অ্যান্ড্রয়েড ভার্সনের বদলে\r\n দুই অক্ষরের কোড দিতে পারেন। KK(Kitkat), LP(Lolipop), MM(Marshmallow) \r\nইত্যাদি।<br> রম খোঁজার আরো এক পদ্ধতি যা পরবর্তীতে কোন টিউন এ বলব।</p><h2>রম কিভাবে দিবঃ</h2><p>এটা নিয়ে আলাদা টিউন হবে, কারন এটা একটু রিস্কি কাজ। তাই বিস্তারিত লিখে টিউন করতে হবে। ততদিন নিজের ফোনের জন্য রম খুঁজুন।</p><h2>শেষ কথাঃ</h2><p>পরের পর্ব আলোচনা হবে রম পোর্টিং নিয়ে বিস্তারিত। ততদিন পর্যন্ত ভাল থাকুন, সুস্থ্য থাকুন। আর টেকনোলজির সাথেই থাকুন।</p>\r\n\r\n<br><p></p>', 0, NULL, NULL, NULL, NULL, '2018-02-28 13:01:16', '2018-02-28 13:01:16'),
(3, 'Android এ জিরো থেকে হিরো [পর্ব-০১]', 'নতুনদের জন্য কিছু দিকনির্দেশনা-Root থেকে Custom পর্যন্ত', 'Android-এ-জিরো-থেকে-হিরো-পর্ব-০১', '<p>\r\n</p><p>সুপ্রিয় টিউনার, <b>আসসালামু আলাইকুম।</b> আশা করি সবাই ভালো আছেন। টিউন এর টাইটেল দেখেই হয়ত বুঝেই গেছেন এটা এন্ড্রয়েড নিয়ে চেইন বা সিরিজ টিউন।</p><h2>Android.</h2><p>বর্তামানের\r\n জনপ্রিয় মোবাইল অপারেটিং সিস্টেম। আর ওপেন সোর্স হওয়ায় এর মোড / চেঞ্জ \r\nসবাই করতে পারে। আমার এই সিরিজের মাধ্যমে নতুনদের কে সঠিক ভাবে কাজ করার \r\nপ্রক্রিয়া, ধাপ ও বিভিন্ন ট্রিক সম্পর্কে জানানো হবে। তাই আশা করি সাথেই \r\nথাকবেন।</p><p>তার আগে একটা ধাপ জেনে নিন যেটা সবার জানা উচিৎ। এই ধাপেধাপে কাজ করলে ফোন নিয়ে কাস্টোমার কেয়ারে দৌড়াদৌড়ি করতে হবে না (আমার মনে হয়)</p><p><b>রুট\r\n &gt; Xposed &gt; কাস্টম রিকভারী &gt; স্টক রমের ব্যাকাপ &gt; ফার্মওয়ার \r\nব্যাকাপ (Optional) &gt; নতুন রম পোর্ট &gt; নতুন রম দেওয়া.</b></p><p>আমার\r\n এই সিরিজে এই ধাপ গুলো বেশ ভালোভাবেই বলা হবে। অনেকে হয়ত এই ধাপ গুলো নিয়ে\r\n বিভিন্ন মত প্রকাশ করবে তাদের উদ্দ্যেশেঃ আমি আরো অনেক জিনিস স্কিপ / বাদ \r\nদিয়ে ছোট করে নিয়েছি।</p><p>আজ সিরিজ এর প্রথম পর্ব। আর এই পর্ব হচ্ছে কিছু\r\n দিক নির্দেশনা ও কিছু প্রশ্ন নিয়ে। টিউন এর পরেও যদি কোন প্রশ্ন থাকে তো \r\nটিউমেন্ট ও ফেসবুকে যোগাযোগ করতে পারেন<br> তো চলুন শুরু করা যাক।</p><h2>রুট কি, কেন, কিভাবে করবঃ</h2><p>এই\r\n প্রশ্ন শুনলে মাঝে মাঝে তারে ব্লক মারতে ইচ্ছা করে। আরে ভাই ইতিমধ্যে \r\nহাজারো টিউন হয়ে গেছে এই টপিক নিয়ে, ইংরেজিতে নয় বাংলায় \'রুট কি\' লিখে \r\nগুগলে সার্চ দিলে এত্ত বাংলা টিউন আসবে কল্পনাও করতে পারবেন না। আর \r\nপ্রত্যেক টিউনে এত ভালভাবে বোঝানো হয়েছে যে একটা টিউন পরলেই খেল খতম।</p><h2>তাও কেন এই প্রশ্ন করেন?</h2><p>প্রশ্ন করার আগে একটু ভাবেন। আমাদের তো কেউ ফোন কেনার সময় একটা বই দিয়ে বলে নাই যে যা এই বই পড় আর কাস্টম রম দে।<br> আমরাও গুগলসার্চ করেছি, হয়ত সেটা ইংরেজিতে, কিন্তু এখনকার দিনে কত টিউনার সেই কথা গুলো বাংলায় লিখেছে।<br> সেটা কবে দেখবেন?<br>\r\n গুগল তো আর সার্চ করার জন্য আলাদা টাকা চায় না। তো যে জিনিস একবার \r\nআবিষ্কার হয়েছে আমাদের দিয়ে সে জিনিস আবার আবিষ্কার করাতে চান কেন? নিজেই \r\nএকটু কষ্ট করে খুজে দেখুন। সব শেষ তাও রুট করতে পারলাম। ভাই মানুষ মাত্রই \r\nমরণশীল। কেউ ৬০ বছর আবার কেউ ১৬০। কিন্তু মরতেই হবে। সেরকমই রুট হবে। হয়ত \r\nসেটা দেরিতে। রুট করলাম, এখন,</p><h2>আমার ফোনের জন্য কাস্টম রিকভারী দেনঃ</h2><p>বলার\r\n আগে ভাবুন আপনার মডেল আর আমার মডেল এক নয়। তো যদি আপনি গুগলসার্চ করে না \r\nপান তো আমি কি করে দিব। সুখবর এই যে এখন পিসি ছাড়াই নিজের ফোন দিয়েই কাস্টম\r\n রিকভারী বানানো যায়। মজার কথা ট্রিকবিডিতেই সেই টিউন আছে। কিন্তু তাও \r\nপারেন না? এর জন্য একটা টিপস দেই আপনার ফোনের মডেল লিখে ফেসবুক সার্চ করে \r\nগ্রুপে এড হোন। সেখানে শুধু কাস্টম রিকভারী নয় রমও পেতে পারেন। কাস্টম \r\nরিকভারী আর রম আবার গুলিয়ে ফেইলেন না।</p><h2>আর কাস্টম রম নিয়ে একটু বলিঃ</h2><p>আমার\r\n দেয়া ধাপ গুলোতে কাস্টম রম সবার শেষে। যদি আগের ধাপ গুলো সাকসেসফুল হোন \r\nতবেই কাস্টম রম এর দিকে হাত বাড়ান নয়ত কাস্টোমার কেয়ারের দিকে হাত বাড়াতে \r\nহবে। কাস্টম রম নিয়ে সাধারণ কিছু ভুল আছে যেমনঃ</p><p>১. Custom Room / \r\nকাস্টম রুমঃ অনেকেই আমার কাছে এই শব্দ উচ্চারন করেছিলো। একবার Rom আর Room \r\nএর মাঝে তফাৎ তো দেখুন। অন্ধের মত না বলে অর্থ করে দেখুন, তো কি দাড়ায়?? \r\nআরে ভাই হেল্প চাইতে গিয়ে যদি এই সব হাবি জাবি বলেন তো হেল্প এর আশা কি করে\r\n করেন?</p><p>২. কাস্টম রম কিভাবে দিব? এই প্রশ্ন শুনে হতবাক হয়ে যাই, \r\nআসলেই এর ইন্সটান্ট উত্তর এখনো পাই নি। তাই Seen করে রেখে দেওয়া ছাড়া কোন \r\nকরার থাকে না।</p><p>৩. একজন বললো সে নাকি কাস্টম রম দিতে দিয়ে ফোন ব্রিক করছে। তো আমার কাছে ভালো করে রম দেওয়া শিখতে চাইলো।</p><p>আমি বললাম কি রিকভারী দেওয়া আছে আপনার?</p><p>উত্তরে বলল \'\'রিকভারী কি ভাইয়া?\'\'</p><p>কেমনটা লাগে?? সেজন্যই টিউন এর শুরুতে ধাপ গুলো দিলাম ভাল করে মনে রাখুন।</p><p>আর\r\n একটা অনুরোধ এই সব হাবিজাবি প্রশ্ন না করে একটু গুগল সার্চ করুন। আর একটু \r\nক্রিটিকাল প্রশ্ন করুন যাতে আমি না পারলেও আপনাদের মাধ্যমে আমারো শেখা হয়।</p>\r\n\r\n<p></p>', 0, NULL, NULL, NULL, NULL, '2018-02-28 13:03:43', '2018-02-28 13:03:43');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
