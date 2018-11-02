-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2018 at 02:07 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Wordpress', '2018-10-06 16:55:47', '2018-10-06 16:55:47'),
(3, 'Laravel', '2018-10-06 16:57:08', '2018-10-06 16:57:08'),
(4, 'Ruby on Rails', '2018-10-06 16:57:33', '2018-10-06 16:57:33'),
(5, 'Tutorials', '2018-10-06 16:58:00', '2018-10-06 16:58:00'),
(6, 'Career', '2018-10-06 17:07:21', '2018-10-06 17:07:21');

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
(117, '2014_10_12_000000_create_users_table', 1),
(118, '2014_10_12_100000_create_password_resets_table', 1),
(119, '2018_09_19_140704_create_posts_table', 1),
(120, '2018_09_19_142147_create_categories_table', 1),
(121, '2018_09_21_203205_create_tags_table', 1),
(122, '2018_09_21_205340_create_post_tag_table', 1),
(123, '2018_09_30_180424_create_profiles_table', 1),
(124, '2018_10_06_110831_create_settings_table', 1),
(125, '2018_11_01_145605_insert_user_id_column', 2);

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
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Working with a lot of efforts', 'working-with-a-lot-of-efforts', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in mollis metus. Aliquam orci arcu, fringilla eget libero ut, interdum consectetur ligula. Fusce in placerat lacus. Sed ut velit lorem. Donec diam ipsum, ultrices sit amet sodales et, semper condimentum urna. Phasellus vel ligula ex. Mauris maximus mauris quis vulputate elementum. Curabitur felis turpis, maximus quis quam eu, accumsan mattis massa. Nulla at lobortis elit. Sed scelerisque justo vel auctor ultrices. Fusce mauris dolor, consectetur eu libero sit amet, rutrum porttitor ex. Etiam pretium, lacus non pellentesque sagittis, erat magna placerat massa, sed faucibus urna nunc quis nunc. Pellentesque suscipit augue nec rutrum sodales.\r\n\r\nDuis diam massa, varius id arcu vitae, iaculis efficitur purus. Suspendisse sit amet suscipit enim. Nunc malesuada, diam ut ullamcorper fermentum, tellus purus viverra libero, id suscipit lacus odio in eros. Sed vel porttitor risus, non finibus felis. Aliquam suscipit est neque, rutrum accumsan turpis scelerisque lobortis. Duis sem dolor, iaculis a vestibulum sed, auctor ullamcorper arcu. Maecenas vel urna in tellus ultricies luctus. Vestibulum nec porta urna. Morbi dolor purus, semper ac ipsum et, rhoncus rutrum lorem.\r\n\r\nCras ullamcorper ipsum vel sollicitudin ornare. In porta enim ut rutrum scelerisque. Duis mi neque, convallis in metus sit amet, pulvinar pulvinar mi. Nunc finibus magna at dolor molestie efficitur. Integer efficitur est ligula, non lacinia elit sollicitudin in. In vitae semper nunc, a venenatis risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ut ultrices arcu. Vivamus ac interdum ipsum. Nullam nec quam vel ex pretium blandit quis sollicitudin massa. Phasellus tincidunt dignissim dolor id porttitor. Duis id nulla a risus ullamcorper viverra. Suspendisse potenti. Nullam hendrerit justo vitae enim placerat facilisis. Etiam et mollis neque.\r\n\r\nNunc id tincidunt libero. Proin vehicula blandit lacus, nec hendrerit tellus sollicitudin vel. Mauris dolor lacus, dictum luctus arcu nec, condimentum viverra nulla. Aliquam et suscipit est. Proin varius nunc nec purus ornare aliquam. Pellentesque bibendum risus quis elit venenatis mollis. Donec et posuere lacus. Aliquam iaculis tincidunt hendrerit. Sed et placerat ipsum. Mauris a magna purus.\r\n\r\nProin purus lacus, vulputate ut egestas ut, consequat nec felis. In sollicitudin justo et est pretium, at fringilla ante consequat. Nam quis facilisis elit, sit amet aliquam sapien. Pellentesque porttitor ipsum sit amet consequat rutrum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus pulvinar enim eros, quis lobortis sapien gravida in. Curabitur in venenatis dolor.', 6, 'uploads/posts/1538903999post1.jpg', NULL, '2018-10-07 04:19:59', '2018-10-07 07:14:47', 1),
(2, 'Installing new plugins into wordpress', 'installing-new-plugins-into-wordpress', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in mollis metus. Aliquam orci arcu, fringilla eget libero ut, interdum consectetur ligula. Fusce in placerat lacus. Sed ut velit lorem. Donec diam ipsum, ultrices sit amet sodales et, semper condimentum urna. Phasellus vel ligula ex. Mauris maximus mauris quis vulputate elementum. Curabitur felis turpis, maximus quis quam eu, accumsan mattis massa. Nulla at lobortis elit. Sed scelerisque justo vel auctor ultrices. Fusce mauris dolor, consectetur eu libero sit amet, rutrum porttitor ex. Etiam pretium, lacus non pellentesque sagittis, erat magna placerat massa, sed faucibus urna nunc quis nunc. Pellentesque suscipit augue nec rutrum sodales.\r\n\r\nDuis diam massa, varius id arcu vitae, iaculis efficitur purus. Suspendisse sit amet suscipit enim. Nunc malesuada, diam ut ullamcorper fermentum, tellus purus viverra libero, id suscipit lacus odio in eros. Sed vel porttitor risus, non finibus felis. Aliquam suscipit est neque, rutrum accumsan turpis scelerisque lobortis. Duis sem dolor, iaculis a vestibulum sed, auctor ullamcorper arcu. Maecenas vel urna in tellus ultricies luctus. Vestibulum nec porta urna. Morbi dolor purus, semper ac ipsum et, rhoncus rutrum lorem.\r\n\r\nCras ullamcorper ipsum vel sollicitudin ornare. In porta enim ut rutrum scelerisque. Duis mi neque, convallis in metus sit amet, pulvinar pulvinar mi. Nunc finibus magna at dolor molestie efficitur. Integer efficitur est ligula, non lacinia elit sollicitudin in. In vitae semper nunc, a venenatis risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ut ultrices arcu. Vivamus ac interdum ipsum. Nullam nec quam vel ex pretium blandit quis sollicitudin massa. Phasellus tincidunt dignissim dolor id porttitor. Duis id nulla a risus ullamcorper viverra. Suspendisse potenti. Nullam hendrerit justo vitae enim placerat facilisis. Etiam et mollis neque.\r\n\r\nNunc id tincidunt libero. Proin vehicula blandit lacus, nec hendrerit tellus sollicitudin vel. Mauris dolor lacus, dictum luctus arcu nec, condimentum viverra nulla. Aliquam et suscipit est. Proin varius nunc nec purus ornare aliquam. Pellentesque bibendum risus quis elit venenatis mollis. Donec et posuere lacus. Aliquam iaculis tincidunt hendrerit. Sed et placerat ipsum. Mauris a magna purus.\r\n\r\nProin purus lacus, vulputate ut egestas ut, consequat nec felis. In sollicitudin justo et est pretium, at fringilla ante consequat. Nam quis facilisis elit, sit amet aliquam sapien. Pellentesque porttitor ipsum sit amet consequat rutrum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus pulvinar enim eros, quis lobortis sapien gravida in. Curabitur in venenatis dolor.', 6, 'uploads/posts/15389070113 (1).jpg', NULL, '2018-10-07 05:10:11', '2018-10-07 05:10:11', 2),
(3, 'Laravel and Vue.js in action', 'laravel-and-vuejs-in-action', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in mollis metus. Aliquam orci arcu, fringilla eget libero ut, interdum consectetur ligula. Fusce in placerat lacus. Sed ut velit lorem. Donec diam ipsum, ultrices sit amet sodales et, semper condimentum urna. Phasellus vel ligula ex. Mauris maximus mauris quis vulputate elementum. Curabitur felis turpis, maximus quis quam eu, accumsan mattis massa. Nulla at lobortis elit. Sed scelerisque justo vel auctor ultrices. Fusce mauris dolor, consectetur eu libero sit amet, rutrum porttitor ex. Etiam pretium, lacus non pellentesque sagittis, erat magna placerat massa, sed faucibus urna nunc quis nunc. Pellentesque suscipit augue nec rutrum sodales.\r\n\r\nDuis diam massa, varius id arcu vitae, iaculis efficitur purus. Suspendisse sit amet suscipit enim. Nunc malesuada, diam ut ullamcorper fermentum, tellus purus viverra libero, id suscipit lacus odio in eros. Sed vel porttitor risus, non finibus felis. Aliquam suscipit est neque, rutrum accumsan turpis scelerisque lobortis. Duis sem dolor, iaculis a vestibulum sed, auctor ullamcorper arcu. Maecenas vel urna in tellus ultricies luctus. Vestibulum nec porta urna. Morbi dolor purus, semper ac ipsum et, rhoncus rutrum lorem.\r\n\r\nCras ullamcorper ipsum vel sollicitudin ornare. In porta enim ut rutrum scelerisque. Duis mi neque, convallis in metus sit amet, pulvinar pulvinar mi. Nunc finibus magna at dolor molestie efficitur. Integer efficitur est ligula, non lacinia elit sollicitudin in. In vitae semper nunc, a venenatis risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ut ultrices arcu. Vivamus ac interdum ipsum. Nullam nec quam vel ex pretium blandit quis sollicitudin massa. Phasellus tincidunt dignissim dolor id porttitor. Duis id nulla a risus ullamcorper viverra. Suspendisse potenti. Nullam hendrerit justo vitae enim placerat facilisis. Etiam et mollis neque.\r\n\r\nNunc id tincidunt libero. Proin vehicula blandit lacus, nec hendrerit tellus sollicitudin vel. Mauris dolor lacus, dictum luctus arcu nec, condimentum viverra nulla. Aliquam et suscipit est. Proin varius nunc nec purus ornare aliquam. Pellentesque bibendum risus quis elit venenatis mollis. Donec et posuere lacus. Aliquam iaculis tincidunt hendrerit. Sed et placerat ipsum. Mauris a magna purus.\r\n\r\nProin purus lacus, vulputate ut egestas ut, consequat nec felis. In sollicitudin justo et est pretium, at fringilla ante consequat. Nam quis facilisis elit, sit amet aliquam sapien. Pellentesque porttitor ipsum sit amet consequat rutrum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus pulvinar enim eros, quis lobortis sapien gravida in. Curabitur in venenatis dolor.', 6, 'uploads/posts/15389076142.png', '2018-11-02 07:16:05', '2018-10-07 05:20:14', '2018-11-02 07:16:05', 2),
(4, 'WebFabricant Intro', 'webfabricant-intro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent in mollis metus. Aliquam orci arcu, fringilla eget libero ut, interdum consectetur ligula. Fusce in placerat lacus. Sed ut velit lorem. Donec diam ipsum, ultrices sit amet sodales et, semper condimentum urna. Phasellus vel ligula ex. Mauris maximus mauris quis vulputate elementum. Curabitur felis turpis, maximus quis quam eu, accumsan mattis massa. Nulla at lobortis elit. Sed scelerisque justo vel auctor ultrices. Fusce mauris dolor, consectetur eu libero sit amet, rutrum porttitor ex. Etiam pretium, lacus non pellentesque sagittis, erat magna placerat massa, sed faucibus urna nunc quis nunc. Pellentesque suscipit augue nec rutrum sodales.\r\n\r\nDuis diam massa, varius id arcu vitae, iaculis efficitur purus. Suspendisse sit amet suscipit enim. Nunc malesuada, diam ut ullamcorper fermentum, tellus purus viverra libero, id suscipit lacus odio in eros. Sed vel porttitor risus, non finibus felis. Aliquam suscipit est neque, rutrum accumsan turpis scelerisque lobortis. Duis sem dolor, iaculis a vestibulum sed, auctor ullamcorper arcu. Maecenas vel urna in tellus ultricies luctus. Vestibulum nec porta urna. Morbi dolor purus, semper ac ipsum et, rhoncus rutrum lorem.\r\n\r\nCras ullamcorper ipsum vel sollicitudin ornare. In porta enim ut rutrum scelerisque. Duis mi neque, convallis in metus sit amet, pulvinar pulvinar mi. Nunc finibus magna at dolor molestie efficitur. Integer efficitur est ligula, non lacinia elit sollicitudin in. In vitae semper nunc, a venenatis risus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum ut ultrices arcu. Vivamus ac interdum ipsum. Nullam nec quam vel ex pretium blandit quis sollicitudin massa. Phasellus tincidunt dignissim dolor id porttitor. Duis id nulla a risus ullamcorper viverra. Suspendisse potenti. Nullam hendrerit justo vitae enim placerat facilisis. Etiam et mollis neque.\r\n\r\nNunc id tincidunt libero. Proin vehicula blandit lacus, nec hendrerit tellus sollicitudin vel. Mauris dolor lacus, dictum luctus arcu nec, condimentum viverra nulla. Aliquam et suscipit est. Proin varius nunc nec purus ornare aliquam. Pellentesque bibendum risus quis elit venenatis mollis. Donec et posuere lacus. Aliquam iaculis tincidunt hendrerit. Sed et placerat ipsum. Mauris a magna purus.\r\n\r\nProin purus lacus, vulputate ut egestas ut, consequat nec felis. In sollicitudin justo et est pretium, at fringilla ante consequat. Nam quis facilisis elit, sit amet aliquam sapien. Pellentesque porttitor ipsum sit amet consequat rutrum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus pulvinar enim eros, quis lobortis sapien gravida in. Curabitur in venenatis dolor.', 5, 'uploads/posts/1538915039Capture8.PNG', NULL, '2018-10-07 06:48:23', '2018-10-07 07:23:59', 1),
(5, 'Jugging help for better thinking', 'jugging-help-for-better-thinking', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam a diam et purus auctor lacinia semper non lacus. Fusce suscipit et justo ut feugiat. Donec porta tempor lorem, eu dictum nisi aliquet ac. Curabitur quam lectus, mollis dictum dignissim sit amet, suscipit vitae mi. Duis eu purus dapibus, malesuada turpis in, eleifend ipsum. Nam sit amet ultricies mauris. Duis libero nisl, vestibulum vel tellus in, luctus convallis enim. Vivamus ac felis efficitur orci finibus varius vitae eget neque. Aenean vestibulum metus mi, consectetur lacinia metus convallis quis. Nam eget interdum mauris, id tincidunt nisl. Quisque pellentesque efficitur purus eu faucibus. Aenean feugiat vel sapien eu porttitor. Aliquam erat volutpat.\r\n\r\nSed rhoncus dui tortor, a consequat felis placerat quis. Ut id mi ac felis lobortis sodales eget vitae erat. Suspendisse potenti. Vestibulum neque nibh, cursus vitae mattis a, tempus eu odio. Duis sodales turpis augue, aliquam tristique enim sagittis in. Suspendisse pharetra felis eget augue scelerisque tincidunt. Nunc quis nulla tellus.\r\n\r\nNam porttitor in orci in iaculis. Integer eget tempus tortor. Cras sodales imperdiet libero, pretium tristique dui placerat non. Nullam vitae nunc at tortor convallis maximus. Phasellus id diam purus. Pellentesque porta suscipit ligula id volutpat. Fusce leo mauris, pretium vel erat ut, placerat laoreet felis. Sed quis elit commodo, faucibus justo vitae, sollicitudin nulla. Sed a purus nec nulla pulvinar fermentum. Morbi molestie neque ut arcu luctus fringilla. Donec dapibus urna lectus, eu ultricies mi finibus vitae. Maecenas in leo est.\r\n\r\nFusce porttitor, ante at ultricies consectetur, nulla orci porttitor quam, nec aliquet arcu odio eu dui. Suspendisse potenti. Ut sagittis fermentum tellus, non finibus orci facilisis porttitor. Morbi viverra justo arcu, vestibulum lobortis orci semper ullamcorper. Integer dignissim nisl ipsum, nec ultrices nisi luctus ut. Curabitur dui turpis, feugiat et magna vitae, vehicula rutrum turpis. Sed sit amet mi dui. Praesent ut rutrum dui, ut vestibulum risus. Phasellus eget sapien turpis. Nunc quam elit, cursus vel placerat vel, semper nec odio. Nunc vulputate rutrum purus, eget placerat dui scelerisque vel. Nulla id nisl nulla.\r\n\r\nVivamus semper massa dolor, quis faucibus metus auctor et. Maecenas cursus est et ligula ornare sagittis. Donec pulvinar enim nec vestibulum tristique. Nunc vitae vehicula dolor, ac molestie nulla. Integer sed sem purus. Nullam dapibus justo risus, ut aliquam diam pharetra id. Aenean suscipit libero nec massa porta, commodo accumsan eros fermentum. Vestibulum sed neque porttitor, pretium eros nec, pulvinar elit. Quisque eu eros ante. Proin ipsum odio, viverra a porta vel, elementum in ligula. Ut ac est egestas, porttitor libero eu, tempor lacus. Duis ullamcorper dui et est tristique suscipit. In laoreet, nisi ut maximus viverra, est lorem pretium felis, nec sodales odio tellus et turpis. Nulla quis ante scelerisque odio volutpat scelerisque malesuada ut quam.\r\n\r\nSed porttitor consectetur tortor, nec tristique felis finibus sed. Integer a augue vehicula, ornare risus sit amet, malesuada felis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut lacinia dui eu elit viverra, sed ullamcorper nunc fringilla. Maecenas porta aliquet ante, nec fermentum metus maximus facilisis. Sed luctus massa in nisi ultricies, et rhoncus dui faucibus. Integer ac odio mollis, venenatis libero non, commodo velit. Vestibulum vitae feugiat ligula. Nunc eget mattis dui, et feugiat augue. Praesent id lorem luctus, varius nunc id, faucibus purus. Cras nec elit accumsan nibh mollis luctus luctus non elit. In iaculis, quam nec commodo tempus, sapien mauris egestas neque, ut tristique erat sapien nec sapien. Sed elit arcu, ornare vitae magna vel, hendrerit semper purus. Suspendisse convallis urna orci, quis bibendum neque fringilla vel. Nullam accumsan felis et ante auctor aliquam. Nullam non aliquam mi.\r\n\r\nPraesent tempor dolor tortor, a fringilla ex ullamcorper in. Nam maximus sit amet libero sit amet rhoncus. Aliquam erat volutpat. Proin diam ante, facilisis in velit et, ultricies pharetra ex. Donec et ligula sagittis, congue justo nec, tempus odio. Donec eget elit enim. Mauris eu quam eget tellus tempus tempor. Vestibulum eleifend dapibus quam. Fusce at condimentum felis. Vivamus maximus nibh quis urna euismod, ac tempus neque volutpat. Nunc imperdiet pharetra metus, eu aliquam massa fermentum non.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In cursus eget nisl vitae vestibulum. Vestibulum eu fringilla quam. In eu mollis mauris. Praesent nec felis metus. Nunc dapibus quam ut feugiat cursus. Quisque nunc mauris, pellentesque id scelerisque et, maximus sed ligula. Nunc at quam tincidunt, suscipit sapien vitae, pulvinar libero. Donec velit arcu, fermentum nec finibus nec, lacinia vitae urna. Sed faucibus sapien eget libero laoreet, ac convallis eros cursus. Quisque tincidunt pulvinar sollicitudin. Ut eu justo interdum, laoreet libero quis, commodo erat. Nam vel posuere purus, vitae laoreet leo. Pellentesque sagittis, dolor et congue ornare, nisl justo sollicitudin orci, ac ultricies velit metus eget nunc. Vestibulum dignissim dignissim tortor, et auctor purus pellentesque interdum. Fusce tincidunt laoreet metus sed consequat.', 5, 'uploads/posts/1538914714Capture10.PNG', NULL, '2018-10-07 07:18:34', '2018-10-07 07:22:52', 2),
(6, 'West Covina', 'west-covina', '<h5><b>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam a diam et purus auctor lacinia semper non lacus. Fusce suscipit et justo ut feugiat. Donec porta tempor lorem, eu dictum nisi aliquet ac. Curabitur quam lectus, mollis dictum dignissim sit amet, suscipit vitae mi. Duis eu purus dapibus, malesuada turpis in, eleifend ipsum. Nam sit amet ultricies mauris. Duis libero nisl, vestibulum vel tellus in, luctus convallis enim. Vivamus ac felis efficitur orci finibus varius vitae eget neque. Aenean vestibulum metus mi, consectetur lacinia metus convallis quis. Nam eget interdum mauris, id tincidunt nisl.</b></h5><p> Quisque pellentesque efficitur purus eu faucibus. Aenean feugiat vel sapien eu porttitor. Aliquam erat volutpat.\r\n\r\nSed rhoncus dui tortor, a consequat felis placerat quis. Ut id mi ac felis lobortis sodales eget vitae erat. Suspendisse potenti. Vestibulum neque nibh, cursus vitae mattis a, tempus eu odio. Duis sodales turpis augue, aliquam tristique enim sagittis in. Suspendisse pharetra felis eget augue scelerisque tincidunt. Nunc quis nulla tellus.\r\n\r\nNam porttitor in orci in iaculis. Integer eget tempus tortor. Cras sodales imperdiet libero, pretium tristique dui placerat non. </p><p style=\"text-align: center; \"><span style=\"background-color: rgb(255, 255, 0);\">Nullam vitae nunc at tortor convallis maximus. Phasellus id diam purus. Pellentesque porta suscipit ligula id volutpat. Fusce leo mauris, pretium vel erat ut, placerat laoreet felis. Sed quis elit commodo, faucibus justo vitae, sollicitudin nulla. Sed a purus nec nulla pulvinar fermentum. Morbi molestie neque ut arcu luctus fringilla. Donec dapibus urna lectus, eu ultricies mi finibus vitae. Maecenas in leo est.\r\n\r\nFusce porttitor, ante at ultricies consectetur, nulla orci porttitor quam, nec aliquet arcu odio eu dui. Suspendisse potenti. Ut sagittis fermentum tellus, non finibus orci facilisis porttitor. Morbi viverra justo arcu, vestibulum lobortis orci semper ullamcorper. Integer dignissim nisl ipsum, nec ultrices nisi luctus ut. Curabitur dui turpis, feugiat et magna vitae, vehicula rutrum turpis. Sed sit amet mi dui. Praesent ut rutrum dui, ut vestibulum risus. Phasellus eget sapien turpis.</span></p><p> Nunc quam elit, cursus vel placerat vel, semper nec odio. Nunc vulputate rutrum purus, eget placerat dui scelerisque vel. Nulla id nisl nulla.\r\n\r\nVivamus semper massa dolor, quis faucibus metus auctor et. Maecenas cursus est et ligula ornare sagittis. Donec pulvinar enim nec vestibulum tristique. Nunc vitae vehicula dolor, ac molestie nulla. Integer sed sem purus. Nullam dapibus justo risus, ut aliquam diam pharetra id. Aenean suscipit libero nec massa porta, commodo accumsan eros fermentum. Vestibulum sed neque porttitor, pretium eros nec, pulvinar elit. Quisque eu eros ante. Proin ipsum odio, viverra a porta vel, elementum in ligula. Ut ac est egestas, porttitor libero eu, tempor lacus. Duis ullamcorper dui et est tristique suscipit. In laoreet, nisi ut maximus viverra, est lorem pretium felis, nec sodales odio tellus et turpis. </p><p style=\"text-align: right; \"><span style=\"background-color: rgb(255, 0, 0);\">Nulla quis ante scelerisque odio volutpat scelerisque malesuada ut quam.\r\n\r\nSed porttitor consectetur tortor, nec tristique felis finibus sed. Integer a augue vehicula, ornare risus sit amet, malesuada felis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut lacinia dui eu elit viverra, sed ullamcorper nunc fringilla. Maecenas porta aliquet ante, nec fermentum metus maximus facilisis. Sed luctus massa in nisi ultricies, et rhoncus dui faucibus. Integer ac odio mollis, venenatis libero non, commodo velit. Vestibulum vitae feugiat ligula. Nunc eget mattis dui, et feugiat augue. Praesent id lorem luctus, varius nunc id, faucibus purus. Cras nec elit accumsan nibh mollis luctus luctus non elit. In iaculis, quam nec commodo tempus, sapien mauris egestas neque, ut tristique erat sapien nec sapien.</span></p><p> Sed elit arcu, ornare vitae magna vel, hendrerit semper purus. Suspendisse convallis urna orci, quis bibendum neque fringilla vel. Nullam accumsan felis et ante auctor aliquam. Nullam non aliquam mi.\r\n\r\nPraesent tempor dolor tortor, a fringilla ex ullamcorper in. Nam maximus sit amet libero sit amet rhoncus. Aliquam erat volutpat. Proin diam ante, facilisis in velit et, ultricies pharetra ex. Donec et ligula sagittis, congue justo nec, tempus odio. Donec eget elit enim. Mauris eu quam eget tellus tempus tempor. Vestibulum eleifend dapibus quam. Fusce at condimentum felis. Vivamus maximus nibh quis urna euismod, ac tempus neque volutpat. Nunc imperdiet pharetra metus, eu aliquam massa fermentum non.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. In cursus eget nisl vitae vestibulum. Vestibulum eu fringilla quam. In eu mollis mauris. Praesent nec felis metus. Nunc dapibus quam ut feugiat cursus. </p><p>Quisque nunc mauris, pellentesque id scelerisque et, maximus sed ligula. Nunc at quam tincidunt, suscipit sapien vitae, pulvinar libero. Donec velit arcu, fermentum nec finibus nec, lacinia vitae urna. Sed faucibus sapien eget libero laoreet, ac convallis eros cursus. Quisque tincidunt pulvinar sollicitudin. Ut eu justo interdum, laoreet libero quis, commodo erat. Nam vel posuere purus, vitae laoreet leo. Pellentesque sagittis, dolor et congue ornare, nisl justo sollicitudin orci, ac ultricies velit metus eget nunc. Vestibulum dignissim dignissim tortor, et auctor purus pellentesque interdum. Fusce tincidunt laoreet metus sed consequat.</p>', 5, 'uploads/posts/1539031506Cold-Flu-Disinfectants-1200x500.png', NULL, '2018-10-07 07:23:31', '2018-10-08 15:47:44', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 4, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 4, 3, NULL, NULL),
(6, 4, 4, NULL, NULL),
(7, 5, 2, NULL, NULL),
(8, 6, 2, NULL, NULL),
(9, 6, 3, NULL, NULL),
(10, 6, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'uploads/avatars/1.png',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'uploads/avatars/1.png', '1', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis dolore soluta voluptates, accusantium sint cupiditate eius eligendi ducimus quasi modi aperiam esse inventore incidunt nihil veniam ullam vel necessitatibus delectus?', 'facebook.com', 'youtube.com', '2018-10-06 14:16:13', '2018-10-06 14:16:13'),
(2, 'uploads/avatars/1.png', '2', 'I am a weird guy who loves to sleep', 'https://facebook.com/webfabricant', 'https://youtube.com/webfabricant', '2018-11-01 10:25:02', '2018-11-01 10:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Laravel\'s Blog', '(949) 298-1903', 'info@webfabricant.com', 'Russia, Petersburg', '2018-10-06 14:18:51', '2018-10-08 09:43:38');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(2, 'wordpress', '2018-10-07 04:12:13', '2018-10-07 04:12:13'),
(3, 'css3', '2018-10-07 04:12:20', '2018-10-07 04:12:20'),
(4, 'Laravel', '2018-10-07 04:12:27', '2018-10-07 04:12:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Usama', 'usamaalee786@gmail.com', 1, NULL, '$2y$10$l0Ue8HaFmIMz.CpSLYdlA.23dYo1bEO6jFwmWNlfjQLMkU8//ffFW', 'fd6Na6D3uslYgZZeYgGOCFPYrUkFzSoo7A6GgKfTbR960LOMNOiiQFuUzfDt', '2018-10-06 14:16:13', '2018-10-06 14:16:13'),
(2, 'Muhammad Shahbaz', 'aleeusama786@gmail.com', 0, NULL, '$2y$10$opWRTyF43g/48rMuH7t67eOrhKPnf.Yagu.D/h0.V2ALyGGts40Tq', 'RlNuvSGnLjWGTYe0SWVtMWRsViPpXRYctv8fZZoBvX0EONKJp65o7YPtA8G1', '2018-11-01 10:25:02', '2018-11-01 10:47:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
