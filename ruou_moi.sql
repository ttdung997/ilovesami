-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 18, 2018 at 05:33 AM
-- Server version: 10.0.34-MariaDB-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruou_moi`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('permission_admin', '1', 1453393049),
('permission_monitor', '1', 1453857958),
('permission_monitor', '26', 1456488425),
('permission_user', '2', 1456489241);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1453392913, 1453392913),
('/admin/*', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1453392928, 1453392928),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1453392928, 1453392928),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1453392927, 1453392927),
('/admin/assignment/search', 2, NULL, NULL, NULL, 1453392928, 1453392928),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1453392928, 1453392928),
('/admin/default/*', 2, NULL, NULL, NULL, 1453392928, 1453392928),
('/admin/default/index', 2, NULL, NULL, NULL, 1453392928, 1453392928),
('/admin/menu/*', 2, NULL, NULL, NULL, 1453392928, 1453392928),
('/admin/menu/create', 2, NULL, NULL, NULL, 1453392928, 1453392928),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1453392928, 1453392928),
('/admin/menu/index', 2, NULL, NULL, NULL, 1453392928, 1453392928),
('/admin/menu/update', 2, NULL, NULL, NULL, 1453392928, 1453392928),
('/admin/menu/view', 2, NULL, NULL, NULL, 1453392928, 1453392928),
('/admin/permission/*', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/permission/create', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/permission/index', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/permission/search', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/permission/update', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/permission/view', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/role/*', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/role/assign', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/role/create', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/role/delete', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/role/index', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/role/search', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/role/update', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/role/view', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/route/*', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/route/assign', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/route/create', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/route/index', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/route/search', 2, NULL, NULL, NULL, 1453392929, 1453392929),
('/admin/rule/*', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/admin/rule/create', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/admin/rule/index', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/admin/rule/update', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/admin/rule/view', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/book/create', 2, NULL, NULL, NULL, 1456488952, 1456488952),
('/book/upload', 2, NULL, NULL, NULL, 1456488975, 1456488975),
('/branch/*', 2, NULL, NULL, NULL, 1453392913, 1453392913),
('/branch/create', 2, NULL, NULL, NULL, 1453392913, 1453392913),
('/branch/delete', 2, NULL, NULL, NULL, 1453392913, 1453392913),
('/branch/index', 2, NULL, NULL, NULL, 1453392913, 1453392913),
('/branch/update', 2, NULL, NULL, NULL, 1453392913, 1453392913),
('/branch/view', 2, NULL, NULL, NULL, 1453392913, 1453392913),
('/debug/*', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/debug/default/*', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/debug/default/index', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/debug/default/view', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/gii/*', 2, NULL, NULL, NULL, 1453392931, 1453392931),
('/gii/default/*', 2, NULL, NULL, NULL, 1453392931, 1453392931),
('/gii/default/action', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/gii/default/diff', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/gii/default/index', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/gii/default/preview', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/gii/default/view', 2, NULL, NULL, NULL, 1453392930, 1453392930),
('/site/*', 2, NULL, NULL, NULL, 1453392913, 1453392913),
('/site/error', 2, NULL, NULL, NULL, 1453392913, 1453392913),
('/site/index', 2, NULL, NULL, NULL, 1453392913, 1453392913),
('/site/login', 2, NULL, NULL, NULL, 1453392913, 1453392913),
('/site/logout', 2, NULL, NULL, NULL, 1453392913, 1453392913),
('permission_admin', 2, 'Là người quản trị toàn bộ hệ thống', NULL, NULL, 1453393029, 1453393029),
('permission_monitor', 2, 'quan tri bai viet', NULL, NULL, 1453855634, 1453855634),
('permission_user', 2, 'La hoc vien cua he thong', NULL, NULL, 1456379015, 1456379015);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('permission_admin', '/*'),
('permission_monitor', '/admin/assignment/*'),
('permission_monitor', '/book/create'),
('permission_monitor', '/book/upload'),
('permission_monitor', 'permission_user'),
('permission_user', '/site/*');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title_seo` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `video` varchar(2048) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `isbn` varchar(32) COLLATE utf8_unicode_ci DEFAULT '0',
  `time_new` int(11) NOT NULL,
  `img` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title_seo`, `title`, `video`, `description`, `body`, `user_id`, `isbn`, `time_new`, `img`) VALUES
(2, 'giao-tiep-giua-php-va-mysql', 'Giao tiếp giửa PHP và MYSQL', '', '<p style="text-align:justify">dang xay dung...</p>\r\n', '<p style="text-align:justify">​dang xay dung...</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '1', 1455771234, 'phpmysql.png'),
(3, 'khai-niem-va-thuc-hanh-html', 'Khái niệm và thực hành HTML', '<iframe width="100%" height="480" src="https://www.youtube.com/embed/4Z0zKWVVXYA" frameborder="0" allowfullscreen></iframe>', 'Các khái niệm về mã HTML, giúp người lập trình bắt đầu nhập môn vào học lập trình website.', '<p style="text-align:justify">Để bắt đầu học ng&ocirc;n ngữ HTML th&igrave; m&igrave;nh khuy&ecirc;n c&aacute;c bạn/em t&igrave;m hiểu n&oacute; ở&nbsp;<a href="http://www.w3schools.com/html/html_intro.asp" target="_blank">http://www.w3schools.com/</a></p>\r\n\r\n<p style="text-align:justify"><img alt="Các khái niệm về mã HTML, giúp người lập trình bắt đầu nhập môn vào học lập trình website." src="http://hocwebsite.org/uploads/w3school.png" style="width:80%" title="Khái niệm và thực hành HTML" /></p>\r\n\r\n<p style="text-align:justify"><strong>Kh&aacute;i niệm HTML l&agrave; g&igrave;?</strong></p>\r\n\r\n<p>HTML l&agrave; một ng&ocirc;n ngữ đ&aacute;nh dấu cho việc m&ocirc; tả c&aacute;c t&agrave;i liệu website.</p>\r\n\r\n<ul>\r\n	<li>HTML l&agrave; viết tắt của <strong>Hypertext Markup Language</strong></li>\r\n	<li>Một ng&ocirc;n ngữ đ&aacute;nh dấu l&agrave; một tập hợp c&aacute;c thẻ đ&aacute;nh dấu</li>\r\n	<li>T&agrave;i liệu HTML được m&ocirc; tả bằng c&aacute;c thẻ HTML</li>\r\n	<li>Mỗi thẻ HTML m&ocirc; tả nội dung t&agrave;i liệu kh&aacute;c nhau</li>\r\n</ul>\r\n\r\n<p><strong>V&iacute; dụ ta c&oacute; nội dung của một trang HTML đơn giản sau</strong></p>\r\n\r\n<p><span style="color:blue">&lt;</span><span style="color:brown">!DOCTYPE</span><span style="color:rgb(0, 0, 0)">&nbsp;</span><span style="color:red">html</span><span style="color:blue">&gt;</span><br />\r\n<span style="color:blue">&lt;</span><span style="color:brown">html</span><span style="color:blue">&gt;</span><br />\r\n<span style="color:blue">&lt;</span><span style="color:brown">head</span><span style="color:blue">&gt;</span><br />\r\n<span style="color:blue">&lt;</span><span style="color:brown">title</span><span style="color:blue">&gt;</span>Ti&ecirc;u đề website của bạn<span style="color:blue">&lt;</span><span style="color:brown">/title</span><span style="color:blue">&gt;</span><br />\r\n<span style="color:blue">&lt;</span><span style="color:brown">/head</span><span style="color:blue">&gt;</span><br />\r\n<span style="color:blue">&lt;</span><span style="color:brown">body</span><span style="color:blue">&gt;</span><br />\r\n<br />\r\n<span style="color:blue">&lt;</span><span style="color:brown">h1</span><span style="color:blue">&gt;</span><span style="color:rgb(0, 0, 0)">Ti&ecirc;u đề nội dung b&agrave;i viết của bạn</span><span style="color:blue">&lt;</span><span style="color:brown">/h1</span><span style="color:blue">&gt;</span><br />\r\n<span style="color:blue">&lt;</span><span style="color:brown">p</span><span style="color:blue">&gt;</span><span style="color:rgb(0, 0, 0)">C&aacute;c nội dung văn bản</span><span style="color:blue">&lt;</span><span style="color:brown">/p</span><span style="color:blue">&gt;</span><br />\r\n<br />\r\n<span style="color:blue">&lt;</span><span style="color:brown">/body</span><span style="color:blue">&gt;</span><br />\r\n<span style="color:blue">&lt;</span><span style="color:brown">/html</span><span style="color:blue">&gt;</span></p>\r\n\r\n<p><strong>Giải th&iacute;ch v&iacute; dụ tr&ecirc;n&nbsp;</strong></p>\r\n\r\n<ul>\r\n	<li>Việc khai b&aacute;o <span style="color:blue">&lt;</span><span style="color:brown">!DOCTYPE</span><span style="color:rgb(0, 0, 0)">&nbsp;</span><span style="color:red">html</span><span style="color:blue">&gt;</span> định nghĩa kiểu t&agrave;i liệu cho tr&igrave;nh duyệt, cụ thể&nbsp;đ&acirc;y l&agrave; khai b&aacute;o của HTML5.</li>\r\n	<li>Những nội dung nằm giửa&nbsp;<span style="color:blue">&lt;</span><span style="color:brown">html</span><span style="color:blue">&gt;</span> v&agrave; <span style="color:blue">&lt;</span><span style="color:brown">/html</span><span style="color:blue">&gt;</span> m&ocirc; tả to&agrave;n bộ&nbsp;t&agrave;i liệu&nbsp;HTML.</li>\r\n	<li>Nằm giửa&nbsp;<span style="color:blue">&lt;</span><span style="color:brown">head</span><span style="color:blue">&gt;</span> v&agrave; <span style="color:blue">&lt;</span><span style="color:brown">/head</span><span style="color:blue">&gt;</span> cung cấp th&ocirc;ng tin&nbsp;v&agrave;&nbsp;định dạng t&agrave;i liệu cho website của bạn.</li>\r\n	<li>Nằm giửa <span style="color:blue">&lt;</span><span style="color:brown">title</span><span style="color:blue">&gt;</span> v&agrave; <span style="color:blue">&lt;</span><span style="color:brown">/title</span><span style="color:blue">&gt;</span> l&agrave; ti&ecirc;u đề cho một trang website của bạn.</li>\r\n	<li>Nằm giửa <span style="color:blue">&lt;</span><span style="color:brown">body</span><span style="color:blue">&gt;</span> v&agrave; <span style="color:blue">&lt;</span><span style="color:brown">/body</span><span style="color:blue">&gt;</span> m&ocirc; tả nội dung trang c&oacute; thể nh&igrave;n thấy trong website của bạn.</li>\r\n	<li>Nằm giửa <span style="color:blue">&lt;</span><span style="color:brown">h1</span><span style="color:blue">&gt;</span> v&agrave; <span style="color:blue">&lt;</span><span style="color:brown">/h1</span><span style="color:blue">&gt;</span> thường l&agrave; ti&ecirc;u đề b&agrave;i viết của bạn.</li>\r\n	<li>Nằm giửa&nbsp;<span style="color:blue">&lt;</span><span style="color:brown">p</span><span style="color:blue">&gt;</span> v&agrave; <span style="color:blue">&lt;</span><span style="color:brown">/p</span><span style="color:blue">&gt;</span> m&ocirc; tả một đoạn văn, trong b&agrave;i viết của bạn.</li>\r\n</ul>\r\n\r\n<p><strong>C&aacute;c thẻ&nbsp;HTML</strong></p>\r\n\r\n<p>C&aacute;c thẻ HTML l&agrave; c&aacute;c từ kh&oacute;a (t&ecirc;n thẻ) được bao quanh bởi c&aacute;c dấu ngoặc nhọn:</p>\r\n\r\n<p><span style="color:blue">&lt;</span><span style="color:brown">t&ecirc;n thẻ</span><span style="color:blue">&gt;</span>&nbsp;nội dung&nbsp;<span style="color:blue">&lt;</span><span style="color:brown">/t&ecirc;n thẻ</span><span style="color:blue">&gt;</span></p>\r\n\r\n<ul>\r\n	<li>C&aacute;c thẻ HTML th&ocirc;ng thường đi theo cặp như <span style="color:blue">&lt;</span><span style="color:brown">p</span><span style="color:blue">&gt;</span> v&agrave; <span style="color:blue">&lt;</span><span style="color:brown">/p</span><span style="color:blue">&gt;</span>.</li>\r\n	<li><span style="color:blue">&lt;</span><span style="color:brown">t&ecirc;n thẻ</span><span style="color:blue">&gt;</span>&nbsp; l&agrave; bắt đầu, c&ograve;n <span style="color:blue">&lt;/</span><span style="color:brown">t&ecirc;n thẻ</span><span style="color:blue">&gt;</span>&nbsp;l&agrave; kết th&uacute;c thẻ.</li>\r\n</ul>\r\n\r\n<p><strong>Cấu tr&uacute;c một trang HTML&nbsp;</strong></p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="width:80%" summary="Cấu trúc chuẩn của một trang HTML">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><span style="color:rgb(0, 0, 0)">&lt;html&gt;</span></p>\r\n\r\n			<table border="0" cellpadding="10" cellspacing="1" style="background:#FFF; margin-left:30px; width:80%" summary="Phần khai báo và định dạng một trang HTML">\r\n				<tbody>\r\n					<tr>\r\n						<td>\r\n						<p><span style="color:rgb(0, 0, 0)">&lt;head&gt;</span></p>\r\n\r\n						<table border="0" cellpadding="1" cellspacing="1" style="margin-left:30px; width:80%" summary="Đây là tiêu đề của một website">\r\n							<tbody>\r\n								<tr>\r\n									<td><span style="color:rgb(0, 0, 0)">&lt;title&gt;Ti&ecirc;u đề trang website&lt;/title&gt;</span></td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n\r\n						<p><span style="color:rgb(0, 0, 0)">&lt;/head&gt;</span></p>\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td>\r\n						<p><span style="color:rgb(0, 0, 0)">&lt;body&gt;</span></p>\r\n\r\n						<table border="0" cellpadding="1" cellspacing="1" style="margin-left:30px; width:80%">\r\n							<tbody>\r\n								<tr>\r\n									<td><span style="color:rgb(0, 0, 0)">&lt;h1&gt;Ti&ecirc;u đề của b&agrave;i viết &lt;/h1&gt;</span></td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n\r\n						<p>&nbsp;</p>\r\n\r\n						<table border="0" cellpadding="1" cellspacing="1" style="margin-left:30px; width:80%">\r\n							<tbody>\r\n								<tr>\r\n									<td><span style="color:rgb(0, 0, 0)">&lt;p&gt;Đoạn văn bản đầu &lt;/p&gt;</span></td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n\r\n						<p>&nbsp;</p>\r\n\r\n						<table border="0" cellpadding="1" cellspacing="1" style="margin-left:30px; width:80%">\r\n							<tbody>\r\n								<tr>\r\n									<td><span style="color:rgb(0, 0, 0)">&lt;p&gt;C&aacute;c đoạn văn bản tiếp theo&lt;/p&gt;</span></td>\r\n								</tr>\r\n							</tbody>\r\n						</table>\r\n\r\n						<p><span style="color:rgb(0, 0, 0)">&lt;/body&gt;</span></p>\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n\r\n			<p><span style="color:rgb(0, 0, 0)">&lt;/html&gt;</span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Lưu &yacute; </strong>l&agrave; chỉ m&igrave;nh nội dung nằm trong&nbsp;thẻ&nbsp;<span style="color:rgb(0, 0, 0)">&lt;body&gt; v&agrave;&nbsp;&lt;/body&gt; l&agrave; mới được hiển thị ra tr&igrave;nh duyệt cho ch&uacute;ng ta xem m&agrave; th&ocirc;i.</span></p>\r\n\r\n<p><span style="color:rgb(0, 0, 0)"><strong>C&ograve;n khai b&aacute;o</strong>&nbsp;</span>&lt;!DOCTYPE&gt;</p>\r\n\r\n<p>C&aacute;c &lt;! DOCTYPE&gt; khai gi&uacute;p tr&igrave;nh duyệt hiển thị một trang website của bạn một c&aacute;ch ch&iacute;nh x&aacute;c về&nbsp;loại (<a href="https://vi.wikipedia.org/wiki/XHTML" target="_blank">XHTML</a>:&nbsp;<em>Extensible HyperText Markup Language&nbsp;</em>hay HTML&nbsp;) v&agrave; phi&ecirc;n bản của n&oacute;.</p>\r\n\r\n<p>V&agrave; bạn khai b&aacute;o như thế n&agrave;o th&igrave; tất cả c&aacute;c khai b&aacute;o đ&oacute; đều được chấp nhận.</p>\r\n\r\n<p><strong>C&aacute;c kiểu khai b&aacute;o gồm</strong>&nbsp;</p>\r\n\r\n<p><strong>HTML5</strong> sẽ khai b&aacute;o l&agrave;&nbsp;</p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="width:80%" summary="Khai báo nội dung HTML5 cho trình duyệt ">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style="color:rgb(0, 0, 0)">&nbsp;&lt;!DOCTYPE html&gt;</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>HTML 4.01</strong></p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="line-height:20.8px; width:100%" summary="Khai báo nội dung HTML5 cho trình duyệt ">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style="color:rgb(0, 0, 0)">&nbsp; &lt;!DOCTYPE HTML PUBLIC &quot;-//W3C//DTD HTML 4.01 Transitional//EN&quot; &quot;http://www.w3.org/TR/html4/loose.dtd&quot;&gt;</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>XHTML 1.0&nbsp;</strong></p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="line-height:20.8px; width:100%" summary="Khai báo nội dung HTML5 cho trình duyệt ">\r\n	<tbody>\r\n		<tr>\r\n			<td><span style="color:rgb(0, 0, 0)">&nbsp; &lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Transitional//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd&quot;&gt;</span></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>V&agrave; cuối c&ugrave;ng c&aacute;c <strong>phi&ecirc;n bản HTML</strong> l&agrave;&nbsp;</p>\r\n\r\n<table border="0" cellpadding="1" cellspacing="1" style="width:80%">\r\n	<thead>\r\n		<tr>\r\n			<th scope="row" style="text-align:left"><strong>Phi&ecirc;n bản&nbsp;</strong></th>\r\n			<th scope="col" style="text-align:left"><strong>Năm&nbsp;</strong></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<th scope="row" style="text-align:left"><strong>HTML</strong></th>\r\n			<td><strong>1991</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<th scope="row" style="text-align:left"><strong>HTML 2.0</strong></th>\r\n			<td><strong>1995</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<th scope="row" style="text-align:left">HTML 3.2&nbsp;</th>\r\n			<td><strong>1997</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<th scope="row" style="text-align:left">HTML 4.0.1</th>\r\n			<td><strong>1999</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<th scope="row" style="text-align:left">XHTML</th>\r\n			<td><strong>2000</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<th scope="row" style="text-align:left"><strong>HTML 5</strong></th>\r\n			<td><strong>2014</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '1', 1456465183, 'HTML5.png'),
(4, 'cai-dat-netbeans-ide-phuc-vu-viet-ma-php', 'Cài đặt NETBEANS IDE  phục vụ viết mã PHP', '<iframe title="Cài đặt NETBEANS IDE  phục vụ viết mã PHP" width="100%" height="480" src="https://www.youtube.com/embed/LbzFgnpJuqc" frameborder="0" allowfullscreen><p>Cài đặt NETBEANS IDE  phục vụ viết mã PHP</p></iframe>', 'Cài đặt công cụ hỗ trợ lập trình website là NETBEANS IDE . Giúp người lập trình ngôn ngữ PHP dễ dàng tạo projects.', '<p style="text-align:justify"><strong>Kh&aacute;i niệm IDE &nbsp;(</strong><a href="https://vi.wikipedia.org/wiki/M%C3%B4i_tr%C6%B0%E1%BB%9Dng_ph%C3%A1t_tri%E1%BB%83n_t%C3%ADch_h%E1%BB%A3p" target="_blank">https://vi.wikipedia.org</a><strong>)</strong></p>\r\n\r\n<p style="text-align:justify">Ch&iacute;nh l&agrave;<strong> M&ocirc;i trường ph&aacute;t triển t&iacute;ch hợp</strong><span style="color:rgb(37, 37, 37)">&nbsp;(</span><a href="https://vi.wikipedia.org/wiki/Ti%E1%BA%BFng_Anh" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" target="_blank" title="Tiếng Anh">tiếng Anh</a><span style="color:rgb(37, 37, 37)">:&nbsp;</span><em>Integrated Development Environment</em><span style="color:rgb(37, 37, 37)">; viết tắt:&nbsp;</span><em>IDE</em><span style="color:rgb(37, 37, 37)">) c&ograve;n được gọi l&agrave; &quot;</span><em>M&ocirc;i trường thiết kế hợp nhất</em><span style="color:rgb(37, 37, 37)">&quot; (tiếng Anh:&nbsp;</span><em>Integrated Design Environment</em><span style="color:rgb(37, 37, 37)">) hay &quot;</span><em>M&ocirc;i trường gỡ lỗi hợp nhất</em><span style="color:rgb(37, 37, 37)">&quot; (tiếng Anh:</span><em>Integrated Debugging Environment</em><span style="color:rgb(37, 37, 37)">) l&agrave; một loại&nbsp;</span><a href="https://vi.wikipedia.org/wiki/Ph%E1%BA%A7n_m%E1%BB%81m" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" target="_blank" title="Phần mềm">phần mềm m&aacute;y t&iacute;nh</a><span style="color:rgb(37, 37, 37)">&nbsp;c&oacute; c&ocirc;ng dụng gi&uacute;p đỡ c&aacute;c&nbsp;</span><a href="https://vi.wikipedia.org/wiki/L%E1%BA%ADp_tr%C3%ACnh_vi%C3%AAn" style="text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.4px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;" target="_blank" title="Lập trình viên">lập tr&igrave;nh vi&ecirc;n</a><span style="color:rgb(37, 37, 37)">&nbsp;trong việc ph&aacute;t triển phần mềm.</span></p>\r\n\r\n<p style="text-align:justify">V&agrave; NETBEANS IDE l&agrave;&nbsp;<span style="color:rgb(37, 37, 37)">m&ocirc;i trường ph&aacute;t triển hợp nhất nhiều ng&ocirc;n ngữ: c&oacute; thể l&agrave;m việc với nhiều ng&ocirc;n ngữ lập tr&igrave;nh như JAVA, C/C++, PHP ...</span></p>\r\n\r\n<p style="text-align:justify">Để c&agrave;i đặt&nbsp;NETBEANS IDE&nbsp;ta cần l&agrave;m c&aacute;c bước sau.</p>\r\n\r\n<p style="text-align:justify"><strong>Bước 1</strong>&nbsp;ch&uacute;ng ta tải NETBEANS về ở&nbsp;<a href="https://netbeans.org/downloads/index.html" target="_blank">đ&acirc;y</a>&nbsp;ta chọn PHP v&agrave; nếu windows bạn l&agrave; 32bit th&igrave; ta chọn Download x86, c&ograve;n windows của bạn l&agrave; 64bit th&igrave; ta chọn bản&nbsp;Download x64.</p>\r\n\r\n<p style="margin-left:40px; text-align:justify"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/netbeans1.jpg" style="width:80%" /></p>\r\n\r\n<p><strong>Bước 2</strong>&nbsp;c&agrave;i đặt JDK ở&nbsp;<a href="http://www.oracle.com/technetwork/java/javase/downloads/jdk7-downloads-1880260.html" target="_blank">đ&acirc;y</a>&nbsp;</p>\r\n\r\n<p style="margin-left:40px">Sau đ&oacute; c&aacute;c bạn k&eacute;o xuống v&agrave; chọn&nbsp;<span style="color:rgb(255, 0, 0)"><strong>Accept License Agreement&nbsp;</strong></span></p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/netbeans2.jpg" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">Chọn bản th&iacute;ch hợp cho Windows của m&igrave;nh&nbsp;</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/netbeans3.jpg" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">Sau đ&oacute; phụ thuộc v&agrave;o windows của bạn l&agrave; 32 bit th&igrave; bạn chọn&nbsp;</p>\r\n\r\n<p style="margin-left:40px"><span style="color:rgb(0, 0, 0)">Windows x86 |&nbsp;138.31 MB &nbsp;|&nbsp;</span>jdk-7u79-windows-i586.exe</p>\r\n\r\n<p style="margin-left:40px">Nếu l&agrave; windows 64 bit th&igrave; bạn chọn&nbsp;</p>\r\n\r\n<p style="margin-left:40px"><span style="color:rgb(0, 0, 0)">Windows x64 |&nbsp;140.06 MB |</span><span style="background-color:rgb(229, 229, 229); color:rgb(0, 0, 0)">&nbsp;</span>jdk-7u79-windows-x64.exe</p>\r\n\r\n<p style="margin-left:40px">click v&agrave; đường link v&agrave; tải về</p>\r\n\r\n<p><strong>Bước 3 tiến h&agrave;nh c&agrave;i đặt&nbsp;</strong></p>\r\n\r\n<p style="margin-left:40px">Trước ti&ecirc;n bạn phải <strong>c&agrave;i đặt JDK </strong>trước nếu kh&ocirc;ng sẽ gặp lỗi.</p>\r\n\r\n<p style="margin-left:40px">chạy file JDK vừa tải về&nbsp;</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/jdk-1.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">Nhấn <strong>Next</strong> để tiếp tục&nbsp;</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/jdk-2.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">Tiếp theo chọn&nbsp;<strong><span style="color:rgb(84, 84, 84)">I&nbsp;</span>accept the terms<span style="color:rgb(84, 84, 84)">&nbsp;in the&nbsp;</span>JUnit license agreement<span style="color:rgb(84, 84, 84)">.</span>. Instal JUnit</strong>&nbsp;rồi nhấn <strong>Next</strong>&nbsp;</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/jdk-3.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">tiếp tục nhấn <strong>Next</strong>&nbsp;</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/jdk-4.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">chọn đường dẫn c&agrave;i đặt, ta để mặc định</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/jdk-5.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">nhấn <strong>Install</strong> để tiến h&agrave;nh c&agrave;i đặt&nbsp;</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/jdk-6.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">ta đợi cho qu&aacute; tr&igrave;nh c&agrave;i đặt diễn ra</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/jdk-7.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">c&agrave;i đặt xong JDK cho NETBEANS.</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/jdk-8.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">qu&aacute; tr&igrave;nh c&agrave;i đặt JDK th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<p style="margin-left:40px">Tiếp theo ta thực hiện <strong>c&agrave;i đặt NETBEANS</strong> ta chạy file c&agrave;i đặt đ&atilde; tải về&nbsp;</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/netbeans-1.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">tiếp theo nhấn <strong>Next</strong></p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/netbeans-2.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">tiếp theo ta chọn<strong> I accept the term in the license agreement</strong> v&agrave; nhấn<strong> Next&nbsp;</strong></p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/netbeans-3.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">chọn thư mục lưu chữ ta để mặc định rồi nhấn <strong>Next</strong>&nbsp;</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/netbeans-4.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">bỏ dấu t&iacute;ch <strong>Check for Updates</strong> v&agrave; nhần <strong>Install</strong>&nbsp;để bắt đầu c&agrave;i đặt&nbsp;</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/netbeans-5.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">ch&uacute;ng ta đợi cho qu&aacute; tr&igrave;nh c&agrave;i đặt diễn ra</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/netbeans-6.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">v&agrave; cuối c&ugrave;ng đ&atilde; c&agrave;i đặt th&agrave;nh c&ocirc;ng&nbsp;</p>\r\n\r\n<p style="margin-left:40px"><img alt="Cài đặt IDE netbeans phục vụ viết mã PHP" src="http://hocwebsite.org/uploads/netbeans-7.PNG" style="width:80%" /></p>\r\n\r\n<p style="margin-left:40px">Vậy l&agrave; ch&uacute;ng ta đ&atilde; kết th&uacute;c chương 1, c&agrave;i đặt c&aacute;c phần mềm cần thiết để học lập tr&igrave;nh website PHP.</p>\r\n\r\n<p style="margin-left:40px">&nbsp;</p>\r\n\r\n<p><strong>B&agrave;i học tiếp theo</strong>&nbsp;<a href="http://hocwebsite.org/khai-niem-va-thuc-hanh-html-css-va-javascript">Kh&aacute;i niệm v&agrave; thực h&agrave;nh HTML, CSS v&agrave; JAVASCRIPT</a></p>\r\n', 1, '1', 1456328236, 'netbeans.jpg'),
(6, 'khai-niem-ngon-ngu-php', 'Khái niệm ngôn ngữ PHP ', '', '<p>​dang xay dung...</p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n', '<p style="text-align:justify">​dang xay dung...</p>\r\n', 1, '1', 1455781800, 'php.png'),
(7, 'cai-dat-localhost-voi-xampp-trong-10-phut', 'Cài đặt Localhost với Xampp trong 10 phút ', '<iframe title="Cài đặt Localhost với Xampp" width="100%" height="480" src="https://www.youtube.com/embed/LUZYxluVsFw" frameborder="0" allowfullscreen><p> Cài đặt Localhost với Xampp </p></iframe>', 'Cài đặt Server localhost với xampp, của khóa học lập trình website bằng ngôn ngữ PHP', '<p style="text-align:justify"><strong>Kh&aacute;i niệm đầu ti&ecirc;n</strong></p>\r\n\r\n<p style="text-align:justify">Trước hết n&oacute;i về ng&ocirc;n ngữ&nbsp;PHP(<span style="color:rgb(37, 37, 37)">Hypertext Preprocessor</span>) l&agrave; một ng&ocirc;n ngữ <strong>th&ocirc;ng dịch</strong>.</p>\r\n\r\n<p style="text-align:justify">Tức l&agrave; thay v&igrave; chuyển đổi to&agrave;n bộ m&atilde; nguồn sang m&atilde; m&aacute;y rồi chứa v&agrave;o ổ đĩa cứng để c&oacute; thể thực thi ở lần chạy sau như ở ng&ocirc;n ngữ bi&ecirc;n dịch, th&igrave; ng&ocirc;n ngữ th&ocirc;ng dịch th&igrave; cứ khi n&agrave;o chạy chương tr&igrave;nh l&uacute;c đ&oacute; tr&igrave;nh th&ocirc;ng dịch sẽ hoạt động chuyển sang m&atilde; m&aacute;y v&agrave; đưa ra kết quả ngay. C&ocirc;ng việc n&agrave;y diễn ra tương tự ở lần chạy tiếp theo.</p>\r\n\r\n<p style="text-align:justify">Về ưu điểm th&igrave; người lập tr&igrave;nh vẫn c&oacute; thể chạy chương tr&igrave;nh khi vẫn c&oacute; lỗi c&uacute; ph&aacute;p. Lỗi đến đ&acirc;u th&igrave; sẽ c&oacute; th&ocirc;ng b&aacute;o đến đ&oacute; v&agrave; bị dừng lại.&nbsp;</p>\r\n\r\n<p style="text-align:justify">C&ograve;n về nhược điểm th&igrave; chương tr&igrave;nh chạy bằng tr&igrave;nh th&ocirc;ng dịch kh&ocirc;ng chạy nhanh bởi v&igrave; mỗi lần chạy đều mất th&ecirc;m một qu&aacute; tr&igrave;nh dịch sang m&atilde; m&aacute;y v&agrave; thực th&igrave;.&nbsp;</p>\r\n\r\n<p style="text-align:justify">Cụ thể với ng&ocirc;n ngữ PHP mỗi lần gọi website th&igrave; tr&igrave;nh th&ocirc;ng dịch mới bắt đầu dịch sang m&atilde; m&aacute;y v&agrave; đưa kết qủa về cho tr&igrave;nh duyệt người d&ugrave;ng. V&agrave; ta gọi n&oacute; l&agrave; <strong>WebServer</strong>, nếu như Webserver c&agrave;i đặt ở m&aacute;y c&aacute; nh&acirc;n của bạn th&igrave; n&oacute; gọi l&agrave; Localhost. Vậy <strong>Localhost</strong> ch&iacute;nh l&agrave; một Webserver nằm ở m&aacute;y t&iacute;nh c&aacute; nh&acirc;n của bạn v&agrave; đ&oacute;ng vai tr&ograve; như một tr&igrave;nh th&ocirc;ng dịch n&oacute; chứa c&aacute;c ứng dụng APACHE, MYSQL, PHP, PHPMYADMIN, ...</p>\r\n\r\n<p style="text-align:justify">Phần mềm tạo Localhost th&ocirc;ng dụng tr&ecirc;n Windows hiện nay l&agrave; <strong>XAMPP</strong>, WAMP hay APPSERVER.</p>\r\n\r\n<p style="text-align:justify">Tuy nhi&ecirc;n m&igrave;nh khuyến kh&iacute;ch c&aacute;c bạn n&ecirc;n d&ugrave;ng XAMPP v&igrave; phần mềm n&agrave;y tương đối đơn giản để sử dụng.</p>\r\n\r\n<p style="text-align:justify"><strong>C&agrave;i đặt XAMPP</strong></p>\r\n\r\n<ol>\r\n	<li style="text-align:justify">Đầu ti&ecirc;n bạn cần tải XAMPP về m&aacute;y ở <a href="https://www.apachefriends.org/download.html" target="_blank">đ&acirc;y</a>&nbsp;&nbsp;</li>\r\n	<li style="text-align:justify">Sau đ&oacute; bạn c&agrave;i đặt b&igrave;nh thường.</li>\r\n	<li style="text-align:justify">V&agrave; <strong>Start</strong> Apache với Mysql.</li>\r\n	<li style="text-align:justify"><span style="color:rgb(0, 0, 0)">​Sau đ&oacute; bạn thử truy cập v&agrave;o website <a href="http://localhost">http://localhost&nbsp;</a></span></li>\r\n</ol>\r\n\r\n<p style="text-align:justify"><strong>Nếu gặp lỗi&nbsp;</strong></p>\r\n\r\n<p style="text-align:justify">Th&igrave; lỗi do xung đột cổng bạn c&oacute; thể đổi cổng 80 th&agrave;nh cổng kh&aacute;c, v&iacute; dụ th&agrave;nh 8686. V&agrave; đổi cổng 443 th&agrave;nh 4444 chẳng hạn.</p>\r\n\r\n<p style="text-align:justify">L&uacute;c n&agrave;y bạn cần truy cập theo đường dẫn <a href="http://http://localhost:8686">http://localhost:8686</a>&nbsp;l&agrave; được.</p>\r\n\r\n<p style="text-align:justify"><strong>B&agrave;i học tiếp theo&nbsp;</strong><a href="http://hocwebsite.org/cai-dat-ide-netbeans-phuc-vu-viet-ma-php">C&agrave;i đặt NETBEANS IDE&nbsp;phục vụ viết m&atilde; PHP</a></p>\r\n', 1, '1', 1456294608, 'xampp.png'),
(8, 'quan-tri-server-linux', 'Quản trị SERVER LINUX', '', '<p>Đang x&acirc;y dựng ...</p>\r\n', '<p>Đang x&acirc;y dựng ...</p>\r\n', 1, '1', 1455771256, 'server-linux.jpg'),
(9, 'quan-ly-sub-version-voi-git', 'Quản lý SUB VERSION với GIT ', '', '<p>Đang x&acirc;y dựng ...</p>\r\n', '<p>Đang x&acirc;y dựng ...</p>\r\n', 1, '1', 1455771354, 'github.png'),
(10, 'sao-luu-va-phuc-hoi-du-lieu-bao-tri-server', 'Sao lưu và phục hồi dữ liệu bảo trì SERVER ', '', '<p>Đang x&acirc;y dựng ...</p>\r\n', '<p>Đang x&acirc;y dựng ...</p>\r\n', 1, '1', 1455771523, 'saoluudulieu.gif'),
(11, 'kiem-soat-truy-cap-va-chong-tan-cong-ddos', 'Kiểm soát truy cập  và chống tấn công DDOS ', '', '<p>Đang x&acirc;y dựng ...</p>', '<p>Đang x&acirc;y dựng ...</p>\r\n', 1, '1', 1456327387, 'ddos.jpg'),
(12, 'lap-trinh-huong-doi-tuong-oop-cac-khai-niem-interface-va-abstract', 'Lập trình hướng đối tượng (OOP) các khái niệm INTERFACE và ABSTRACT', '', '<p>Đang x&acirc;y dựng ...</p>', '<p>Đang x&acirc;y dựng ...</p>\r\n', 1, '2', 1455860354, 'OOP_Objects.png'),
(13, 'seo-toi-uu-hoa-cong-cu-tim-kiem', 'SEO tối ưu hóa công cụ tìm kiếm ', 'đang xây dựng ', 'Kỹ thuật tối ưu hóa SEO, các cách SEO, các công cụ phục vụ cho SEO', '<p>Đang x&acirc;y dựng&nbsp;</p>\r\n', 1, '1', 1456215842, 'SEO.png');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `create_at` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dichvu`
--

CREATE TABLE `dichvu` (
  `dichvu_id` int(11) NOT NULL,
  `dichvu_tieude` text COLLATE utf8_unicode_ci NOT NULL,
  `dichvu_anh` text COLLATE utf8_unicode_ci NOT NULL,
  `dichvu_noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `dichvu_ngaylap` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dichvu`
--

INSERT INTO `dichvu` (`dichvu_id`, `dichvu_tieude`, `dichvu_anh`, `dichvu_noidung`, `dichvu_ngaylap`) VALUES
(1, 'sadsad', '#', 'ádasdsadasdasd', '2016-05-20 10:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `giang_vien`
--

CREATE TABLE `giang_vien` (
  `id` int(11) NOT NULL,
  `giang_vien_id` int(11) NOT NULL,
  `ten` text COLLATE utf8_vietnamese_ci NOT NULL,
  `tieu_de` text COLLATE utf8_vietnamese_ci NOT NULL,
  `anh_minh_hoa` text COLLATE utf8_vietnamese_ci,
  `gioi_thieu` text COLLATE utf8_vietnamese_ci NOT NULL,
  `phan_1` text COLLATE utf8_vietnamese_ci NOT NULL,
  `noi_dung_1` text COLLATE utf8_vietnamese_ci NOT NULL,
  `phan_2` text COLLATE utf8_vietnamese_ci,
  `noi_dung_2` text COLLATE utf8_vietnamese_ci,
  `phan_3` text COLLATE utf8_vietnamese_ci,
  `noi_dung_3` text COLLATE utf8_vietnamese_ci,
  `ngay_lap` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `giang_vien`
--

INSERT INTO `giang_vien` (`id`, `giang_vien_id`, `ten`, `tieu_de`, `anh_minh_hoa`, `gioi_thieu`, `phan_1`, `noi_dung_1`, `phan_2`, `noi_dung_2`, `phan_3`, `noi_dung_3`, `ngay_lap`) VALUES
(2, 2, 'Trần Ngọc Thăng', 'Trần Ngọc Thăng-người thầy luôn hết lòng vì học trò', 'images/img/thaythang2.jpg', '.', '.', '.', '', '', '', '', '2017-04-19 02:06:23'),
(3, 3, 'Vũ Thành Nam', 'Vũ Thành Nam-Giảng viên mà mói sinh viên đều kính mến', 'images/img/thaythanhnam.jpg', '.', '.', '.', '.', '', '', '', '2017-04-19 02:09:02'),
(4, 4, 'Lê Quang Thủy', 'Lê Quang Thủy-Người Viện trưởng luôn hết lòng với học sinh', 'images/img/thaythuy.jpg', '.', '.', '.', '.', '', '', '', '2017-04-19 02:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `giang_vien_thong_tin`
--

CREATE TABLE `giang_vien_thong_tin` (
  `id` int(11) NOT NULL,
  `ten` text NOT NULL,
  `anh_minh_hoa` text,
  `mon_hoc` text NOT NULL,
  `huong_nghien_cuu` text NOT NULL,
  `ngay_lap` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giang_vien_thong_tin`
--

INSERT INTO `giang_vien_thong_tin` (`id`, `ten`, `anh_minh_hoa`, `mon_hoc`, `huong_nghien_cuu`, `ngay_lap`) VALUES
(1, 'Lê Chí Ngọc', 'images/img/thayngoc3.jpg', '<ol>\r\n<li>Đại số tuyến tính</li>\r\n<li>Giải tích 1</li>\r\n<li>Giải tích 2</li>\r\n<li>Giải tích 3</li>\r\n<li>Phương trình vi phân-chuỗi</li>\r\n<li>Xác suất thống kê</li>\r\n<li>Toán 1 (Chương trình Kỹ sư Chất lượng cao)</li>\r\n<li>Math&nbsp;1 (Chương trình Việt Nhật - ICT)</li>\r\n<li>Linear Algebra (Chương trình tiên&nbsp;tiến Đại học Bách Khoa Hà Nội và Chương trình tiên tiến Đại học Kỹ thuật Công nghiệp, Đại học Thái Nguyên)</li>\r\n<li>Math II (Multivariate Calculus - Chương trình tiên tiến Đại học Bách Khoa Hà Nội và Chương trình tiên tiến Đại học Kỹ thuật Công nghiệp, Đại học Thái Nguyên)</li>\r\n<li>Math III (Series and ODE - Chương trình tiên tiến Đại học Kỹ thuật Công nghiệp, Đại học Thái Nguyên)</li>\r\n<li>Math 31A (Diferential and Integral Calculus, Đại học Tổng hợp California, Los Angeles)</li>\r\n<li>Math 31B (Integration and Infinite Series, Đại học Tổng hợp California, Los Angles)</li>\r\n<li>Math 32A (Calculus of Several Variables, Đại học Tổng hợp California, Los Angeles)</li>\r\n<li>Math 32B&nbsp;(Calculus of Several Variables, Đại học Tổng hợp California, Los Angeles)</li>\r\n<li>Toán rời rạc</li>\r\n<li>Logic Thuật toán</li>\r\n<li>Tối ưu</li>\r\n<li>Tối ưu tổ hợp</li>\r\n<li>Cơ sở toán học của hệ mờ</li>\r\n<li>Phương pháp tính</li>\r\n<li>Hệ Hỗ trợ quyết định</li>\r\n<li>Khai phá dữ liệu</li>\r\n<li>Kho dữ liệu và kinh doanh thông minh</li>\r\n<li>Dữ liệu lớn</li>\r\n<li>Cấu trúc dữ liệu, giải thuật nâng cao và tính toán song song</li>\r\n<li>SQL</li>\r\n<li>Đồ họa máy tính</li>\r\n<li>Visual Basic</li>\r\n<li>Ngôn ngữ lập trình C#</li>\r\n<li>Phân tích và thiết kế hệ thống</li>\r\n</ol>', '<ol>\r\n<li>Logic Toán (Hệ chứng minh, tính quyết định được và độ phức tạp tính toán)</li>\r\n<li>Tối ưu tổ hợp (Độ phức tạp tính toán, Matroid, Các phương pháp xấp xỉ, Metaheuristics,...)</li>\r\n<li>Lý thuyết đồ thị (Tập độc lập, tập thống trị, các bài toán tối ưu trên đồ thị, tô màu đồ thị, đồ thị cảm sinh, ...)</li>\r\n<li>Lý thuyết mờ (Toán tử mờ, Tập mờ bức tranh, Đại số trên tập mờ, ...)</li>\r\n<li>Khoa học dữ liệu (Khai phá dữ liệu, ứng dụng công nghệ mờ trong khai phá dữ liệu, Dữ liệu lớn, kho dữ liệu, ...)</li>\r\n<li>Tính toán thông minh (Máy học, Metaheuristic, Mạng Neural, Nhận dạng, ...)</li>\r\n<li>An toàn và bảo mật máy tính (Hàm một chiều, giải thuật mã hóa xác suất, chữ ký số và xác thực thông tin, ...)</li>\r\n</ol>', '2017-04-18 03:21:52'),
(2, 'Trần Ngọc Thăng', 'images/img/thaythang2.jpg', '<ol>\r\n<li> Giải tích 1</li>\r\n<li> Giải tích 2</li>\r\n<li> Xác suất thống kê</li>\r\n<li> Cơ sở dữ liệu</li>\r\n<li> Hệ quản trị Cơ sở dữ liệu</li>\r\n<li> Cơ sở dữ liệu nâng cao</li>\r\n<li> Lập trình hướng đối tượng</li>\r\n<li> Đồ án - Thực tập</li>\r\n</ol>\r\n', '<ol>\r\n<li><strong>1. Tối ưu và tính toán khoa học/ Optimization and Scientific Computing</strong></li>\r\n<li>- Tối ưu đa mục tiêu (Multi-objective Ootimization)</li>\r\n<li>- Tối ưu toàn cục (Global Optimization)</li>\r\n<li>- Tối ưu tổ hợp (Combinatorial Optimization)</li>\r\n<li>- Bài toán cân bằng (Equilibrium problem)</li>\r\n<li><strong>2. Khoa học dữ liệu/ Data Science</strong></li>\r\n<li>- Khai lihá dữ liệu (Data Mining)</li>\r\n<li>- lihân tích dữ liệu (Data Analysis)</li>\r\n<li>- Máy tìm kiếm (Search Engine)</li>\r\n<li>- Dữ liệu lớn (Big Data)</li>\r\n</ol>', '2018-05-05 14:33:18'),
(3, 'Vũ Thành Nam', 'images/img/thaythanhnam.jpg', '<ol>\r\n<li>Giải tích 1</li>\r\n<li>Hệ điều hành UNIX và mã nguồn mở</li>\r\n<li>Hệ thống và mạng máy tính</li>\r\n<li>An toàn máy tính</li>\r\n<li>Kỹ thuật lập trình</li>\r\n<li>Nguyên lý các ngôn ngữ lập trình</li>\r\n</ol>', '<ol>\r\n<li>Mã hóa bảo mật</li>\r\n<li>Lý thuyết mã</li>\r\n<li>CNTT</li>\r\n</ol>', '2018-05-05 14:33:35'),
(4, 'Lê Quang Thủy', 'images/img/thaythuy.jpg', '<ol>\r\n<li>Tối ưu đa mục tiêu và các vấn đề liên quan</li>\r\n<li>Bài toán cân bằng, bài toán điểm bất động: Lý thuyết, thuật toán và ứng dụng</li>\r\n<li>Lý thuyết điều khiển tối ưu</li>\r\n</ol>', '<ol>\r\n<li>Đại số tuyến tính</li>\r\n<li>Đại số ứng dụng</li>\r\n<li>Đại số đại cương</li>\r\n<li>Giải tích 2</li>\r\n<li>Giải tích 3</li>\r\n<li>Toán kinh tế</li>\r\n<li>Mô hình Toán kinh tế</li>\r\n<li>Lý thuyết tối ưu</li>\r\n</ol>', '2018-05-05 14:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `khoahoccongnghe`
--

CREATE TABLE `khoahoccongnghe` (
  `baiviet_id` int(11) NOT NULL,
  `baiviet_tieude` text COLLATE utf8_unicode_ci NOT NULL,
  `baiviet_anh` text COLLATE utf8_unicode_ci NOT NULL,
  `baiviet_gioithieu` text COLLATE utf8_unicode_ci NOT NULL,
  `baiviet_noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `baiviet_ngaylap` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1452717907),
('m130524_201442_init', 1452717911);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_06_014950_change-me', 1);

-- --------------------------------------------------------

--
-- Table structure for table `MyGuests`
--

CREATE TABLE `MyGuests` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sinh_vien`
--

CREATE TABLE `sinh_vien` (
  `id` int(11) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `tieu_de` text NOT NULL,
  `anh_minh_hoa` text,
  `gioi_thieu` text NOT NULL,
  `phan_1` text NOT NULL,
  `noi_dung_1` text NOT NULL,
  `phan_2` text,
  `noi_dung_2` text,
  `phan_3` text,
  `noi_dung_3` text,
  `ngay_lap` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sinh_vien`
--

INSERT INTO `sinh_vien` (`id`, `ten`, `tieu_de`, `anh_minh_hoa`, `gioi_thieu`, `phan_1`, `noi_dung_1`, `phan_2`, `noi_dung_2`, `phan_3`, `noi_dung_3`, `ngay_lap`) VALUES
(1, 'Nguyễn Thành Đức', 'Nguyễn Thành Đức-cậu sinh viên có tâm hồn Cách mạng', 'images/img/thanhduc1.jpg', 'Là một sinh viên k60 Viện Toán Ứng Dụng và Tin Học, Đại học Bách khoa Hà Nội, Nguyễn Thành Đức luôn cố gắng nỗ lực hết mình trong học tập,luôn cố gắng để noi theo tấm gương đạo đức của chủ tịnh Hồ Chí MInh,luôn cố gắng để trở thành cháu ngoan Bác Hồ. Hãy cùng <span id="tenweb">I LOVE SAMI</span> lắng nghe về câu truyện của bạn nhé!', 'Chàng sinh viên xuất xắc k60 Viện Toán Ứng Dụng và Tin Học,Đại học Bách khoa Hà Nội', '<p id="noidungbaiviet">Xuất thân từ mảnh đát Gia Lâm,vào năm 18 tuổi,Nguyễn Thành Đức cũng như bảo người cũng trang lứa rời xa gia đình,qua sông theo đuổi đam mệ, học tập tại Trường Đại Học Bách khoa Hà Nội.Rời xa ra đình đi học là điểu mà mọi sinh viên đều phải làm,nỗi nhớ gia đình luôn da diết trong lòng mỗi sinh viên,nhưng với cậu cảm xúc còn đặc biệt hơn cả. Cậu từng tâm sự với tôi rằng :"Các cụ từ xưa đã nói,<span id=\'indam\'>con gái qua sông rồi thì sẽ là con người khác</span>, cậu cũng vậy,qua sông xa cách gia đình biết bao giờ mới được gặp lại,Cậu học tập tại mỗi trường đại học rất tôi,nhưng nỗi nhớ ra đình luôn da diết trong lòng cậu"</p>\r\n<p id="noidungbaiviet">Vượt qua nỗi nhớ gia đình,cậu luôn cố gắng nỗ lực học tập trong ngôi trường mới,kết quả học tập của cậu luôn đứng trong số những người giỏi của lớp.Tùy nhiên,trong môi trường đại học,tại  Viện Toán Ứng Dụng và Tin Học,có lẽ kết quả học tập không phải là tất cả,ngời thời gian học tập,cậu luôn đam mê nghiên cứu các kiến thức về tin học,tuy chỉ mới năm 2 nhưng cậu đã gần như thành thục với <span id=\'indam\'> lập trình web </span> bằng <span id=\'indam\'> javascript </span> và lập trình <span id=\'indam\'>Android</span> băng ngôn ngữ <span id=\'indam\'>JAVA</span>.Cậu có thể tự học lập trình như cậy một phần lớp cũng là do các giảng viên kình mến của việc hướng dẫn,đặc biệt là thầy <a href=#>Lê Chí Ngọc</a> giúp đỡ. Tuy điểm các môn triết và tư tương Hồ Chí MInh của cậu không phải A nhưng cậu nắm luôn nắm rõ từng nguyên lý,lập luận mà Nin-hói đã chứng minh và luôn ứng dụng chúng trong cuộc sống thường ngày.Cậu luôn tự nhủ rằng những điều <span id=\'indam\'>Triết học</span> đã dạy sẽ giúp cậu cống hiến cho xã hỗi,đật nước,<span id=\'indam\'> giúp đất nước ngày một phồn vinh </span></p>', 'Chàng sinh viên có tình yêu mãnh liệt với Bác,với Đảng Cộng Sản Việt Nam', '<p id="noidungbaiviet">Nguyễn thành đức là một chàng sinh viên vô cùng yêu đất nước Việt Nam,cậu yêu gia đình mình mình,yêu mảnh đất Gia Lâm nơi mà cậu đã lớn lên,và hơn thế nữa là tính yêu với <span id=\'indam\'>Đảng</span>,với <span id=\'indam\'>Bác</span> luôn rực cháy trong lòng cậu,cậu đã từng nói: "Nếu một ngày Việt Nam xảy ra chiến tranh,chắc chắn cận sẽ lại noi theo gương Bác,đưa <span id=\'indam\'>cả gia đình gia nước ngoài và chờ ngày cứu nước</span> "</p>\r\n<p id="noidungbaiviet">Cậu luôn tự hào về đất nước Việt Nam,cậu tin rằng <span id=\'indam\'>Cánh Mạng Công Nghiệp 4.0</span> sẽ thành công rực rở tại Việt Nam ,đưa đất nước vươn lên số Một trên thế giới.Cậu luôn tự hào rằng: "Theo Mác-Xù và Nin-hói,thời kì tư bản sẽ sụp đổ và tiến lên xã hội chủ nghĩa,nhưng Việt Nam đã bỏ qua tư bản mà Tiến thẳng lên Xã hội chủ nghĩa,để rồi sánh ngang với ác cường quốc trên thế giới như Úc, Hoa KÌ ...,vậy nên bỏ qua  <span id=\'indam\'>Cánh Mạng Công Nghiệp 3.0</span> để tiến thẳng lên  <span id=\'indam\'>Cánh Mạng Công Nghiệp 4.0</span> sẽ giúp Việt Nam đạt được sự đột phá,vương lên số Một thế giới"</p>\r\n<p id="noidungbaiviet">Đối với cậu,<span id=\'indam\'>Bác Hồ</span> chính là tấm gương lớn nhất mà cậu noi theo và học tập,<span id=\'indam\'>Bác Hồ</span> đã dạy chúng ta phải biết <span id=\'indam\'>"Cần,Kiệm,Liêm,Chính"</span>.Cậu dù đã là sinh viên,là giai cập <span id=\'indam\'> tri thức tiểu tư sản THÀNH THỊ</span>,nhưng vẫn luôn cần cù tiết kiệm,vẫn là lối sống vô cùng giản dị khiến bạn bè phải thán phục.Cậu chính là tấm gương sáng cho các bạn noi theo.</p>', 'Ước mơ cống hiện,ước mơ tạo ra phần mềm ...', '.<p id="noidungbaiviet">Cậu luôn muốn cấu hiện cho xã hội Việt Nam,cấu cố gằng học tập,nỗ lực hết mình cũng là để trở thành một <span id=\'indam\'>VIên Chức Mẫn Cán </span>của nhà nước,có thể cống hiến cho xã hội. Xã hội Việt Nam tuy đã văn minh bậc nhất trên thế giới,nhưng các tệ nạn xã hội vẫn còn tồn tại, đặc biết hơn cả đó là nạn <span id=\'indam\'>Ấu Dâm</span>.Cậu không thể tin rằng trong xa hội văn minh này có thể còn có những kẻ bệnh hoạn như vậy,thâm chí có những kẻ ấu dâm lại là bạn cùng trang lức với cậu,tuy là sinh viên Bách Khoa ,khoa CNTT,khoa Toán Ứng Dụng và tin học nhưng lại là nhưng kẻ <span id=\'indam\'> Ấu Dâm bệnh hoạn</span>.Tệ hơn nữa là những vụ <span id=\'indam\'>Ấu Dâm</span> lại chiếu đi chứng cứ để có thể khởi tố,những kẻ bệnh hoạn vẫn còn nhởn nhơ ngoài xã hội</p>\r\n<p id="noidungbaiviet">Cậu ước ao có thể chệ tạp một trước máy,có thể nhận cảm xúc của con người qua giọng nói,từ đó có thể nhận biết được giọng nói của các nạn nhân bị xâm hại, qua đó những kẻ <span id=\'indam\'>hiếp dâm,ấu dâm</span> sẽ bị trừng trị thích đáng. Tuy gặp nhiều khó khắn nhưng cậu tin rằng với <span id=\'indam\'>Cánh Mạng Công Nghiệp 4.0</span> tại Việt Nam,ước mơ của cậu sẽ trở thành hiện thực,rồi một ngày không xa,đất nước Việt Nam sẽ không con nạn <span id=\'indam\'>Ấu dâm nữa.</p>', '2018-05-05 13:50:54'),
(2, 'Ngô Thành Chung', 'Ngô Thành Chung-câu sinh viên toàn diện,niềm tự hòa của k60!', 'images/img/chung1.jpg', '.', '.', '.', '', '', '', '', '2017-04-19 02:12:55'),
(4, 'Nguyễn Quang Thái', 'Nguyễn Quang Thái-Cậu sinh viên với niềm đam mê toán học bất tận', 'images/img/thai1.jpg', '.', '.', '.', '', '', '', '', '2017-04-19 02:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `id` int(11) NOT NULL,
  `tieu_de` text NOT NULL,
  `anh_minh_hoa` text,
  `gioi_thieu` text NOT NULL,
  `phan_1` text,
  `noi_dung_1` text,
  `phan_2` text,
  `noi_dung_2` text,
  `phan_3` text,
  `noi_dung_3` text,
  `ngay_lap` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `phone_number`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '', 'admin', 'K5SFofvrwUZ9kzYkcdX6WXQk9ry9p_WQ', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'thuccoi@gmail.com', '', 10, 1452718506, 1452718506),
(2, 'Nguyễn Thế', 'Thức', 'thuccoi', 'NJWSLjm0GIrnr8Z_KNPOMtN7zza3bvgD', '$2y$13$m0zGbDn9M6SsWvAtM6gDxeiMMHQIkJn0oFs/DsfmdE49njCn9vc/C', 'dQrgRC_FM02pvsL7w6jItVUx59zES19c_1456394509', 'thucfami@gmail.com', '0979846286', 10, 1452719756, 1456394854),
(6, 'Lê', 'Tuấn', 'letuan195', 'ZNlhIchLCm87VXGI_zYzNnNpkBogsWzH', '$2y$13$eiNsnv3jM0Hm95VooRoMr.UpqP3sHmknpvyg.es34oHqF1ubofeM.', NULL, 'kid1412bk@gmail.com', '01689906590', 10, 1455874034, 1455874034),
(7, 'Nguyễn ', 'Long', 'vanlong96tg', 'eJH9mNaMJ2GCpKGZQo9o9TZd_ZTPTzxl', '$2y$13$q8ShJzj6I0TSmAJfkXZtR.1YXKi9bZz/lzyslOelpD5s.FvrgZl.y', NULL, 'vanlong96tg@gmail.com', '0986626975', 10, 1455874048, 1455874048),
(8, 'Văn', 'Đạt', 'bom chi cac', 'FLoC3WKHQ3dHgYvZBvSpGDNrOzKPobqU', '$2y$13$1OAu2P8ndQc3q.ajQXEoGuVOTaFsZC9HZBEXlzxlpZ73IKavVA5Rq', NULL, 'datnguyen.hust@mail.com', '01648518339', 10, 1455874089, 1455874089),
(9, 'Vũ', 'Bình', 'thanhniencung', 'B8XrOnIBc4YU9Ed57BCPSL9e7WNBgQiM', '$2y$13$0eEHSE1mY3fiGXIz2esQB.7UglBfxCLFz5Tlxf6ETnAUyknz9H1KK', NULL, 'ducbinhbka@gmail.com', '0987452739', 10, 1455874169, 1455874169),
(10, 'Phạm Ngọc', 'Phong', 'phamngocphong', 'M2wVXraGtMRfb7aBSB3-E5C37Ic-OjY4', '$2y$13$m.cmmWO1d6eAdjXExC/eueqRXRRW92rT0Zc1o45gmC4omgUTZpMVq', NULL, 'phamngocphonghd@gmail.com', '01696165827', 10, 1455874187, 1455874187),
(11, 'đào', 'đức', 'hai_nao', '_S2nLeZlscmRKt4R5mfBc0OYQrvPaKOR', '$2y$13$y/cd9TNcA8nVIjjEuRYuIOwctQcVCzdhSO5k/9lQsOWaz3RPly/Rm', NULL, 'daoduyduc94@gmail.com', '01675185569', 10, 1455875244, 1455875244),
(12, 'Nguyễn Trọng', 'Vinh', 'Vinhnt', 'U1314Rym8DFx-CCdLbQ_V0ENawuybj6e', '$2y$13$Mn6pxjJN038XA0xg1xddLeDv82RsqCQH.TIxhLVA/ub/YTTjGsr4.', NULL, 'nguyenvinh.hust@gmail.com', '0971425768', 10, 1455875508, 1455875508),
(13, 'Nguyễn', 'Tuấn Anh', 'tuananh', 'cN6a_1X_-V0nBfUnrARnQe7dFZYStm91', '$2y$13$GsgWHYjQc5Bk6weuB9JE4OX9OuUKQnbMMVG28ZvRNdXkRkpy/MI5y', NULL, 'tuananhsubasa@gmail.com', '0973463606', 10, 1455875518, 1455875518),
(14, 'Nguyễn Văn', 'Bính', 'vanbinh_sf', '0OTphvXN0BNAyGBwKwHPjIkYY7hSUxuc', '$2y$13$jFDYj/PJFUm4L3Lr0a/vJuKGtKAUhf5lKDicZR9nzy2pdjxP88YAS', NULL, 'vanbinh.katt@gmail.com', '0972415704', 10, 1455875772, 1455875772),
(15, 'Vũ', 'Thành Đạt', 'thanhdat', 'oBqI_agQEapgUhDXCMgWDMJuqMBdv23o', '$2y$13$hpVwYCRgiz5DLWor2l63VewsGHR1iXQFkDogDQ2j00s9WlOOGuvqq', NULL, 'thanhdatvu888@gmail.com', '01642084969', 10, 1455875873, 1455875873),
(16, 'Nguyễn', 'Quang Thái', 'Thái97', 'LSCk7D8kOwj6kRQ5dmac_vwuiuJEmOzt', '$2y$13$bOY92rbm3cDv2ZkaMCgATuWAXCnqlAjmmF9s/FNGmR81e/5ywrZrS', 'kEiyzdhH8QOfOUExaBxsmNGdAmnL55sz_1456115035', 'nqt231097@gmail.com', '01644310146', 10, 1455877959, 1456115035),
(17, 'Phạm Ngọc ', 'Quang Anh', 'Motmietmai', 'QylYIFXwW50MpeGn7L2p3ZkRf8RpQLjJ', '$2y$13$.4/lZc6fspPuodEXPaP2WeiddU2HrVIk6e2HxYDhmA8wh1QRHNEVa', NULL, 'Motmietmai@gmail.com', '0914042280 ', 10, 1455878114, 1455878114),
(18, 'Lê', 'Quang Huy', 'lqhuy16', 'tP8ZDh0rccg1Pbcl8ztxbWM5-CuyqAXJ', '$2y$13$aVKG.7.wdDrPV4wZ39dH4.aVBjf756XQ5hLrJ/98I7QicTy5nAPPq', NULL, 'lqhuy16@gmail.com', '01687489216', 10, 1455878397, 1455878397),
(19, 'Vũ Sơn', 'Tùng', 'Vusontung2412', 'p7k1FumXIM2i-SY66zHGfMFGxv3avD0Z', '$2y$13$QqwxKCXZvNboYbT/P7gkSeioaYE1TQFX54IuMjkrJQfNvnb8mhw7i', NULL, 'vusontung2412@gmail.com', '0916889579', 10, 1455878633, 1455878654),
(20, 'Lê', 'Xuân Dũng', 'xuandung93', 'O1fSRzaTDscXDD7WwU4aW75WUYEc55wb', '$2y$13$f7sdP0H.ZJnPHhGlyy74PeBbnTV9Cn5rrT6Ou1sPXq77UlL3K5KlW', NULL, 'thitganuong58@gmail.com', '01269161006', 10, 1455879144, 1455879144),
(21, 'Cao', 'Tuấn Dũng', 'dungct', 'FXna6PNc2jcaM6ryPvyetbZvmGXneQLZ', '$2y$13$9uIsv0syxZzndjVLhDjMzOFrwuUZmhnN4xdTHTWyxZeMZVYYBxvr.', NULL, 'chicharito.cao@gmail.com', '01634952359', 10, 1455880675, 1455880675),
(22, 'Per', 'Heart', 'perheart', 'IWSJw-wvCLvBrEAYsdneaN0dIDFKB5Z-', '$2y$13$aoYTV92JYu9ITTCaqamPWO1YUts/.CIuixK9tem7bmpMdKgI.e2fy', NULL, 'angelsnow275@gmail.com', '01649803983', 10, 1455882735, 1455882735),
(23, 'Bùi Huy', 'Tuấn', 'huytuan44', 'kLYq65ZrYcrieChJVG1Qyo7oaCewvVQi', '$2y$13$OybeNvXZ2GvS10mMVIXNieIW.l4tK85IO6aAy2/jSjZ6Ykmc2yPvO', NULL, 'tuanbh2012bktt@gmail.com', '01652460401', 10, 1455883919, 1455883919),
(24, 'Đặng Văn', 'Tòng', 'tongdv', 'sNzUalyHSZY_UbWjxfF-QIHVFvev0qof', '$2y$13$.zvMXj4s7QUo9wLeZEzCNOhaNPu0Uq7nk/TQFA.2OvXfx4yKzVJlW', NULL, 'hongminhbka@gmail.com', '0974876295', 10, 1455884585, 1455884585),
(25, 'Đặng', 'Quang', 'windlight9x', 'ocydukw7pcc4TJsz6DqBbcHSwzQCqvXT', '$2y$13$hIfg9CM1bPw8CfXN62wnnOeo5gneV5wLrc4VtOUhw0QANPAP746Nm', NULL, 'windlight9x@gmail.com', '01288826896', 10, 1455884595, 1455884595),
(26, 'trần', 'huy', 'tranhuy', 'Y8FRAEoF_UqMpUbt4lee35oYam8UAvOH', '$2y$13$FR1OvdH8M5wPVMNcVi/8mOj4v6Hc.3ydqhSShvvzrrnsFyK9.bsRW', NULL, 'huytv260692@gmail.com', '01675687923', 10, 1455885925, 1455885925),
(28, 'Nguyễn ', 'Mạnh Đại', 'Chevanhoan', 'zqkFv8Bvx0peRZRt-vFnLwWN36HewjnB', '$2y$13$0JM9VQ1ixQZTcT23fAFx4.xihFn8owyHH5HaKMkcWGK1GncaBFhw2', NULL, 'nmdai.cvh34@gmail.com', '01678812425', 10, 1455887575, 1455887575),
(29, 'Nguyễn', 'Duy Khánh', '123456', 'cAxaIQCcvVQjz91JLKXq8mJuRaDJ8L_D', '$2y$13$1VDGqBcwFNUGXlpVVxLH/esh9ccK/aPvBAVDlIYouIVAsjRg9Nm6i', NULL, 'nguyenduykhanh9294@gmail.com', '01669956897', 10, 1455890630, 1455890630),
(30, 'Đinh', 'Tiến Thành', 'thanh.dinh1702', '2xahb8JIanXnEp1azvtFHXI63xJNLQyi', '$2y$13$.bm2zTQ/4whp7C96wHY0c.UCnzlqEmxSvUkx.bgK9DdHt9ZA2BXCW', NULL, 'dinhtienthanh1702tt@gmail.com', '01683579125', 10, 1455897273, 1455897273),
(31, 'Phạm', 'Việt', 'MrPham', 'f4OCyj6v1OksMqM74LwmFQNSsqSgTli3', '$2y$13$a.OEHvJ1sPMpYdHRJ//4peBZOTZi6y4zUvt.z1z7TRVEPw3s2YKqa', NULL, 'vietbk218@gmail.com', '01688376375', 10, 1455938781, 1455938781),
(32, 'Phạm', 'Chuyển', 'chuyenbka', '0JsM4mwjlcd9UpPmejbAx-OHYfbslIT9', '$2y$13$9Hwtp28E1s5Xzjg7558Yiu9ezHuopUAF6iQeFD6Gtd01Kx3UAIKLC', NULL, 'chuyenbka@gmail.com', '01689953142', 10, 1455940466, 1455940466),
(33, 'Tạ Đức', 'Trung', 'TaDucTrung', 'lzV5rI0TjRYKm2G7GjRRqDg_JHsCMarK', '$2y$13$zR9vju4GKRG63KzHYtImbuzoDYUyD02ll.GysM.Q.xiV9k.rbOhtC', NULL, 'taductrungpt@gmail.com', '01678100256', 10, 1455986764, 1455986764),
(34, 'nguyễn', 'duy', 'nguyenduybk312', 'hgDPKI798ZUQ3AGt98wbQ-vlDokbrnFp', '$2y$13$6zdzL41QLcUs0LrfcGOk..Uw1XzJ.0An9kyFsDuPO5rvmGtKSdJya', NULL, 'nguyenduybk312@gmail.com', '0915343785', 10, 1456019780, 1456019780),
(35, 'Cao Đình', 'Phong', 'obitooo', '1bPcXHmsg917k5I2VeIYtVD4ewREhV66', '$2y$13$z0DfKUO/8ki5OyHxC92Ez.u5aAJZVkQ89tGVCaIOEXUYX8FA4.wVm', NULL, 'toiselamduoc96@gmail.com', '01203160530', 10, 1456032676, 1456032676),
(36, 'Nguyễn văn', 'Thường', 'monkeyboy2004', 'MW-Ud_q8FvvYrfL5v_zvbeym3j4fipN7', '$2y$13$bgmTcZAc2CKDhk84y5iIz.WrUSHiBBNnQhPilhKvXAB3iOEc683U6', NULL, 'nguyenvanthuong2004@gmail.com', '0984443645', 10, 1456114544, 1456114544),
(37, 'nguyen', 'tuan', 'mr.Tuan', '4xzADh375zpkK38GpNMEcUWzZ75t_QpQ', '$2y$13$RK.HzdMJsga/m3WKawa3ZORyV6CDo5hamJ8FZ0GYQmBqxUHvYC.XK', NULL, 'sunsshinemrt@gmail.com', '0987862593', 10, 1456160097, 1456160097),
(38, 'Hoàng Ngọc', 'Thạch', '20153466', 'LtXGAuty9Z7Ji-3DZ37rfv9YjUBQw0vP', '$2y$13$M3byFjJVuyX7M5lZ0zl9a.Bvt3Kiva8fX1cyVqJpRnFAiv0zu9WbK', NULL, 'raucau1997@gmail.com', '0917313328', 10, 1456214219, 1456214219),
(39, 'Long Nguyễn', '', '218726965148838', 'e38ByDgo446b3SL3eGRVRcj-3BfqAQWr', '$2y$13$6/TYk9WA6/726CK28nFSZ.J/GLEwxpAU70PXDcXqJASIuFVDAig8W', NULL, 'example@gmail.com', '000000000', 10, 1456305721, 1456305721),
(40, 'Trần', 'Hiến', 'sblack', '9FDc1ZfugbGZ79ZeQVlulTk5dKSVA-xw', '$2y$13$FPuJad0Je/GFF9HzfSdY2e/CCEJXJ/du/cz7zYWhCMmipe2qAlBnu', NULL, 'hientm.bk57@gmail.com', '01676798747', 10, 1456325976, 1456325976),
(41, 'Nguyen Sy', 'Huy', 'huyns', '8phD0DINLXBX5zdF9ujBlZGoht1BBXqV', '$2y$13$VPL.8W6/sBw8GhR6p99JCucFqbSr3TeJK/pAuFt8TULtJsD1t7NO6', NULL, 'huybk.toantin@yahoo.com', '0986055277', 10, 1456390196, 1456390196),
(42, 'Vũ', 'Cường', 'cuongvt93', 'O-Iv4Fkdobj5_96bKoTiVwfQ1rS9DxLB', '$2y$13$q9s.h5uHkcNpboqGghZCH.bz0D4AnPhe8JOEovab1ZIlqWi9g8aPW', NULL, 'cuongvt93@gmail.com', '0916514193', 10, 1456475843, 1456475843),
(43, '', '', 'dung', 'VJMl3nif9OTXkQNABolEcE7alS5BFbMT', '$2y$13$dClYw0ptXE7O3rXg3pwX4ePHxERwLLomvQf5ASBlpwKtygFItr8SO', NULL, 'root@gmail.com', '', 10, 1491903737, 1491903737),
(44, '', '', 'admin2', 'xE39CmHuXmT-Mew-rK89-xHT00aCr7gp', '$2y$13$z6mSky/BvuqNAHm88C5G/uaXjJ2RMnyTOBbHusKW5SteCI4iayQeq', NULL, 'ttdung997@gmail.com', '', 10, 1525483513, 1525483513),
(45, '', '', 'root', 'iPNjWuZheMQ0YEW9YTV0l1Y4x77eGAK4', '$2y$13$lumbtM.f6upMYlb3kJD8B.0XuThOuPvquywW3VUPCBpqRSpMnrnhO', NULL, 'root123@gmail.com', '', 10, 1527064075, 1527064075);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dungtt', 'ttdung997@gmail.com', '$2y$10$TIlfjmPS/.wLlxzMOG5eg.4tdlILFfgvw9psbl.XwTCiq80xsD3QC', 'UZISjSZUBzmDJYsd4sQgpqyqnoDbR0ZBa7B8MOlJvzvrP8R6pQd9ZccCYhAk', '2017-07-17 18:18:22', '2017-07-17 18:18:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`user_id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`dichvu_id`);

--
-- Indexes for table `giang_vien`
--
ALTER TABLE `giang_vien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giang_vien_thong_tin`
--
ALTER TABLE `giang_vien_thong_tin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khoahoccongnghe`
--
ALTER TABLE `khoahoccongnghe`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MyGuests`
--
ALTER TABLE `MyGuests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

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
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `dichvu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `giang_vien`
--
ALTER TABLE `giang_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `khoahoccongnghe`
--
ALTER TABLE `khoahoccongnghe`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `MyGuests`
--
ALTER TABLE `MyGuests`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sinh_vien`
--
ALTER TABLE `sinh_vien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `giang_vien`
--
ALTER TABLE `giang_vien`
  ADD CONSTRAINT `giang_vien_ibfk_1` FOREIGN KEY (`id`) REFERENCES `giang_vien_thong_tin` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
