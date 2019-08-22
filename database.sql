-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2019 at 10:35 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_pages`
--

CREATE TABLE `active_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `active_pages`
--

INSERT INTO `active_pages` (`id`, `name`, `enabled`) VALUES
(1, 'blog', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `bic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `image`, `url`, `time`) VALUES
(3, '2po4.jpg', 'আসস_নয়_এল_জনফন_থকছ_মটরযকত_কযমর_3', 1558370096),
(2, '2qDo.jpg', 'হয়ওয়র_জনয_গগলর_দরজ_বনধ_2', 1558369988);

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `title`, `description`, `abbr`, `for_id`) VALUES
(1, 'হুয়াওয়ের জন্য গুগলের দরজা বন্ধ', '<p>যুক্তরাষ্ট্রের প্রেসিডেন্ট ডোনাল্ড ট্রাম্প কালোতালিকা ভুক্ত করায় হুয়াওয়ের সাথে ব্যবসা বন্ধের ঘোষণা দিয়েছে গুগল। রিপোর্ট অনুযায়ী, ভবিষ্যতের হুয়াওয়ের মোবাইলগুলোতে আর থাকছে না গুগলের কোনো সার্ভিস, এমনকি থাকছে না প্লেস্টোর আর জিমেইল ও।</p>\r\n\r\n<p><br />\r\nএ বিষয়ে বার্তা সংস্থা রয়টার্স জানিয়েছে, সিদ্ধান্তটির ফলে হুয়াওয়ে অ্যান্ড্রয়েড অপারেটিং সিস্টেম আপডেট হারাচ্ছে । এছাড়াও গুগলের বরাত দিয়ে রয়টার্স জানায়, হুয়াওয়েকে সফটওয়্যার বা হার্ডওয়্যারের ক্ষেত্রে আর কোনো কারিগরি সহায়তা দেবে না গুগল ।&nbsp;<br />\r\n<br />\r\nস্পষ্টতই এই ব্যপারে গুগল এখনো আলোচনা করছে তবে এই নিষেধাজ্ঞাটি হুয়াওয়েকে কেবলমাত্র অ্যান্ড্রয়েড ওপেন সোর্স প্রোজেক্টের(এওএসপি) মধ্যেই সীমাবদ্ধ করে ফেলবে বলে জানা গিয়েছে । তাছাড়াও আরো জানা গিয়েছে ভবিষ্যতের হুয়াওয়ে ডিভাইসগুলোতে আর গুগলের প্লে স্টোর কিংবা গুগলের নিজস্ব অ্যাপ যেমন ক্রোম, জিমেইল ইত্যাদি সাপোর্ট করবে না।<br />\r\n<br />\r\nতাই বলা যাচ্ছে, মোবাইল জায়ান্ট এবং টেলিকম সরঞ্জাম প্রস্তুতকারক প্রতিষ্ঠান হুয়াওয়ে দৃশ্যত এখন অ্যান্ড্রয়েডের এমন সংস্করণের দিকে যাবে যা ওপেন সোর্স লাইসেন্সের মাধ্যমে পাওয়া যাবে । তবে হুয়াওয়ের এখন যে সকল ডিভাইস আছে তাতে গুগলের আগের সকল সুবিধা ভোগ করা যাবে বলে গুগল রোববার সন্ধ্যায় দেওয়া এক বিবৃতিতে জানিয়েছে , যদিও গুগল আরো জানিয়ে দিয়েছে যে এই সকল ডিভাইসে আর কোনো আপডেট আসবে না । যে কোনো ক্ষেত্রেই গুগলের বিভিন্ন সুযোগ সুবিধা হারানো হুয়াওয়ের ব্যবসার জন্য একটি বড় আঘাত । তবে কোম্পানিটি আরো আগেই জানিয়েছিলো যে এদের কাছে এমন একটি অপারেটিং সিস্টেম আছে যা কিনা অ্যান্ড্রয়েড কে প্রতিস্থাপন করতে পারবে । হুয়াওয়ে থেকে জানানো হয়েছিল যে ঐ অপারেটিং সিস্টেমটি তাদের সবচেয়ে খারাপ সময়ের জন্য রাখা হয়েছে আর এখন দেখা যাচ্ছে হয়ত সেই খারাপ সময় চলে এসেছে। তবে তাৎক্ষণিক ভাবে হুয়াওয়ে এই ব্যাপারে কোনো মন্তব্য করে নি।</p>\r\n', 'en', 2),
(2, 'আসুস নিয়ে এলো জেনফোন ৬, থাকছে মোটরযুক্ত ক্যামেরা', '<p>ওয়ানপ্লাস ৭ আর শাওমি এমআই ৯ এর সাথে বাজার দখলের লড়াইয়ে আসুস নিয়ে এলো তাদের নতুন ফ্ল্যাগশিপ ফোন জেনফোন ৬। খুব সুন্দর ডিজাইন এবং ভালো পারফর্মেন্স কে লক্ষ্যে রেখে আসুস বাজারে নিয়ে এলো এই নতুন ফোন। মোবাইল ফোনের বাজার দখলের লড়াইয়ে আসুস এবার আটঘাট বেধেই নেমেছে, নতুন এই জেনফোন৬ এর বাজার মূল্য তাই তারা নির্ধারন করেছে মাত্র ৪৯৯ ডলার বা প্রায় ৪১৫০০ টাকা।</p>\r\n\r\n<p><br />\r\nআসুন জেনে নিই কি কি থাকছে এই নতুন মোবাইলে এবং কেমন হবে এর পারফর্মেন্স -<br />\r\n<br />\r\n<b>নচবিহীন ডিসপ্লে</b><br />\r\nবর্তমান সময়ের অন্যান্য ব্র্যান্ডের মতো বাজারের চাহিদার কথা মাথায় রেখে আসুসও নচবিহীন ডিসপ্লে নিয়ে কাজ করে যাচ্ছে , এবং এই জেনফোন ৬ এ আসুস দিয়েছে সম্পূর্ণ নচহীন ডিসপ্লে। এই ফোনে আরো আছে গরিলা গ্লাস ৬ দ্বারা প্রোটেক্টেড ৬.৪ ইঞ্চির এজ টু এজ এলসিডি ডিসপ্লে, এক্সট্রা টল ১৯.৫:৯ রেশিওর ডিসপ্লেতে রয়েছে ৯২% স্ক্রিন টু বডি রেশিও। যা সমমানের মোবাইল গ্যালাক্সি এস ১০ প্লাস থকে তুলনামূলক ভালো কারন গ্যালাক্সি এস ১০ প্লাসে রয়েছে ১৯:৯ ডিসপ্লে যার স্ক্রিন টু বডি রেশিও হলো ৮৮.৯%।<br />\r\n<br />\r\n<b>৪৮ মেগাপিক্সেল মোটর যুক্ত ক্যামেরা</b><br />\r\nআসুস জেনফোন ৬ এর পিছনে রয়েছে দুটি মটরযুক্ত ক্যামেরা এবং যখন দরকার হয় এই ক্যামেরা দুটি ১৮০ ডিগ্রী কোনে ঘুরে সামনের ক্যামেরা হিসেবেও কাজ করে। আসুস জানিয়েছে এই মটর যুক্ত ক্যামেরা টি প্রায় ১০০০০০ বার ঘুরতে এবং ঘুরে আবার পুনরায় আগের যায়গায় আসতে সক্ষম যা ৫ বছর প্রতিদিন ২৮ বার করে ব্যবহার করা যাবে। এছাড়াও এতে বিভিন্ন ধরনের সেন্সর রয়েছে যা এই ঘুর্ননকে নিয়ন্ত্রন করতে ব্যবহার করা হয়েছে। এছাড়াও এমন সেন্সর ও ব্যবহার করা হয়েছে যে, যদি কখনো দুর্ঘটনাবসত ফোনটি পড়েও যায় তাহলে ঐ সেন্সর ক্যামেরাগুলোকে নিজ থেকে বন্ধ করে দিবে যেন কোন ক্ষতি না হয়। আসুস জেনফোন ৬ এ রয়েছে একটি ৪৮ মেগাপিক্সেল ক্যামেরা আর একটি ১৩ ম্যাগাপিক্সেল ক্যামেরা সাথে রয়েছে আল্ট্রা ওয়াইড কোন বিশিষ্ট লেন্স। জেনফোন ৬ দ্বারা যখন ছবি তোলা হবে তখন এটা ৪টা পিক্সেলকে একটা পিক্সেলে রুপান্তর করবে এবং ১২ মেগাপিক্সেলের ছবি তৈরি করবে । যদিও ৪৮ মেগাপিক্সেল ছবিও তোলা যাবে নতুন এই ফোনটি দ্বারা তবে তখন এটা ক্যামেরার এইচডিআরপ্লাস ফিচারটিকে বন্ধ করে দিবে। এছাড়াও এই মোবাইলের ক্যামেরা দ্বারা ৪কে রেজুলিউশানের ভিডিও তৈরি করা যাবে যা হবে ৬০ ফ্রেম প্রতিসেকেন্ড এবং ইলেক্ট্রনিক ইমেজ স্টেবলাইজেশান (ইআইএস) ক্ষমতা সম্পন্ন। এছাড়াও সম্পূর্ণ হাই ডেফিনিশান স্লো মোশান ভিডিওর ক্ষেত্রে ২৪০ ফ্রেম প্রতিসেকেন্ড ও ১২০ ফ্রেম প্রতিসেকন্ড সুবিধাও আছে মোবাইলটিতে আর শুধু হাই ডেফিনিশান স্লো মোড এর ক্ষেত্রে ফ্রেম ক্ষমতা হলো ৪৮০ ফ্রেম প্রতিসেকেন্ড। আর লো লাইট বা স্বল্প আলোর ছবির ক্ষেত্রে ফোনটিতে দেয়া হয়েছে সুপার নাইট মোড।</p>\r\n', 'en', 3);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `confirm_links`
--

CREATE TABLE `confirm_links` (
  `id` int(11) NOT NULL,
  `link` char(32) NOT NULL,
  `for_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `confirm_links`
--

INSERT INTO `confirm_links` (`id`, `link`, `for_order`) VALUES
(1, 'ca36492927f9520d53bcd2b3aa603da9', 1234),
(2, '9041e86b8a5b4b1536ebc4f00e440383', 1235),
(3, '96b927b530a7287d54683ca886794d09', 1236),
(4, '5a12111a0c35d879fcece53e4368877b', 1237),
(5, 'f53d44e6a75ba1cb0fe31dbf9e2b0ce0', 1238);

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law`
--

CREATE TABLE `cookie_law` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cookie_law`
--

INSERT INTO `cookie_law` (`id`, `link`, `theme`, `visibility`) VALUES
(1, '', 'light-floating', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law_translations`
--

CREATE TABLE `cookie_law_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `learn_more` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cookie_law_translations`
--

INSERT INTO `cookie_law_translations` (`id`, `message`, `button_text`, `learn_more`, `abbr`, `for_id`) VALUES
(2, '', '', '', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `valid_from_date` int(10) UNSIGNED NOT NULL,
  `valid_to_date` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-enabled, 0-disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discount_codes`
--

INSERT INTO `discount_codes` (`id`, `type`, `code`, `amount`, `valid_from_date`, `valid_to_date`, `status`) VALUES
(12, 'a', '1234', '10', 24, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currencyKey` varchar(5) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `abbr`, `name`, `currency`, `currencyKey`, `flag`) VALUES
(2, 'en', 'english', 'Tk', 'USD', 'en.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'point to public_users ID',
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'viewed status is change when change processed status',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `products`, `date`, `referrer`, `clean_referrer`, `payment_type`, `paypal_status`, `processed`, `viewed`, `confirmed`, `discount_code`) VALUES
(1, 1234, 0, 'a:4:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"5\";s:6:\"folder\";s:10:\"1556906490\";s:5:\"image\";s:23:\"81gS9Sx0g7L__SX569_.jpg\";s:4:\"time\";s:10:\"1556906649\";s:11:\"time_update\";s:10:\"1557479277\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"26\";s:8:\"quantity\";s:2:\"15\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:53:\"Apple_iPhone_Plus_GSM_Unlocked_GB_Rose_Gold_Renewed_5\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:5:\"25500\";}s:16:\"product_quantity\";s:1:\"1\";}i:1;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"37\";s:6:\"folder\";s:10:\"1557428502\";s:5:\"image\";s:13:\"download3.jpg\";s:4:\"time\";s:10:\"1557428595\";s:11:\"time_update\";s:10:\"1557481645\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"40\";s:8:\"quantity\";s:2:\"15\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:50:\"Dell_Inspiron_Laptop_Core_i_th_Gen_GB_GBWindows_37\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:5:\"55000\";}s:16:\"product_quantity\";s:1:\"1\";}i:2;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"38\";s:6:\"folder\";s:10:\"1557428633\";s:5:\"image\";s:16:\"download_(1).jpg\";s:4:\"time\";s:10:\"1557428714\";s:11:\"time_update\";s:10:\"1557481707\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"40\";s:8:\"quantity\";s:2:\"15\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:31:\"Dell_Inspiron_inch_Laptop_PC_38\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:5:\"45000\";}s:16:\"product_quantity\";s:1:\"6\";}i:3;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"46\";s:6:\"folder\";s:10:\"1557431360\";s:5:\"image\";s:23:\"91-rFskHZWL__UY500_.jpg\";s:4:\"time\";s:10:\"1557431419\";s:11:\"time_update\";s:10:\"1557482003\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"44\";s:8:\"quantity\";s:1:\"2\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:76:\"Invicta_Mens_Specialty_Chronograph_k_Gold_IonPlated_Stainless_Steel_Watch_46\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:4:\"3700\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1557486093, 'Direct', 'Direct', 'cashOnDelivery', NULL, 1, 1, 0, ''),
(2, 1235, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"28\";s:6:\"folder\";s:10:\"1557426429\";s:5:\"image\";s:11:\"images1.jpg\";s:4:\"time\";s:10:\"1557426627\";s:11:\"time_update\";s:10:\"1557481385\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"43\";s:8:\"quantity\";s:2:\"10\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:52:\"Lenovo_Laptop_IPIAP_XRBDIN_Intel_Pentium_QuadCore_28\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:5:\"30990\";}s:16:\"product_quantity\";s:1:\"4\";}}', 1557503370, 'Direct', 'Direct', 'cashOnDelivery', NULL, 1, 1, 0, ''),
(3, 1236, 0, 'a:5:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"7\";s:6:\"folder\";s:10:\"1556907233\";s:5:\"image\";s:15:\"41wE4XNt6dL.jpg\";s:4:\"time\";s:10:\"1556907359\";s:11:\"time_update\";s:10:\"1558434482\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"24\";s:8:\"quantity\";s:1:\"2\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:72:\"Samsung_Galaxy_S_SMGV_GB_Sapphire_Black_Smartphone_for_Verizon_Renewed_7\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:5:\"15200\";}s:16:\"product_quantity\";s:1:\"4\";}i:1;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"12\";s:6:\"folder\";s:10:\"1556909959\";s:5:\"image\";s:25:\"lg-22mk600m-1-500x500.jpg\";s:4:\"time\";s:10:\"1556910291\";s:11:\"time_update\";s:10:\"1558434448\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"13\";s:8:\"quantity\";s:2:\"15\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"1\";s:3:\"url\";s:38:\"LG_MKM_inch_IPS_Full_HD_LED_Monitor_12\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"5\";s:5:\"price\";s:5:\"20000\";}s:16:\"product_quantity\";s:1:\"1\";}i:2;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"36\";s:6:\"folder\";s:10:\"1557428259\";s:5:\"image\";s:14:\"6295913_sd.jpg\";s:4:\"time\";s:10:\"1557428474\";s:11:\"time_update\";s:10:\"1557481613\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"40\";s:8:\"quantity\";s:1:\"1\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:97:\"Dell_Inspiron_in_TouchScreen_Laptop_Intel_Core_i_GB_Memory_GB_Solid_State_Drive_Silver_ISLVPUS_36\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:5:\"45000\";}s:16:\"product_quantity\";s:1:\"1\";}i:3;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"38\";s:6:\"folder\";s:10:\"1557428633\";s:5:\"image\";s:16:\"download_(1).jpg\";s:4:\"time\";s:10:\"1557428714\";s:11:\"time_update\";s:10:\"1557481707\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"40\";s:8:\"quantity\";s:1:\"9\";s:11:\"procurement\";s:1:\"6\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:31:\"Dell_Inspiron_inch_Laptop_PC_38\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:5:\"45000\";}s:16:\"product_quantity\";s:1:\"1\";}i:4;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"46\";s:6:\"folder\";s:10:\"1557431360\";s:5:\"image\";s:23:\"91-rFskHZWL__UY500_.jpg\";s:4:\"time\";s:10:\"1557431419\";s:11:\"time_update\";s:10:\"1557482003\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"44\";s:8:\"quantity\";s:1:\"1\";s:11:\"procurement\";s:1:\"1\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:76:\"Invicta_Mens_Specialty_Chronograph_k_Gold_IonPlated_Stainless_Steel_Watch_46\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:4:\"3700\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1561100265, 'Direct', 'Direct', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(4, 1237, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"18\";s:6:\"folder\";s:10:\"1556945453\";s:5:\"image\";s:24:\"81gS9Sx0g7L__SX569_1.jpg\";s:4:\"time\";s:10:\"1556945551\";s:11:\"time_update\";s:10:\"1558434571\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"13\";s:8:\"quantity\";s:1:\"2\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:49:\"Apple_iPhone_GSM_Unlocked_GB_White_Refurbished_18\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:5:\"90990\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1561800160, 'http://localhost/ministore/home/20', 'localhost', 'cashOnDelivery', NULL, 0, 0, 0, ''),
(5, 1238, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:2:\"41\";s:6:\"folder\";s:10:\"1557429146\";s:5:\"image\";s:23:\"71QHGTKiwAL__UX342_.jpg\";s:4:\"time\";s:10:\"1557429233\";s:11:\"time_update\";s:10:\"1557481826\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:2:\"44\";s:8:\"quantity\";s:1:\"2\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:41:\"Espoir_Analog_Blue_Dial_Mens_Watch_ESP_41\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:4:\"2500\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1561805700, 'http://localhost/ministore/home/20', 'localhost', 'cashOnDelivery', NULL, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_clients`
--

CREATE TABLE `orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_clients`
--

INSERT INTO `orders_clients` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `post_code`, `notes`, `for_id`) VALUES
(1, 'solaiman', 'null', 'promi@gmail.com', '01840885998', 'mirpur11', 'dhaka', '1201', 'ss', 1),
(2, 'Limon', 'nul', 'limon@gmail.com', '01942510563', 'mirpur', 'dhaka', '1201', '', 2),
(3, 'sjdfsg', 'jdhasgdjhgjh', 'arefinjule@gmail.com', '01840885998', 'ASJKDJKAS', 'dhaka', 'ASDAS', 'ASDASD', 3),
(4, 'solaiman', 'jdhasgdjhgjh', 'arefinjule@gmail.com', '098', 'mnmnkjjyuyff', '09876543', 'kjuk', '', 4),
(5, 'solaiman', 'jdhasgdjhgjh', 'promi@gmail.com', '01840885998', 'dsfsdfs', 'sdfsdf', '1223', 'adasda', 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder` int(10) UNSIGNED DEFAULT NULL COMMENT 'folder with images',
  `image` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL COMMENT 'time created',
  `time_update` int(10) UNSIGNED NOT NULL COMMENT 'time updated',
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `shop_categorie` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `procurement` int(10) UNSIGNED NOT NULL,
  `in_slider` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `virtual_products` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` int(5) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `folder`, `image`, `time`, `time_update`, `visibility`, `shop_categorie`, `quantity`, `procurement`, `in_slider`, `url`, `virtual_products`, `brand_id`, `position`, `vendor_id`) VALUES
(2, 1556897991, '85484cdbea216c128aeafc5c9027f690-1000x1000.jpg', 1556898065, 1557482247, 1, 2, 12, 0, 1, 'Infinix_Hot_Pro_X_Smartphone_GB_RAM_GB_ROM_MP_MP_Camera_Black_2', NULL, NULL, 1, 0),
(3, 1556900025, 'xiaomi-mi-9-2.jpg', 1556900102, 1558434383, 1, 19, 10, 0, 1, 'xiaomi_mi_price_3', NULL, NULL, 3, 0),
(5, 1556906490, '81gS9Sx0g7L__SX569_.jpg', 1556906649, 1558434407, 1, 26, 14, 1, 0, 'Apple_iPhone_Plus_GSM_Unlocked_GB_Rose_Gold_Renewed_5', NULL, NULL, 0, 0),
(6, 1556906884, 'download.jpg', 1556907157, 1558434215, 1, 24, 10, 0, 0, 'Samsung_Galaxy_J_6', NULL, NULL, 0, 0),
(7, 1556907233, '41wE4XNt6dL.jpg', 1556907359, 1558434482, 1, 24, 2, 0, 0, 'Samsung_Galaxy_S_SMGV_GB_Sapphire_Black_Smartphone_for_Verizon_Renewed_7', NULL, NULL, 0, 0),
(9, 1556907574, '61Y7XldV1jL__SL1500_.jpg', 1556907638, 1558434122, 1, 27, 1, 0, 0, 'Samsung_Galaxy_S_Unlocked_gb_Midnight_Black_US_Warranty_Renewed_9', NULL, NULL, 0, 0),
(11, 1556909017, '911NRkSMp3L__SL1500_.jpg', 1556909304, 1558434141, 1, 2, 1, 0, 0, 'Samsung_inches_HD_Ready_LED_TV_11', NULL, NULL, 0, 0),
(12, 1556909959, 'lg-22mk600m-1-500x500.jpg', 1556910291, 1558434448, 1, 13, 15, 0, 1, 'LG_MKM_inch_IPS_Full_HD_LED_Monitor_12', NULL, NULL, 5, 0),
(13, 1556910368, 'medium01.jpg', 1556910539, 1557480951, 1, 13, 12, 0, 0, 'LG_MKHB_Full_HD_IPS_LED_Monitor_with_AMD_FreeSync_13', NULL, NULL, 0, 0),
(14, 1556910654, 'images.jpg', 1556910838, 1558434161, 1, 13, 2, 0, 0, 'LG_LED_monitor_14', NULL, NULL, 0, 0),
(15, 1556910886, '01-1.jpg', 1556911124, 1558434424, 1, 13, 2, 0, 1, 'LG_MKHB_inch_AMD_Free_15', NULL, NULL, 4, 0),
(16, 1556945057, '7136LLubqGL__SL1500_.jpg', 1556945197, 1558434510, 1, 13, 0, 0, 0, 'Samsung_SCHI_Galaxy_S_GB_Android_Smartphone_Verizon_Black_Renewed_16', NULL, NULL, 0, 0),
(17, 1556945230, '41wE4XNt6dL_(1).jpg', 1556945330, 1558434545, 1, 13, 15, 0, 0, 'Samsung_Galaxy_S_SMGV_GB_Sapphire_Black_Smartphone_for_Verizon_Renewed_17', NULL, NULL, 0, 0),
(18, 1556945453, '81gS9Sx0g7L__SX569_1.jpg', 1556945551, 1558434571, 1, 13, 2, 0, 0, 'Apple_iPhone_GSM_Unlocked_GB_White_Refurbished_18', NULL, NULL, 0, 0),
(19, 1556946329, '911NRkSMp3L__SL1500_1.jpg', 1556946415, 1558434195, 1, 13, 2, 0, 0, 'Samsung_inches_HD_Ready_LED_19', NULL, NULL, 0, 0),
(20, 1556946563, 'samsung-led-tv-500x500.jpg', 1556946621, 1558434670, 1, 13, 2, 0, 0, 'Grey_Samsung_LED_TV_Screen_Size_20', NULL, NULL, 0, 0),
(21, 1556946716, 'l_10178417_006.jpg', 1556946799, 1558434337, 1, 13, 10, 0, 0, 'Buy_SAMSUNG_UENU_Smart_21', NULL, NULL, 0, 0),
(22, 1556946832, 'images_(1).jpg', 1556946952, 1558434605, 1, 13, 2, 0, 0, 'Samsung_cm_inch_HD_Ready_LED_TV_Edition_at_Best_Prices_Flipkart_22', NULL, NULL, 0, 0),
(23, 1556947019, '61-LLdRCJ9L__SX569_.jpg', 1556947090, 1558434629, 1, 13, 1, 0, 0, 'Samsung_Chromebook_WiFi_Inch_Silver_Renewed_23', NULL, NULL, 0, 0),
(24, 1556947356, '61XDaod47LL__SL1000_.jpg', 1556947414, 1558434651, 1, 13, 2, 0, 0, 'Samsung_Chromebook_in_GB_RAM_GB_eMMC_Chromebook_XECKUS_Renewed_24', NULL, NULL, 0, 0),
(25, 1557425756, 'tp-x1-carbon-g6-header.jpg', 1557425931, 1558434687, 1, 43, 2, 0, 0, 'Lenovo_ThinkPad_X_Carbon_th_Ge_25', NULL, NULL, 0, 0),
(26, 1557426052, '59c902f8-8aee-4d45-b16f-78043d7f159b_1_a5b975b3ec908741d07e0b1c0da5bb77.jpeg', 1557426131, 1558434707, 1, 43, 1, 0, 0, 'Lenovo_ideapad_Laptop_Windows_Intel_Celeron_N_DualCore_Processor_GB_RAM_TB_Hard_DrivePlatinum_Grey_26', NULL, NULL, 0, 0),
(27, 1557426136, 'download1.jpg', 1557426278, 1558434734, 1, 43, 10, 0, 0, 'Lenovo_ThinkPad_X_Ultraportabl_27', NULL, NULL, 0, 0),
(28, 1557426429, 'images1.jpg', 1557426627, 1558434750, 1, 43, 6, 4, 0, 'Lenovo_Laptop_IPIAP_XRBDIN_Intel_Pentium_QuadCore_28', NULL, NULL, 0, 0),
(29, 1557426703, 'images_(1)1.jpg', 1557426881, 1558434768, 1, 43, 1, 0, 0, 'Lenovos_latest_Android_tablet_is_real_29', NULL, NULL, 0, 0),
(30, 1557426961, 'download2.jpg', 1557427185, 1558434786, 1, 39, 10, 0, 0, 'HP_Pavilion_x_Laptop_t_touch_30', NULL, NULL, 0, 0),
(31, 1557427261, 'download_(2).jpg', 1557427398, 1557481584, 1, 39, 10, 0, 0, 'HP_TouchScreen_Laptop_Intel_Core_i_GB_Memory_GB_Solid_State_Drive_HP_Finish_In_Natural_Silver_DADX_31', NULL, NULL, 0, 0),
(32, 1557427432, 'hp-na-laptop-original-imaf9zypu2mjhzmk.jpeg', 1557427494, 1558434805, 1, 39, 1, 0, 0, 'HP_q_Core_i_th_Gen_32', NULL, NULL, 0, 0),
(33, 1557427598, '81euUbI9aeL__SX425_.jpg', 1557427683, 1557481503, 1, 39, 1, 0, 0, 'HP_Elitebook_p_Laptop_33', NULL, NULL, 0, 0),
(34, 1557427883, '2014-02-25-product-20.jpg', 1557427950, 1557481530, 1, 39, 10, 0, 0, 'HP_Pavilion_34', NULL, NULL, 0, 0),
(35, 1557428026, 'images_(2).jpg', 1557428152, 1557481558, 1, 39, 12, 0, 0, 'HP_Notebook_GTU_Laptop_Core_i_st_Gen_GB_GBDOS_35', NULL, NULL, 0, 0),
(36, 1557428259, '6295913_sd.jpg', 1557428474, 1557481613, 1, 40, 1, 0, 0, 'Dell_Inspiron_in_TouchScreen_Laptop_Intel_Core_i_GB_Memory_GB_Solid_State_Drive_Silver_ISLVPUS_36', NULL, NULL, 0, 0),
(37, 1557428502, 'download3.jpg', 1557428595, 1558369604, 1, 40, 14, 1, 0, 'Dell_Inspiron_Laptop_Core_i_th_Gen_GB_GBWindows_37', NULL, NULL, 0, 0),
(38, 1557428633, 'download_(1).jpg', 1557428714, 1557481707, 1, 40, 9, 6, 0, 'Dell_Inspiron_inch_Laptop_PC_38', NULL, NULL, 0, 0),
(39, 1557428755, '41cyLuEAbhL__SX425_.jpg', 1557428820, 1557481743, 1, 40, 10, 0, 0, 'Dell_Inspiron_Core_i_th_Gen_inch_Laptop_GBTBUbuntu_Linux_GB_GraphicsBlackkg_39', NULL, NULL, 0, 0),
(40, 1557429032, 'item_XL_12150379_18404033.jpg', 1557429091, 1557481785, 1, 40, 15, 0, 0, 'Dell_Inspiron_Laptop_Intel_Core_iU_Inch_FHD_TB_GB_GB_VGA_AMD_Radeon_EngArbKB_Windows_Black_40', NULL, NULL, 0, 0),
(41, 1557429146, '71QHGTKiwAL__UX342_.jpg', 1557429233, 1557481826, 1, 44, 2, 0, 0, 'Espoir_Analog_Blue_Dial_Mens_Watch_ESP_41', NULL, NULL, 0, 0),
(42, 1557429335, 'images2.jpg', 1557429398, 1557481856, 1, 44, 1, 0, 0, 'Samsung_Galaxy_Watch_mm_42', NULL, NULL, 0, 0),
(44, 1557430863, '61dzJhBmDOL__UX466_.jpg', 1557431206, 1557481926, 1, 44, 10, 0, 0, 'Diesel_Mens_Mega_Chief_Quartz_Stainless_Steel_Chronograph_Watch_Color_Black_Model_DZ_44', NULL, NULL, 0, 0),
(45, 1557431270, 'Womens13_Front_1024x1024_5b768ae0-ca9a-481f-97d3-7ac8a890c69b_grande.jpg', 1557431329, 1557481959, 1, 44, 10, 0, 0, 'Vincero_Luxury_Mens_Kairos_Wrist_Watch_Top_Grain_Italian_Leather_Watch_Band_mm_Analog_Watch_Japanese_Quartz_Movement_45', NULL, NULL, 0, 0),
(46, 1557431360, '91-rFskHZWL__UY500_.jpg', 1557431419, 1557482003, 1, 44, 1, 1, 0, 'Invicta_Mens_Specialty_Chronograph_k_Gold_IonPlated_Stainless_Steel_Watch_46', NULL, NULL, 0, 0),
(47, 1557557189, 'th.jpg', 1557557633, 1557558609, 1, 37, 2, 0, 1, 'smart_tvan_Internetconnected_47', NULL, NULL, 2, 0),
(48, 1557559915, 'th_(1).jpg', 1557560186, 1557560509, 1, 46, 1, 0, 0, 'GFC_Fan_48', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_translations`
--

CREATE TABLE `products_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `basic_description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `old_price` varchar(20) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_translations`
--

INSERT INTO `products_translations` (`id`, `title`, `description`, `basic_description`, `price`, `old_price`, `abbr`, `for_id`) VALUES
(5, 'Infinix Hot 6 Pro X608 - Smartphone - 6\' - 3GB RAM - 32GB ROM - 13MP +2MP Camera - Black', '<h2>Product details of Infinix Hot 6 Pro X608 - Smartphone - 6\" - 3GB RAM - 32GB ROM - 13MP +2MP Camera - Black</h2>\r\n\r\n<ul>\r\n	<li>NO RETURN applicable if the seal is broken</li>\r\n	<li>Quad-Core 1.4GHz processor, 64bit</li>\r\n	<li>6.0\" inch 18:9 Display</li>\r\n	<li>3GB + 32GB</li>\r\n	<li>[Micro SD upto 128GB]</li>\r\n	<li>13 + 2MP Dual Rear Camera with auto-focus &amp; Led Flash</li>\r\n	<li>5MP Front Camera</li>\r\n	<li>OS: Android 8.0 Oreo</li>\r\n	<li>4000mAh Battery</li>\r\n	<li>Network:4GLTE/3G/2G</li>\r\n	<li>Fingerprint Sensor</li>\r\n	<li>Connectivity: Wi-Fi, GPS, Bluetooth</li>\r\n	<li data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.307425182DIK8F\">Face Unlock/ID</li>\r\n</ul>\r\n', '<p>Infinix Hot 6 Pro X608 - Smartphone - 6\" - 3GB RAM - 32GB ROM - 13MP +2MP Camera - Black</p>\r\n', '13,990', '13990', 'en', 2),
(8, 'xiaomi mi9 price', '<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"15\" scope=\"row\">NETWORK</th>\r\n			<td><a href=\"https://www.gsmarena.com/network-bands.php3\">Technology</a></td>\r\n			<td><a data-spec=\"nettech\" href=\"https://www.gsmarena.com/xiaomi_mi_9-9507.php#\">GSM / CDMA / HSPA / LTE</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"2\" scope=\"row\">LAUNCH</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Announced</a></td>\r\n			<td data-spec=\"year\">2019, February</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Status</a></td>\r\n			<td data-spec=\"status\">Available. Released 2019, March</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"6\" scope=\"row\">BODY</th>\r\n			<td><a href=\"https://www.gsmarena.com/xiaomi_mi_9-9507.php#\" onclick=\"helpW(\'h_dimens.htm\');\">Dimensions</a></td>\r\n			<td data-spec=\"dimensions\">157.5 x 74.7 x 7.6 mm (6.20 x 2.94 x 0.30 in)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/xiaomi_mi_9-9507.php#\" onclick=\"helpW(\'h_weight.htm\');\">Weight</a></td>\r\n			<td data-spec=\"weight\">173 g (6.10 oz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Build</a></td>\r\n			<td data-spec=\"build\">Back glass (Gorilla Glass 5), aluminum frame (7000 series)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM</a></td>\r\n			<td data-spec=\"sim\">Dual SIM (Nano-SIM, dual stand-by)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"5\" scope=\"row\">DISPLAY</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n			<td data-spec=\"displaytype\">Super AMOLED capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/xiaomi_mi_9-9507.php#\" onclick=\"helpW(\'h_dsize.htm\');\">Size</a></td>\r\n			<td data-spec=\"displaysize\">6.39 inches, 100.2 cm<sup>2</sup>&nbsp;(~85.2% screen-to-body ratio)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n			<td data-spec=\"displayresolution\">1080 x 2340 pixels, 19.5:9 ratio (~403 ppi density)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=screen-protection\">Protection</a></td>\r\n			<td data-spec=\"displayprotection\">Corning Gorilla Glass 6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td data-spec=\"displayother\">DCI-P3<br />\r\n			HDR10</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '42,999', '59999', 'en', 3),
(14, 'Apple iPhone 7 Plus, GSM Unlocked, 32GB - Rose Gold (Renewed)', '<p>Apple iPhone 7 Plus smartphone was launched in September 2016. The phone comes with a 5.50-inch touchscreen display with a resolution of 1080x1920 pixels at a pixel density of 401 pixels per inch (ppi).</p>\r\n\r\n<p>Apple iPhone 7 Plus is powered by a quad-core Apple A10 Fusion processor. It comes with 3GB of RAM.</p>\r\n\r\n<p>The Apple iPhone 7 Plus runs iOS 10 and is powered by a 2,900mAh non-removable battery.</p>\r\n\r\n<p>As far as the cameras are concerned, the Apple iPhone 7 Plus on the rear packs 12-megapixel camera. It sports a 7-megapixel camera on the front for selfies.</p>\r\n\r\n<p>Apple iPhone 7 Plus based on iOS 10 and packs 32GB of inbuilt storage. The Apple iPhone 7 Plus is a single SIM (GSM) smartphone that accepts a Nano-SIM card.</p>\r\n\r\n<p>Connectivity options on the Apple iPhone 7 Plus include Wi-Fi 802.11 a/b/g/n/ac, GPS, Bluetooth v4.20, 3G, and 4G (with support for Band 40 used by some LTE networks in India). Sensors on the phone include accelerometer, ambient light sensor, barometer, gyroscope, proximity sensor, and compass/ magnetometer.</p>\r\n\r\n<p>The Apple iPhone 7 Plus measures 158.20 x 77.90 x 7.30mm (height x width x thickness) and weighs 188.00 grams. It was launched in Red, Rose Gold, Gold, Silver, Black, and Jet Black colours.</p>\r\n', '', '25500', '28500', 'en', 5),
(17, 'Samsung Galaxy J7', '<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"15\" scope=\"row\">NETWORK</th>\r\n			<td><a href=\"https://www.gsmarena.com/network-bands.php3\">Technology</a></td>\r\n			<td><a data-spec=\"nettech\" href=\"https://www.gsmarena.com/samsung_galaxy_j7-7185.php#\">GSM / HSPA / LTE</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"2\" scope=\"row\">LAUNCH</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Announced</a></td>\r\n			<td data-spec=\"year\">2015, June</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=phone-life-cycle\">Status</a></td>\r\n			<td data-spec=\"status\">Available. Released 2015, June</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"6\" scope=\"row\">BODY</th>\r\n			<td><a href=\"https://www.gsmarena.com/samsung_galaxy_j7-7185.php#\" onclick=\"helpW(\'h_dimens.htm\');\">Dimensions</a></td>\r\n			<td data-spec=\"dimensions\">152.2 x 78.7 x 7.5 mm (5.99 x 3.10 x 0.30 in)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/samsung_galaxy_j7-7185.php#\" onclick=\"helpW(\'h_weight.htm\');\">Weight</a></td>\r\n			<td data-spec=\"weight\">171 g (6.03 oz)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=build\">Build</a></td>\r\n			<td data-spec=\"build\">Plastic body</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=sim\">SIM</a></td>\r\n			<td data-spec=\"sim\">Single SIM (Micro-SIM) or Dual SIM (Micro-SIM, dual stand-by)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"5\" scope=\"row\">DISPLAY</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=display-type\">Type</a></td>\r\n			<td data-spec=\"displaytype\">Super AMOLED capacitive touchscreen, 16M colors</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/samsung_galaxy_j7-7185.php#\" onclick=\"helpW(\'h_dsize.htm\');\">Size</a></td>\r\n			<td data-spec=\"displaysize\">5.5 inches, 83.4 cm<sup>2</sup>&nbsp;(~69.6% screen-to-body ratio)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=resolution\">Resolution</a></td>\r\n			<td data-spec=\"displayresolution\">720 x 1280 pixels, 16:9 ratio (~267 ppi density)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"4\" scope=\"row\">PLATFORM</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=os\">OS</a></td>\r\n			<td data-spec=\"os\">Android 5.1 (Lollipop), upgradable to 6.0.1 (Marshmallow)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=chipset\">Chipset</a></td>\r\n			<td data-spec=\"chipset\">Qualcomm MSM8939 Snapdragon 615 (28 nm)<br />\r\n			Exynos 7580 Octa</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=cpu\">CPU</a></td>\r\n			<td data-spec=\"cpu\">Octa-core (4x1.4 GHz Cortex-A53 &amp; 4x1.0 GHz Cortex-A53)<br />\r\n			Octa-core 1.5 GHz Cortex-A53</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=gpu\">GPU</a></td>\r\n			<td data-spec=\"gpu\">Adreno 405<br />\r\n			Mali-T720MP2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"5\" scope=\"row\">MEMORY</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=memory-card-slot\">Card slot</a></td>\r\n			<td data-spec=\"memoryslot\">microSD, up to 256 GB (dedicated slot)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=dynamic-memory\">Internal</a></td>\r\n			<td data-spec=\"internalmemory\">16 GB, 1.5 GB RAM</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"4\" scope=\"row\">MAIN CAMERA</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Single</a></td>\r\n			<td data-spec=\"cam1modules\">13 MP, f/1.9, 28mm (wide), AF</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Features</a></td>\r\n			<td data-spec=\"cam1features\">LED flash, panorama</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=camera\">Video</a></td>\r\n			<td data-spec=\"cam1video\">1080p@30fps</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"4\" scope=\"row\">SELFIE CAMERA</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Single</a></td>\r\n			<td data-spec=\"cam2modules\">5 MP, f/2.2, 23mm (wide)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Features</a></td>\r\n			<td data-spec=\"cam2features\">LED flash</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=secondary-camera\">Video</a></td>\r\n			<td data-spec=\"cam2video\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"3\" scope=\"row\">SOUND</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=loudspeaker\">Loudspeaker</a></td>\r\n			<td>Yes</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=audio-jack\">3.5mm jack</a></td>\r\n			<td>Yes</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"9\" scope=\"row\">COMMS</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=wi-fi\">WLAN</a></td>\r\n			<td data-spec=\"wlan\">Wi-Fi 802.11 b/g/n, Wi-Fi Direct, hotspot</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=bluetooth\">Bluetooth</a></td>\r\n			<td data-spec=\"bluetooth\">4.1, A2DP</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=gps\">GPS</a></td>\r\n			<td data-spec=\"gps\">Yes, with A-GPS, GLONASS</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=nfc\">NFC</a></td>\r\n			<td data-spec=\"nfc\">Yes (Snapdragon model only)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=fm-radio\">Radio</a></td>\r\n			<td data-spec=\"radio\">FM radio, RDS, recording</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=usb\">USB</a></td>\r\n			<td data-spec=\"usb\">microUSB 2.0</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"9\" scope=\"row\">FEATURES</th>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=sensors\">Sensors</a></td>\r\n			<td data-spec=\"sensors\">Accelerometer, proximity</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td data-spec=\"featuresother\">ANT+</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<th rowspan=\"7\" scope=\"row\">BATTERY</th>\r\n			<td>&nbsp;</td>\r\n			<td data-spec=\"batdescription1\">Removable Li-Ion 3000 mAh battery</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=talk-time\">Talk time</a></td>\r\n			<td data-spec=\"battalktime1\">Up to 18 h (3G)</td>\r\n		</tr>\r\n		<tr>\r\n			<td><a href=\"https://www.gsmarena.com/glossary.php3?term=music-playback-time\">Music play</a></td>\r\n			<td data-spec=\"batmusicplayback1\">Up to 76 h</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '20900', '22900', 'en', 6),
(20, 'Samsung Galaxy S6 SM-G920V 32GB Sapphire Black Smartphone for Verizon (Renewed)', '<ul>\r\n	<li>5.1-inch touchscreen display with a resolution of 1440 pixels by 2560 pixels at a PPI of 577 pixels per inch.</li>\r\n	<li>1.5GHz octa-core Samsung Exynos 7420 processor</li>\r\n	<li>16-megapixel primary camera on the rear and a 5.0-megapixel front shooter for selfies.</li>\r\n	<li>32GB of internal storage cannot be expanded.</li>\r\n	<li>\"A Certified Refurbished product has been tested and certified to work and look like new, with minimal to no signs of wear, by a manufacturer or specialized third-party seller approved by Amazon. All products are backed by a minimum 90-day warranty.\"</li>\r\n</ul>\r\n', '', '15200', '17200', 'en', 7),
(26, 'Samsung Galaxy S9+ Unlocked - 64gb - Midnight Black - US Warranty (Renewed)', '<ul>\r\n	<li>Super Speed Dual Pixel Camera with Rear Dual Camera</li>\r\n	<li>Infinity Display: edge-to-edge immersive screen, enhancing your entertainment experience**</li>\r\n	<li>IP68 rating: withstands splashes, spills, and rain so it can take a dip, worry-free***</li>\r\n	<li>Internal Memory 64 GB. Expandable Storage up to 400GB****</li>\r\n</ul>\r\n', '', '30990', '34990', 'en', 9),
(32, 'Samsung 32 inches HD Ready LED TV ', '<p>Samsung 32 inches HD Ready LED TV Price: Buy Samsung 80 cm (32 inches) FH4003 HD Ready LED TV (Black) Online at Best&nbsp;</p>\r\n', '', '17999', '19999', 'en', 11),
(35, 'LG 22MK600M 21.5 inch IPS Full HD LED Monitor', '<ul data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.10dc1b02gO0MMC\">\r\n	<li data-spm-anchor-id=\"a2a0e.pdp.product_detail.i2.10dc1b02gO0MMC\">Specification:Display FeaturesScreen Size21.5\"Display TypeIPSResolution1920 X 1080</li>\r\n	<li>Brightness250cd/m2(Typ.) 200cd/m2(Min.)</li>\r\n	<li>Response Time5ms(Faster)</li>\r\n	<li>Viewing Angle178/178</li>\r\n	<li>Contrast Ratio1000:1(Typ.)</li>\r\n	<li>Aspect Ratio16:9</li>\r\n	<li>Color Support16.7M colors</li>\r\n	<li>ConnectivityHDMI2Audio Jack1Audio/Video FeaturesFreeSync supportedHDMIPowerTypeAdapterPower Consumption100-240Vac, 50/60Hz</li>\r\n	<li>Physical SpecificationDimension488.7x182x386.7Weight2.7 kgTilt-2~15</li>\r\n</ul>\r\n', '', '20,000', '23000', 'en', 12),
(38, 'LG 22MK430H-B 22\' Full HD IPS LED Monitor with AMD FreeSync', '<ul>\r\n	<li>Specification:Display FeaturesScreen Size22\"Display TypeIPSResolution1920 x 1080Brightness250(Typ), 200(min) cd/m2Response Time5ms (Faster)Viewing Angle178 / 178Contrast Ratio1000:1 (Typ.)Aspect Ratio16:9Color Support16.7M ColorsConnectivityHDMIYes x 1Audio JackYesAudio/Video FeaturesColor Temperature SelectionYesFreeSync supportedYesPowerType100~240V, 50/60HzOthersOutput 19V/1.3A</li>\r\n	<li>Power Save/Sleep Mode (Max) Under 0.3WPhysical SpecificationDimension20.1\" x 15.6\" x 7.2\"Weight6.2 lbs</li>\r\n	<li data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.39b933d0Z4RVvs\">Tilt-5~20 DegreeWarranty InformationManufacturing Warranty03 years</li>\r\n</ul>\r\n', '', '17500', '17500', 'en', 13),
(41, 'LG LED 24.5\' monitor', '<section>\r\n<ul>\r\n	<li>PS Display</li>\r\n	<li>Color Calibrated</li>\r\n	<li>3-Side Virtually Borderless Design</li>\r\n	<li>Radeon FreeSync™</li>\r\n	<li>OnScreen Control</li>\r\n	<li>Wall Mountable</li>\r\n</ul>\r\n</section>\r\n\r\n<section>&nbsp;</section>\r\n\r\n<ul itemscope=\"\" itemtype=\"http://schema.org/SiteNavigationElement\">\r\n</ul>\r\n', '', '25500', '29500', 'en', 14),
(44, 'LG 22MK430H-B 22 inch (AMD Free', '<ul>\r\n	<li>22\" FHD (1920x1080) IPS Display</li>\r\n	<li>AMD FreeSync™ Technology</li>\r\n	<li>Dynamic Action Sync</li>\r\n	<li>Black Stabilizer</li>\r\n	<li>On Screen Control</li>\r\n	<li>Smart Energy Saving</li>\r\n</ul>\r\n', '', '30,990', '33990', 'en', 15),
(47, 'Samsung SCH-I545 - Galaxy S4 16GB Android Smartphone - Verizon - Black (Renewed)', '<ul>\r\n	<li>Android 4.2.2 Jelly Bean OS: Faster load times and other performance enhancements helps you manage your day-to-day activities</li>\r\n	<li>13.0MP Rear-Facing Camera with Full HD 1080p Recording: Dual-shot feature enables simultaneously shooting with the front and rear cameras to put you in the picture - plus, you can record 3 seconds of sound with every photo you take</li>\r\n	<li>16GB Internal Memory Plus MicroSD Slot: Provides plenty of storage space for your contacts, music, apps and more - expand storage by adding a microSD card (up to 64GB)</li>\r\n</ul>\r\n', '', '10500', '13500', 'en', 16),
(50, 'Samsung Galaxy S6 SM-G920V 32GB Sapphire Black Smartphone for Verizon (Renewed)', '<ul>\r\n	<li>5.1-inch touchscreen display with a resolution of 1440 pixels by 2560 pixels at a PPI of 577 pixels per inch.</li>\r\n	<li>1.5GHz octa-core Samsung Exynos 7420 processor</li>\r\n	<li>16-megapixel primary camera on the rear and a 5.0-megapixel front shooter for selfies.</li>\r\n	<li>32GB of internal storage cannot be expanded.</li>\r\n	<li>\"A Certified Refurbished product has been tested and certified to work and look like new, with minimal to no signs of wear, by a manufacturer or specialized third-party seller approved by Amazon. All products are backed by a minimum 90-day warranty.\"</li>\r\n</ul>\r\n', '', '13990', '14990', 'en', 17),
(53, 'Apple iPhone 5, GSM Unlocked, 16GB - White (Refurbished)', '<ul>\r\n	<li>GSM Unlocked Phones are ONLY compatible with GSM carriers like AT&amp;T and T-Mobile as well as other GSM networks around the world. They WILL NOT WORK with CDMA carriers like Sprint and Verizon (Search for \"Fully Unlocked iPhones\" for CDMA compatible iPhones).</li>\r\n	<li>Camera: Primary - 8 MP iSight camera, 1080p HD Video / Secondary - 1.2MP FaceTime Camera</li>\r\n	<li>iOS 6, Apple A6 Processor, 16GB Memory</li>\r\n	<li>Unlocked cell phones are compatible with GSM carriers like AT&amp;T and T-Mobile as well as with GSM SIM cards (e.g. H20, Straight Talk, and select prepaid carriers). Unlocked cell phones will not work with CDMA Carriers like Sprint, Verizon, Boost or Virgin.</li>\r\n</ul>\r\n', '', '90990', '97990', 'en', 18),
(56, 'Samsung 32 inches HD Ready LED', '<p>Samsung 32 inches HD Ready LED TV Price: Buy Samsung 80 cm (32 inches) FH4003 HD Ready LED TV (Black) Online at Best&nbsp;</p>\r\n', '', '13990', '17990', 'en', 19),
(59, 'Grey Samsung LED TV, Screen Size: 34', '<p><b>Samsung LED TV</b>.</p>\r\n\r\n<table border=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Brand</td>\r\n			<td>Samsung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Model</td>\r\n			<td>UA55KU6000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Item Weight</td>\r\n			<td>22 Kg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Product Dimensions</td>\r\n			<td>150 x 82 x 16 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Item model number</td>\r\n			<td>UA55KU6000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Resolution</td>\r\n			<td>3840 x 2160</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display Technology</td>\r\n			<td>LED</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Screen Size</td>\r\n			<td>55 Inches</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Display Resolution Maximum</td>\r\n			<td>3840 UHD</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Power Source</td>\r\n			<td>AC</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Batteries Included</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Batteries Required</td>\r\n			<td>No</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Total Usb Ports</td>\r\n			<td>2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Connector Type</td>\r\n			<td>WiFi</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '', '25500', '28500', 'en', 20),
(62, 'Buy SAMSUNG UE43NU7470 43\' Smart ', '<p>Learn more about the&nbsp;<b>Samsung UE43NU7470 43</b>\"\"&nbsp;<b>Smart</b>&nbsp;4K Ultra HD HDR LED TV. Watching your favourite Netflix show is easy on this&nbsp;<b>Samsung</b>&nbsp;4K LED TV, thanks to its seamless and&nbsp;<b>smart</b>&nbsp;functionality. ... The ultra HD certified display&nbsp;</p>\r\n', '', '13990', '14990', 'en', 21),
(65, 'Samsung 80cm (32 inch) HD Ready LED TV 2018 Edition at Best Prices ... Flipkart', '<ul>\r\n	<li>20 W Speaker Output</li>\r\n	<li>1366 x 768 HD Ready - Great picture quality</li>\r\n	<li>60 Hz : Standard refresh rate for blur-free picture quality</li>\r\n	<li>2 x HDMI : For set top box and consoles</li>\r\n	<li>1 x USB : Get content from USB drives</li>\r\n</ul>\r\n\r\n<p>Easy Payment Options</p>\r\n\r\n<ul>\r\n	<li>No cost EMI starting from ₹1,250/month</li>\r\n	<li>Cash on Delivery</li>\r\n	<li>Net banking &amp; Credit/ Debit/ ATM card</li>\r\n</ul>\r\n', '', '30990', '37990', 'en', 22),
(68, 'Samsung Chromebook (Wi-Fi, 11.6-Inch) - Silver (Renewed)', '<ul>\r\n	<li>Chrome OS, Samsung Exynos 5250 Dual Core Processor</li>\r\n	<li>Display: 11.6\" LED HD 1366 x 768 16:9, Ports: HDMI, Headphone/MIC combo, 1 x USB 3.0 + 1 x USB 2.0, 3- in-1 (SD/SDHC/SDXC)</li>\r\n	<li>Memory: 2 GB DDR3L RAM, 16GB Solid State Drive</li>\r\n	<li>Built-in dual band Wi-Fi 802.11 a/b/g/n, Webcam, 3W Stereo Speaker</li>\r\n</ul>\r\n', '', '40500', '45500', 'en', 23),
(71, 'Samsung Chromebook 3, 11.6in, 4GB RAM, 16GB eMMC, Chromebook (XE500C13-K04US) (Renewed)', '<ul>\r\n	<li>Intel Celeron N3060 processor with 4GB memory, 16GB SSD</li>\r\n	<li>Simple and secure Google Chrome OS</li>\r\n	<li>11.6 HD Anti-Reflective Display with image enhancer</li>\r\n	<li>Work or play for up to 11 hours on a single charge</li>\r\n</ul>\r\n', '', '30990', '33990', 'en', 24),
(74, 'Lenovo ThinkPad X1 Carbon 6th Ge', '<p><b>Lenovo\'s</b>&nbsp;flagship 14-inch&nbsp;<b>ThinkPad X1 Carbon</b>&nbsp;is now on its&nbsp;<b>6th generation</b>. ... The 14-inch&nbsp;<b>ThinkPad X1 Carbon 6th Gen</b>&nbsp;runs on 8th-<b>generation</b>&nbsp;Intel Core processors with up to 16GB of RAM and up to 1TB of SSD storage. It weighs from 1.13kg and runs for up to 15 hours on battery power, according to<b>Lenovo</b>.</p>\r\n', '', '450000', '460000', 'en', 25),
(77, 'Lenovo ideapad 330 15.6″ Laptop, Windows 10, Intel Celeron N4000 Dual-Core Processor, 4GB RAM, 1TB Hard Drive,Platinum Grey', '<ul>\r\n	<li>Stacked with premium processing and advanced graphics options, the IdeaPad 330 is as powerful as it is easy to use</li>\r\n	<li>Windows 10 home software</li>\r\n	<li>Intel Celeron N4000 Dual-Core Processor</li>\r\n	<li>4GB RAM 1TB Hard Drive</li>\r\n	<li>Designed with a special protective finish to guard against wear and tear</li>\r\n	<li>Rubber detailing on the bottom to maximize ventilation and extend component life</li>\r\n	<li>AC Wireless to ensure a reliable connection for all your needs</li>\r\n	<li>More than enough room to build your collection of photos, movies and more</li>\r\n	<li>HD resolution on a 15.6″ display delivers powerful visuals on the go</li>\r\n	<li>The IdeaPad 330 offers a DVD-RW drive, so you’ll be able to watch and listen to the movies and music you already own and love</li>\r\n	<li>Complete with grey shell</li>\r\n	<li>Walmart Protection Plans [sold separately] for laptops covers accidental damage like cracked screens and liquid damage, as well as battery, mechanical and electrical failure from normal use.</li>\r\n</ul>\r\n', '', '500000', '570000', 'en', 26),
(80, 'Lenovo ThinkPad X280 | Ultraportabl', '<p>Dell\'s Latitude 7390 (2.9 pounds, 0.7 inches) is a little lighter and has a larger, 13.3-inch screen. Despite its 14-inch display,&nbsp;<b>Lenovo\'s</b>&nbsp;own&nbsp;<b>ThinkPad</b>&nbsp;X1 Carbon is much lighter and thinner, at 2.49 pounds and 0.6 inches thick.Mar 2, 2018</p>\r\n\r\n<p>CPU:&nbsp;Intel Core i7-8550U</p>\r\n\r\n<p>Hard Drive Size:&nbsp;512GB</p>\r\n\r\n<p>RAM:&nbsp;16GB</p>\r\n', '', '30990', '36990', 'en', 27),
(83, 'Lenovo Laptop IP320-15IAP 80XR01BDIN (Intel Pentium QuadCore ', '<p><b>The Lenovo Ideapad</b>&nbsp;320 (<b>80XR01BDIN</b>) is driven by an&nbsp;<b>Intel Pentium Quad Core</b>&nbsp;N4200 processor that clocks at&nbsp;<b>a</b>&nbsp;speed of 1.6Ghz. ... Moreover, an&nbsp;<b>Intel</b>&nbsp;HD graphics is there to fulfil&nbsp;<b>the</b>&nbsp;graphical needs.</p>\r\n', '', '30990', '36990', 'en', 28),
(86, 'Lenovo\'s latest Android tablet is real', '<p>The tablet market is increasingly skewing&nbsp;but what if you want a replacement for a&nbsp;<em>low-cost</em>&nbsp;laptop? Lenovo thinks it has the answer. It\'s introducing the Yoga A12, a 12.2-inch tablet that\'s really a budget convertible laptop for the Android crowd. Think of it as a lower-priced but larger alternative to the&nbsp;&nbsp;You won\'t find the earlier model\'s pen input or Windows 10 option, but you\'ll still get a very portable design (it\'s 0.21 inches thick at its slimmest point) that can fold into a slate when you\'re watching Netflix, or a laptop when you need to get work done. The trick, as with the Yoga Book, is a flat touch-sensitive keyboard that eliminates some of the usual physical bulk. We found the Book\'s keyboard hard to get used to, but it might be easier on the A12\'s larger, more comfortable surface.</p>\r\n', '', '45000', '46000', 'en', 29),
(89, 'HP Pavilion x360 Laptop - 14t touch', '<ul>\r\n	<li>Windows 10 Home 64</li>\r\n	<li>Intel® Pentium® processor</li>\r\n	<li>Intel® HD Graphics 620</li>\r\n	<li>8 GB memory; 500 GB HDD storage</li>\r\n	<li>14\" diagonal HD touch display</li>\r\n</ul>\r\n', '', '55000', '57000', 'en', 30),
(92, ' HP 15.6\' Touch-Screen Laptop Intel Core i3 8GB Memory 128GB Solid State Drive HP Finish In Natural Silver 15-DA0012DX', '<p>&nbsp;<em>HP Laptops</em>;&nbsp;<em>HP</em>&nbsp;-&nbsp;<em>15.6</em>\"&nbsp;<em>Touch</em>-<wbr /><em>Screen Laptop</em>&nbsp;-&nbsp;<em>Intel Core i3</em>&nbsp;-&nbsp;<em>8GB Memory</em>&nbsp;-&nbsp;<em>128GB Solid State Drive</em>&nbsp;-&nbsp;<em>HP Finish</em>&nbsp;In&nbsp;<em>Natural Silver</em>&nbsp;...&nbsp;<em>15</em>-<em>DA0012DX</em>-&nbsp;Core i3 8GB Memory 128GB Solid State Drive HP Finish In Natural Silver 15-DA0012DX</p>\r\n', '', '45000', '45000', 'en', 31),
(95, ' HP 14q Core i3 7th Gen', '<p>Under the hood of&nbsp;<b>HP 14q</b>-cs0009TU (5DZ92PA) there is an&nbsp;<b>Intel Core i3</b>-7020U (<b>7th Gen</b>) processor, with the clocking speed of 2.3 GHz. ... It has an integrated graphic processor from&nbsp;<b>Intel</b>&nbsp;HD 620 that adds strength to its performance.</p>\r\n', '', '30990', '35990', 'en', 32),
(98, 'HP Elitebook 8470p Laptop', '<p>Intel Core i5 3210M 2.50GHz. 8GB RAM / 500GB Hard Drive /DVD 14.1\" display Windows 10 Home 64bit</p>\r\n\r\n<ul>\r\n	<li>Intel Core i5 3210M 2.50GHz.</li>\r\n	<li>8GB RAM / 500GB Hard Drive /DVD</li>\r\n	<li>14.1\" display</li>\r\n	<li>Windows 10 Home 64bit</li>\r\n</ul>\r\n', '', '60000', '60000', 'en', 33),
(101, 'HP Pavilion 15 ', '<p>The laptop has Nvidia GeForce GT 740M 2GB DDR3 graphics processor. The&nbsp;<b>HP Pavilion 15</b>-n013TX notebook has a massive 1 TB HDD, an 8x SuperMulti DVD RW Drive with Dual Layer Support and 4 GB RAM for faster processing. It has a 15.6 inch HD BrightView LED-backlit Display with 1366 x 768 pixels resolution.</p>\r\n', '', '45000', '45000', 'en', 34),
(104, 'HP Notebook G42-475TU Laptop (Core i3 1st Gen/3 GB/320 GB/DOS)', '<p>Performance</p>\r\n\r\n<p>Core i3 1st Gen2.4 Ghz3 GB DDR3 RAM<br />\r\nDesign</p>\r\n\r\n<p>14 inches (35.56 cm)1366 x 768 pixels2.20 Kg, 31.5 mm thick<br />\r\nStorage</p>\r\n\r\n<p>320 GB HDDSATA5400 RPM<br />\r\nBattery</p>\r\n\r\n<p>6 Cell3 Hrs</p>\r\n', '', '55000', '55000', 'en', 35),
(107, 'Dell Inspiron 2-in-1 15.6\' Touch-Screen Laptop Intel Core i5 8GB Memory 256GB Solid State Drive Silver I7586-5045SLV-PUS - ', '<p><b>Dell Inspiron</b>&nbsp;5000&nbsp;<b>15.6</b>\" HD Laptop PC. Intel Core i7-7500U. 16GB RAM. ... 2019&nbsp;<b>Dell</b>&nbsp;Premium&nbsp;<b>Inspiron 15.6</b>\'\' HD Touchscreen Laptop Intel i5-7200U up to 3.1GHz…</p>\r\n', '', '45000', '45000', 'en', 36),
(110, 'Dell Inspiron Laptop (Core i3 5th Gen/4 GB/500 GB/Windows 8 1)', '<p>Performance Core i3 5th Gen2.0 Ghz4 GB DDR3 RAM&nbsp;&nbsp; &nbsp;<br />\r\nDesign 15.6 inches (39.62 cm)1366 x 768 pixels2.0 Kg, 23.3 mm thick&nbsp;&nbsp; &nbsp;<br />\r\nStorage 500 GB HDDSATA5400 RPM&nbsp;&nbsp; &nbsp;<br />\r\nBattery Li-Ion4 Cell7 Hrs</p>\r\n', '', '55000', '65000', 'en', 37),
(113, 'Dell Inspiron 15 (3520) 15.6-inch Laptop PC', '<p>Intel Core i3-2350M Dual-Core processor<br />\r\n4GB PC3-12800 DDR3 memory<br />\r\n500GB 5400rpm SATA hard drive<br />\r\n8x DVD+/-RW dual layer burner<br />\r\n15.6\" WXGA (1366x768) display with 1.0 megapixel webcam<br />\r\nIntel HD Graphics 3000 integrated graphics<br />\r\nFast Ethernet, 802.11b/g/n wireless, Bluetooth<br />\r\nThree USB 2.0, HDMI, VGA, 3-in-1 card reader<br />\r\n14.8\" x 10.2\" x 1.4\" @ 5.2 lbs.<br />\r\nWindows 7 Home Premium, Office Starter, McAfee Security Center</p>\r\n', '', '45000', '45000', 'en', 38),
(116, 'Dell Inspiron 15 Core i5 7th Gen 15-inch Laptop (4GB/1TB/Ubuntu Linux 16.04/2GB Graphics/Black/2.3kg), 3567', '<p>Processor: 7th Gen Intel core i5 processor, 3.2GHz base processor speed<br />\r\nOperating System: This is a Ubuntu Linux 16.04-based laptop | Requires separate purchase and installation of operating system software (like Windows), not included in the box | Refer to Lenovo website for drivers<br />\r\nDisplay: 15-inch (1366x768) display<br />\r\nMemory &amp; Storage: 4GB DDR4 RAM with AMD Radeon M340 2GB graphics | Storage: 1TB Serial ATA HDD<br />\r\nDesign &amp; battery: Laptop weight: 2.3 kg<br />\r\nWarranty: This genuine Dell laptop comes with 1 year onsite domestic warranty from Dell covering manufacturing defects and not covering physical damage. For more details, see Warranty section<br />\r\nPreinstalled Software: Ubuntu Linux 16.04 | In the box: Dell Inspiron 3567, Battery<br />\r\nPorts &amp; CD drive: 2 USB 3.0</p>\r\n', '', '53600', '53600', 'en', 39),
(119, 'Dell Inspiron 3576 Laptop - Intel Core i5-8250U, 15.6-Inch FHD, 1TB, 8GB, 2GB VGA- AMD Radeon 520, Eng-Arb-KB, Windows 10, Black', '<p>Model Number: 3576-INS-1162-BLK<br />\r\nVideo Controller Manufacturer: AMD<br />\r\nRAM Size: 8 GB<br />\r\nHard Disk Capacity: 1 TB<br />\r\nOperating System: Windows</p>\r\n', '', '45500', '45500', 'en', 40),
(122, 'Espoir Analog Blue Dial Men\'s Watch - ESP12457', '<p>Dial Color: Blue, Case Shape: Round, Dial Glass Material: Glass<br />\r\nBand Color: Silver, Band Material: Stainless Steel<br />\r\nWatch Movement Type: Quartz, Watch Display Type: Analog<br />\r\nCase Material: Metal, Case Diameter: 40 mm millimeters<br />\r\nWater Resistance Depth: 3 meters<br />\r\n6 months warranty</p>\r\n', '', '2500', '2500', 'en', 41),
(125, 'Samsung Galaxy Watch 46mm', '<p>sAMOLED Display<br />\r\nDual-Core Processor<br />\r\n1.5 GB RAM and 4 GB internal storage<br />\r\nHealth &amp; Wellness<br />\r\nLTE<br />\r\nDurability<br />\r\nDesign Personalization<br />\r\nEnhanced Connectivity<br />\r\nFitness<br />\r\nDigital Assistant<br />\r\nSamsung Pay<br />\r\nTizen 4.0<br />\r\nSensory Type<br />\r\n22mm Silicon strap<br />\r\nCompatible with Samsung phones only<br />\r\n&nbsp;</p>\r\n', '', '5000', '5000', 'en', 42),
(131, 'Diesel Men\'s Mega Chief Quartz Stainless Steel Chronograph Watch, Color: Black (Model: DZ4318)', '<p>Made in USA or Imported<br />\r\nCase size: 59mm; Band size: 26mm; quartz movement with 3-hand analog display, date window, and 3 chronograph subdials; iridescent mineral crystal face<br />\r\nBlack plated stainless steel case with cut-out detail; black dial with luminous hands, hour markers, and silver-tone Arabic numeral at 12 o\'clock<br />\r\nBlack plated stainless steel bracelet with deployant-clasp closure<br />\r\nWater resistant to 330 feet (100 M): suitable for swimming and snorkeling, but not scuba diving<br />\r\nThis product is authentic and sold directly from the brand manufacturer&nbsp;</p>\r\n', '', '1500', '1500', 'en', 44),
(134, 'Vincero Luxury Men\'s Kairos Wrist Watch - Top Grain Italian Leather Watch Band - 42mm Analog Watch - Japanese Quartz Movement', '<p>ITALIAN LEATHER BAND (22mm) - Our premium leather band’s are cut from genuine Italian calf leather and built to withstand over time. They are 22mm wide and are Interchangeable with a easy release button on the back.<br />\r\nSURGICAL GRADE STAINLESS STEEL - The watch casing is constructed with 316L surgical grade stainless steel with a 43mm diameter that can be worn well in both casual and formal settings.<br />\r\nSCRATCH &amp; WATER RESISTANT - All luxury watches come protected with a sapphire coated mineral crystal glass that is scratch &amp; scrape resistant. The watch casing is also 5 ATM water resistant allowing you to wear your Vincero for both work and play.<br />\r\nCITIZEN MIYOTA QUARTZ MOVEMENT - This watch features a very precise Japanese Miyota Quartz movement along with a date function.</p>\r\n', '', '9999', '9999', 'en', 45),
(137, 'Invicta Men\'s 1270 Specialty Chronograph 18k Gold Ion-Plated Stainless Steel Watch', '<p>Round watch with gold-tone dial featuring three subdials, placed indices, engraved bezel, and date window at six o\'clock. Case Size : 50 mm<br />\r\n50 mm gold ion-plated stainless steel case with mineral dial window<br />\r\nJapanese quartz movement with analog display<br />\r\nGold-plated stainless steel band with fold-over clasp and safety closure<br />\r\nWater resistant to 50 m (165 ft): In general, suitable for short periods of recreational swimming, but not diving or snorkeling</p>\r\n', '', '3700', '3700', 'en', 46),
(138, 'smart tv,an Internet-connected', '<p>A smart TV is a digital television that is, essentially, an Internet-connected, storage-aware computer specialized for entertainment.&nbsp;</p>\r\n\r\n<p>Smart TVs are available as stand-alone products but regular televisions can also be made “smart” through set-top boxes that enable advanced functions.</p>\r\n', '', '25,000', '30000', 'en', 47),
(139, 'Fan', '<p>Fresh air with fastest cooling capability.</p>\r\n', '', '3000', '4000', 'en', 48);

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages`
--

CREATE TABLE `seo_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seo_pages`
--

INSERT INTO `seo_pages` (`id`, `name`) VALUES
(1, 'home'),
(2, 'checkout'),
(3, 'contacts'),
(4, 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages_translations`
--

CREATE TABLE `seo_pages_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `page_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_for` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `sub_for`, `position`) VALUES
(42, 38, 0),
(2, 0, 0),
(23, 13, 0),
(37, 35, 0),
(36, 35, 0),
(41, 38, 0),
(13, 0, 0),
(19, 13, 0),
(24, 13, 0),
(25, 13, 0),
(26, 13, 0),
(27, 13, 0),
(44, 2, 0),
(40, 38, 0),
(38, 2, 0),
(39, 38, 0),
(35, 2, 0),
(43, 42, 0),
(45, 46, 0),
(46, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories_translations`
--

CREATE TABLE `shop_categories_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories_translations`
--

INSERT INTO `shop_categories_translations` (`id`, `name`, `abbr`, `for_id`) VALUES
(5, 'Electronic Devices', 'en', 2),
(26, 'Smart Tv', 'en', 9),
(35, 'LED Television', 'en', 12),
(38, 'Mobiles', 'en', 13),
(44, 'Smart Television', 'en', 15),
(47, 'LED Television', 'en', 16),
(50, 'OLED Television', 'en', 17),
(53, 'Other Television', 'en', 18),
(56, 'xiaomi', 'en', 19),
(59, 'TV & Home Appliances', 'en', 20),
(68, 'samsung galaxy', 'en', 23),
(71, 'samsung galaxy j7', 'en', 24),
(74, 'samsung galaxy s9', 'en', 25),
(77, 'Apple iPhone 7 Plus', 'en', 26),
(80, 'Samsung Galaxy S9+', 'en', 27),
(86, 'TV & Home Appliances', 'en', 29),
(95, 'Laptop', 'en', 32),
(101, 'TV & Home Appliances', 'en', 35),
(104, 'LED Television', 'en', 36),
(107, 'Smart Television', 'en', 37),
(110, 'Laptop', 'en', 38),
(113, 'hp laptop', 'en', 39),
(116, 'Dell laptop', 'en', 40),
(119, 'sumsung laptop', 'en', 41),
(122, 'aser laptop', 'en', 42),
(125, 'lenvo laptop', 'en', 43),
(128, 'Watch', 'en', 44),
(129, 'Fan', 'en', 45),
(130, 'Fan', 'en', 46);

-- --------------------------------------------------------

--
-- Table structure for table `subscribed`
--

CREATE TABLE `subscribed` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `textual_pages_tanslations`
--

CREATE TABLE `textual_pages_tanslations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'notifications by email',
  `last_login` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `notify`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'your@email.com', 0, 1562315143);

-- --------------------------------------------------------

--
-- Table structure for table `users_public`
--

CREATE TABLE `users_public` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `value_store`
--

CREATE TABLE `value_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `thekey` varchar(50) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `value_store`
--

INSERT INTO `value_store` (`id`, `thekey`, `value`) VALUES
(1, 'sitelogo', 'logo.png'),
(2, 'navitext', ''),
(3, 'footercopyright', 'Powered by ECC FZE © All right reserved. '),
(4, 'contactspage', '<p>Northern University Bangladesh</p>\r\n'),
(5, 'footerContactAddr', 'Mirpur-10'),
(6, 'footerContactEmail', 'arefinjule@gmail.com'),
(7, 'footerContactPhone', '+8801773553007'),
(8, 'googleMaps', '42.671840, 83.279163'),
(9, 'footerAboutUs', ''),
(10, 'footerSocialFacebook', 'https://www.facebook.com/Arjule.me'),
(11, 'footerSocialTwitter', ''),
(12, 'footerSocialGooglePlus', 'arefinjule@gmail.com'),
(13, 'footerSocialPinterest', ''),
(14, 'footerSocialYoutube', ''),
(16, 'contactsEmailTo', 'contacts@shop.dev'),
(17, 'shippingOrder', '1'),
(18, 'addJs', ''),
(19, 'publicQuantity', '0'),
(20, 'paypal_email', ''),
(21, 'paypal_sandbox', '0'),
(22, 'publicDateAdded', '0'),
(23, 'googleApi', ''),
(24, 'template', 'redlabel'),
(25, 'cashondelivery_visibility', '1'),
(26, 'showBrands', '1'),
(27, 'showInSlider', '0'),
(28, 'codeDiscounts', '1'),
(29, 'virtualProducts', '0'),
(30, 'multiVendor', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `url`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, NULL, '', 'admin@gmail.com', '$2y$10$KqRtIPh4VYKCdt2ylxDjD.kDRRAw2M1wTNPvliJ867dW71ZnDm.fK', '2019-06-29 06:21:10', '2019-06-29 06:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders`
--

CREATE TABLE `vendors_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_code` varchar(20) NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders_clients`
--

CREATE TABLE `vendors_orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_pages`
--
ALTER TABLE `active_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_links`
--
ALTER TABLE `confirm_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law`
--
ALTER TABLE `cookie_law`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`abbr`,`for_id`) USING BTREE;

--
-- Indexes for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_clients`
--
ALTER TABLE `orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_translations`
--
ALTER TABLE `products_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages`
--
ALTER TABLE `seo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed`
--
ALTER TABLE `subscribed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_public`
--
ALTER TABLE `users_public`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_store`
--
ALTER TABLE `value_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`thekey`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_pages`
--
ALTER TABLE `active_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `confirm_links`
--
ALTER TABLE `confirm_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cookie_law`
--
ALTER TABLE `cookie_law`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders_clients`
--
ALTER TABLE `orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `products_translations`
--
ALTER TABLE `products_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `seo_pages`
--
ALTER TABLE `seo_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `subscribed`
--
ALTER TABLE `subscribed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_public`
--
ALTER TABLE `users_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `value_store`
--
ALTER TABLE `value_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
