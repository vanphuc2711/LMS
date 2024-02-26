-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 26, 2024 lúc 05:58 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `capstone`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(27, 'nhatadmin', '2023-12-20 01:50:59', 'Add Subject CMP1305'),
(28, 'nhatadmin', '2023-12-20 01:51:04', 'Edit Subject CMP1305'),
(29, 'nhatadmin', '2023-12-20 05:07:45', 'Add Subject CMP1016'),
(30, 'nhatadmin', '2023-12-20 05:09:00', 'Edit Subject CMP101'),
(31, 'nhatadmin', '2023-12-20 05:09:24', 'Add Subject BUS105'),
(32, 'nhatadmin', '2023-12-20 05:09:40', 'Add Subject MAT105'),
(33, 'nhatadmin', '2023-12-20 05:10:03', 'Add Subject CMP175'),
(34, 'nhatadmin', '2023-12-20 05:10:15', 'Add Subject CMP169'),
(35, 'nhatadmin', '2023-12-20 05:10:30', 'Add Subject CMP3025'),
(36, 'nhatadmin', '2023-12-26 16:23:59', 'Add School Year 2024'),
(37, 'nhatadmin', '2023-12-26 16:26:32', 'Add School Year 2024'),
(38, 'nhatadmin', '2023-12-27 06:40:09', 'Edit Subject MAT105');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `choices` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(93, 39, '1', 'A'),
(94, 39, '2', 'B'),
(95, 39, '3', 'C'),
(96, 39, 'many', 'D'),
(97, 40, 'Android Studio', 'A'),
(98, 40, 'DevC', 'B'),
(99, 40, 'Netbeans', 'C'),
(100, 40, 'MongoDB', 'D'),
(101, 43, 'a', 'A'),
(102, 43, '', 'B'),
(103, 43, '', 'C'),
(104, 43, '', 'D'),
(105, 47, '1', 'A'),
(106, 47, '2', 'B'),
(107, 47, '3', 'C'),
(108, 47, '4', 'D'),
(109, 49, '1', 'A'),
(110, 49, '2', 'B'),
(111, 49, '3', 'C'),
(112, 49, '4', 'D'),
(113, 51, '123', 'A'),
(114, 51, '234', 'B'),
(115, 51, '123423', 'C'),
(116, 51, '234234', 'D'),
(117, 53, '3', 'A'),
(118, 53, '4', 'B'),
(119, 53, '1', 'C'),
(120, 53, '2', 'D'),
(121, 56, '2', 'A'),
(122, 56, '3', 'B'),
(123, 56, '4', 'C'),
(124, 56, '5', 'D'),
(125, 58, '3', 'A'),
(126, 58, '2', 'B'),
(127, 58, '4', 'C'),
(128, 58, '5', 'D'),
(129, 61, '4', 'A'),
(130, 61, '2', 'B'),
(131, 61, '3', 'C'),
(132, 61, '5', 'D'),
(133, 63, 'Good', 'A'),
(134, 63, 'bad', 'B'),
(135, 63, 'bad', 'C'),
(136, 63, 'bad', 'D'),
(137, 65, '3', 'A'),
(138, 65, '2', 'B'),
(139, 65, '4', 'C'),
(140, 65, '5', 'D');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdatein` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdesc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class`
--

CREATE TABLE `class` (
  `class_id` int(100) NOT NULL,
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(1, '20DTHQA1'),
(2, '20DTHQA2'),
(3, '20DTHQA3'),
(4, '20DTHQA4'),
(5, '20DQTQA1'),
(6, '20DQTQA2'),
(7, '20DQTQA3'),
(8, '20DQTQA4'),
(9, '20DOTQA1'),
(10, '20DOTQA2'),
(11, '20DOTQA3'),
(12, '20DOTQA4'),
(13, '20DTAQA1'),
(14, '20DTAQA2'),
(15, '20DTAQA3'),
(16, '20DTAQA4'),
(17, '20DKSQA1'),
(18, '20DKSQA2'),
(19, '20DKSQA3'),
(20, '20DKSQA4'),
(21, '20DKQQA1'),
(22, '20DKQQA2'),
(23, '20DKQQA3'),
(24, '20DKQQA4'),
(25, '20DMAQA1'),
(26, '20DMAQA2'),
(27, '20DMAQA3'),
(28, '20DMAQA4'),
(29, '20DTCQA1'),
(30, '20DTCQA2'),
(31, '20DTCQA3'),
(32, '20DTCQA4'),
(33, '20BOIT01'),
(34, '20BOIT02'),
(35, '20BMAQA1'),
(36, '20BMAQA2'),
(37, '20BMAQA3'),
(38, '20BMAQA4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `class_quiz`
--

INSERT INTO `class_quiz` (`class_quiz_id`, `teacher_class_id`, `quiz_time`, `quiz_id`) VALUES
(19, 191, 1800, 8),
(20, 193, 1800, 10),
(21, 193, 1200, 10),
(22, 193, 900, 12),
(23, 197, 1200, 11),
(29, 222, 1800, 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdatein` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdesc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(143, 'admin/uploads/4550_File_NgauNhien (3).csv', '2023-12-20 04:39:37', 'List of student', 29, 191, 'List Student', 'LuuBi'),
(144, 'admin/uploads/9978_File_Cambridge_IELTS_16_Academic_b9f737c819.pdf', '2023-12-20 08:17:47', 'ôn tập', 29, 192, 'Tailieu', 'LuuBi'),
(145, 'admin/uploads/1199_File_Cambridge_IELTS_16_Academic_b9f737c819.pdf', '2023-12-20 08:38:09', 'ôn tập', 29, 193, 'EL', 'LuuBi'),
(147, 'admin/uploads/9792_File_2.docx', '2023-12-25 22:59:06', 'This is file 1', 29, 197, 'File 1', 'LuuBi'),
(148, 'admin/uploads/3742_File_culture cô sửa.docx', '2023-12-27 06:25:17', 'OnTap', 29, 224, 'BaiTap1', 'LuuBi'),
(149, 'admin/uploads/4872_File_bt page 118.docx', '2023-12-27 06:34:03', 'page18', 0, 224, 'pagq18', 'TomCruise'),
(150, 'admin/uploads/2402_File_culture cô sửa.docx', '2023-12-27 07:03:53', 'lam day du', 29, 226, 'baitap1', 'LuuBi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_sended` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(30, 754, 'Làm thêm chủ đề 2', '2023-12-26 16:05:32', 29, 'Lê Nhật', 'Luu Bi', ''),
(32, 756, '123456', '2023-12-26 17:00:32', 29, 'Emma Watson', 'Luu Bi', ''),
(33, 761, '123', '2023-12-26 17:00:47', 29, 'Lê Hoàng Nhật Anh', 'Luu Bi', ''),
(34, 755, 'On tap day du', '2023-12-27 06:27:10', 29, 'Tom Cruise', 'Luu Bi', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_sended` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(15, 754, 'Làm thêm chủ đề 2', '2023-12-26 16:05:32', 29, 'Lê Nhật', 'Luu Bi'),
(16, 754, '123', '2023-12-26 17:00:20', 29, 'Lê Nhật', 'Luu Bi'),
(17, 756, '123456', '2023-12-26 17:00:32', 29, 'Emma Watson', 'Luu Bi'),
(18, 761, '123', '2023-12-26 17:00:47', 29, 'Lê Hoàng Nhật Anh', 'Luu Bi'),
(20, 754, 'Hoc cham nhe', '2024-01-02 23:25:11', 29, 'Lê Nhật', 'Luu Bi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_notification` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(27, 188, 'Add Annoucements', '2023-12-12 00:05:51', 'announcements_student.php'),
(28, 191, 'Add Annoucements', '2023-12-20 03:26:22', 'announcements_student.php'),
(29, 191, 'Add Annoucements', '2023-12-20 03:53:15', 'announcements_student.php'),
(30, 191, 'Add Downloadable Materials file name <b>List Student</b>', '2023-12-20 04:39:37', 'downloadable_student.php'),
(31, 191, 'Add Practice Quiz file', '2023-12-20 04:44:35', 'student_quiz_list.php'),
(32, 192, 'Add Downloadable Materials file name <b>Tailieu</b>', '2023-12-20 08:17:47', 'downloadable_student.php'),
(33, 192, 'Add Annoucements', '2023-12-20 08:18:31', 'announcements_student.php'),
(34, 193, 'Add Practice Quiz file', '2023-12-20 08:23:52', 'student_quiz_list.php'),
(35, 193, 'Add Downloadable Materials file name <b>EL</b>', '2023-12-20 08:38:09', 'downloadable_student.php'),
(36, 193, 'Add Practice Quiz file', '2023-12-20 10:27:33', 'student_quiz_list.php'),
(37, 193, 'Add Practice Quiz file', '2023-12-20 10:33:47', 'student_quiz_list.php'),
(38, 197, 'Add Downloadable Materials file name <b>a</b>', '2023-12-25 18:51:39', 'downloadable_student.php'),
(39, 197, 'Add Downloadable Materials file name <b>File 1</b>', '2023-12-25 22:59:06', 'downloadable_student.php'),
(40, 197, 'Add Annoucements', '2023-12-26 15:54:18', 'announcements_student.php'),
(41, 197, 'Add Annoucements', '2023-12-26 15:54:37', 'announcements_student.php'),
(42, 197, 'Add Annoucements', '2023-12-26 15:54:56', 'announcements_student.php'),
(43, 198, 'Add Annoucements', '2023-12-26 15:54:56', 'announcements_student.php'),
(44, 197, 'Add Annoucements', '2023-12-26 15:55:26', 'announcements_student.php'),
(45, 197, 'Add Practice Quiz file', '2023-12-26 15:57:18', 'student_quiz_list.php'),
(46, 222, 'Add Practice Quiz file', '2023-12-26 17:07:53', 'student_quiz_list.php'),
(47, 222, 'Add Practice Quiz file', '2023-12-26 17:10:48', 'student_quiz_list.php'),
(48, 222, 'Add Practice Quiz file', '2023-12-26 17:17:08', 'student_quiz_list.php'),
(49, 222, 'Add Practice Quiz file', '2023-12-26 17:25:16', 'student_quiz_list.php'),
(50, 222, 'Add Practice Quiz file', '2023-12-26 17:26:46', 'student_quiz_list.php'),
(51, 222, 'Add Practice Quiz file', '2023-12-26 17:30:01', 'student_quiz_list.php'),
(52, 224, 'Add Downloadable Materials file name <b>BaiTap1</b>', '2023-12-27 06:25:17', 'downloadable_student.php'),
(53, 224, 'Add Annoucements', '2023-12-27 06:26:11', 'announcements_student.php'),
(54, 224, 'Add Practice Quiz file', '2023-12-27 06:30:25', 'student_quiz_list.php'),
(55, 226, 'Add Downloadable Materials file name <b>baitap1</b>', '2023-12-27 07:03:53', 'downloadable_student.php'),
(56, 226, 'Add Annoucements', '2023-12-27 07:04:23', 'announcements_student.php'),
(57, 226, 'Add Practice Quiz file', '2023-12-27 07:06:22', 'student_quiz_list.php'),
(58, 244, 'Add Downloadable Materials file name <b>EL</b>', '2024-01-02 23:25:35', 'downloadable_student.php'),
(59, 244, 'Add Downloadable Materials file name <b>EL</b>', '2024-01-02 23:26:12', 'downloadable_student.php'),
(60, 244, 'Add Assignment file name <b>Baitap1</b>', '2024-01-02 23:26:42', 'assignment_student.php'),
(61, 244, 'Add Annoucements', '2024-01-02 23:27:06', 'announcements_student.php'),
(62, 244, 'Add Practice Quiz file', '2024-01-02 23:29:14', 'student_quiz_list.php'),
(63, 245, 'Add Practice Quiz file', '2024-01-06 08:25:43', 'student_quiz_list.php');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quiz_description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(21, 'Bai tap', 'hk1', '2024-01-02 23:27:35', 29);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(40, 8, '<p>What is application to write a mobile android application</p>\r\n', 1, 0, '2023-12-20 04:43:49', 'A'),
(41, 10, '<p>Do you think html is good?</p>\r\n', 2, 0, '2023-12-20 08:23:20', 'True'),
(42, 11, '<p>&aacute;</p>\r\n', 2, 0, '2023-12-20 10:30:01', 'False'),
(43, 11, '<p>s</p>\r\n', 1, 0, '2023-12-20 10:30:25', 'A'),
(44, 12, '<p>Bai1:html?</p>\r\n', 2, 0, '2023-12-20 10:33:07', 'True'),
(45, 12, '<p>Bai2: css?</p>\r\n', 2, 0, '2023-12-20 10:33:18', 'False'),
(46, 13, '<p>C&oacute; n&ecirc;n sử dụng html,css kh&ocirc;ng?</p>\r\n', 2, 0, '2023-12-26 15:59:22', 'True'),
(47, 14, '<p>đ&uacute;ng</p>\r\n', 1, 0, '2023-12-26 17:10:14', 'D'),
(48, 14, '<p>2</p>\r\n', 2, 0, '2023-12-26 17:10:27', 'True'),
(49, 15, '<p>123456</p>\r\n', 1, 0, '2023-12-26 17:15:09', 'B'),
(50, 15, '<p>rtywerwer</p>\r\n', 2, 0, '2023-12-26 17:15:20', 'True'),
(51, 17, '<p>123</p>\r\n', 1, 0, '2023-12-26 17:29:17', 'A'),
(52, 17, '<p>qưeqwe</p>\r\n', 2, 0, '2023-12-26 17:29:26', 'True'),
(53, 17, '<p>123123123</p>\r\n', 1, 0, '2023-12-26 17:29:39', 'C'),
(54, 17, '<p>sdfsdfsdfs</p>\r\n', 2, 0, '2023-12-26 17:29:46', 'False'),
(55, 18, '<p>Ban co nen on tap ky nang mem khong?</p>\r\n', 2, 0, '2023-12-27 06:29:32', 'True'),
(56, 18, '<p>1+1=</p>\r\n', 1, 0, '2023-12-27 06:29:51', 'A'),
(57, 19, '<p>ban co nen on bai truoc luc kiem tra khong?</p>\r\n', 2, 0, '2023-12-27 07:05:39', 'True'),
(58, 19, '<p>1+1</p>\r\n', 1, 0, '2023-12-27 07:05:57', 'B'),
(60, 20, '<p>S&oacute;ng l&agrave; của Xu&acirc;n Quỳnh?</p>\r\n', 2, 0, '2023-12-27 07:51:50', 't'),
(61, 20, '<p>1+2</p>\r\n', 1, 0, '2023-12-27 07:52:11', 'C'),
(62, 21, '<p>Ho Chi Minh is the city?</p>\r\n', 2, 0, '2024-01-02 23:28:15', 'True'),
(63, 21, '<p>Do you think learn java&nbsp;program is good?</p>\r\n', 1, 0, '2024-01-02 23:28:55', 'A'),
(64, 22, '<p>true</p>\r\n', 2, 0, '2024-01-06 08:24:56', 'True'),
(65, 22, '<p>1+1 =?</p>\r\n', 1, 0, '2024-01-06 08:25:23', 'B');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(5, '2017'),
(6, '2018'),
(7, '2019'),
(8, '2020'),
(9, '2021'),
(10, '2022'),
(11, '2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `student_id` int(255) NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(754, 'Lê', 'Nhật', 1, '2011060737', 'nhat2002', 'uploads/asus.jpg', ''),
(755, 'Tom', 'Cruise', 1, '2011987789', '123', 'uploads/asus.jpg', ''),
(756, 'Emma', 'Watson', 1, '2011345543', '123', 'uploads/asus.jpg', ''),
(757, 'Nguyễn Thị', 'Anh Anh', 33, '2018528567', '123', '', ''),
(758, 'Trương Hoài', 'Phương', 33, '2011492538', '123', '', ''),
(759, 'Lưu Anh', 'Thư', 33, '2011823523', '123', '', ''),
(760, 'Trần Nguyễn', 'Thành Nhật', 35, '2011592348', '123', '', ''),
(761, 'Lê Hoàng', 'Nhật Anh', 35, '2011934538', '123', '', ''),
(762, 'Bùi Thị', 'Phương Uyên', 35, '2011645384', '123', '', ''),
(763, 'Đỗ Hoàng', 'Nam', 25, '2018323493', '123', '', ''),
(764, 'Trần Khánh', 'Huyền', 25, '2011345658', '123', '', ''),
(765, 'Ngô Lê', 'Thành Phát', 25, '2011134111', '123', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `assignment_fdatein` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdesc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdatein` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdesc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `student_class_quiz`
--

INSERT INTO `student_class_quiz` (`student_class_quiz_id`, `class_quiz_id`, `student_id`, `student_quiz_time`, `grade`) VALUES
(4, 19, 754, '3600', '1 out of 1'),
(5, 24, 754, '3600', '0 out of 1'),
(6, 25, 754, '3600', '0 out of 0'),
(7, 26, 29, '3600', '2 out of 2'),
(8, 26, 755, '3600', '1 out of 2'),
(14, 29, 754, '1800', ''),
(15, 30, 755, '3600', '0 out of 2'),
(16, 31, 755, '1800', ''),
(17, 32, 754, '3600', '0 out of 2'),
(18, 33, 754, '3600', '0 out of 2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(43, 'CMP101', 'Software development', '', '', 0, '', '1st'),
(44, 'CMP1016', 'Ngôn ngữ lập trình C', '', '<p>A subject for student study basic of language C</p>\r\n', 0, '', ''),
(45, 'BUS105', 'Văn hóa doanh nghiệp', '', '', 0, '', ''),
(46, 'MAT105', 'Xác suất thống kê', '', '', 0, '', ''),
(47, 'CMP175', 'Lập trình Web', '', '', 0, '', ''),
(48, 'CMP169', 'Trí tuệ nhân tạo', '', '', 0, '', ''),
(49, 'CMP3025', 'Thực hành lập trình ứng dụng với Java', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_stat` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(29, 'teacher123@gmail.com', '123', 'Luu', 'Bi', 0, 'uploads/teacher.png', '', '', ''),
(30, 'teacher3107@gmail.com', '123', 'Hoàng Thị', 'Ngọc Anh', 0, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', ''),
(31, 'teachertest789@gmail.com', '123', 'Lưu Ngọc', 'Hoàng Anh', 0, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdatein` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdesc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_year` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(194, 29, 1, 45, 'admin/uploads/thumbnails.jpg', '2022'),
(195, 29, 1, 48, 'admin/uploads/thumbnails.jpg', '2021'),
(199, 29, 35, 46, 'admin/uploads/thumbnails.jpg', '2022'),
(200, 29, 35, 47, 'admin/uploads/thumbnails.jpg', '20232'),
(201, 29, 35, 43, 'admin/uploads/thumbnails.jpg', '2022'),
(207, 29, 38, 44, 'admin/uploads/thumbnails.jpg', '2021'),
(238, 29, 35, 45, 'admin/uploads/thumbnails.jpg', ''),
(239, 29, 1, 45, 'admin/uploads/thumbnails.jpg', ''),
(240, 29, 36, 43, 'admin/uploads/thumbnails.jpg', ''),
(241, 29, 36, 45, 'admin/uploads/thumbnails.jpg', ''),
(243, 29, 35, 45, 'admin/uploads/thumbnails.jpg', '2023'),
(247, 29, 1, 45, 'admin/uploads/thumbnails.jpg', '2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(391, 194, 754, 29),
(392, 194, 755, 29),
(393, 194, 756, 29),
(394, 195, 754, 29),
(395, 195, 755, 29),
(396, 195, 756, 29),
(403, 199, 760, 29),
(404, 199, 761, 29),
(405, 199, 762, 29),
(406, 200, 760, 29),
(407, 200, 761, 29),
(408, 200, 762, 29),
(409, 201, 760, 29),
(410, 201, 761, 29),
(411, 201, 762, 29),
(492, 238, 760, 29),
(493, 238, 761, 29),
(494, 238, 762, 29),
(495, 239, 754, 29),
(496, 239, 755, 29),
(497, 239, 756, 29),
(501, 243, 760, 29),
(502, 243, 761, 29),
(503, 243, 762, 29),
(513, 247, 754, 29),
(514, 247, 755, 29),
(515, 247, 756, 29);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_notification` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdatein` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdesc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(14, 'nhatadmin', 'nhat2002', 'Nhật', 'Lê'),
(16, 'hungadmin123', '123', 'Việt Hưng', 'Phạm Đồng'),
(17, 'adminphuc123', '123', 'Phúc', 'Văn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `login_date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logout_date` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(100, 'nhatadmin', '2023-12-20 01:52:23', '2024-01-06 08:29:36', 14),
(101, 'nhatadmin', '2023-12-20 01:56:12', '2024-01-06 08:29:36', 14),
(102, 'nhatadmin', '2023-12-20 02:33:25', '2024-01-06 08:29:36', 14),
(103, 'nhatadmin', '2023-12-20 03:06:58', '2024-01-06 08:29:36', 14),
(104, 'nhatadmin', '2023-12-20 03:10:12', '2024-01-06 08:29:36', 14),
(105, 'nhatadmin', '2023-12-20 04:52:37', '2024-01-06 08:29:36', 14),
(106, 'nhatadmin', '2023-12-20 06:23:31', '2024-01-06 08:29:36', 14),
(107, 'hungadmin123', '2023-12-25 17:23:12', '2023-12-25 17:34:38', 16),
(108, 'hungadmin123', '2023-12-25 17:51:10', '', 16),
(109, 'nhatadmin', '2023-12-25 22:17:17', '2024-01-06 08:29:36', 14),
(110, 'nhatadmin', '2023-12-25 23:00:53', '2024-01-06 08:29:36', 14),
(111, 'nhatadmin', '2023-12-25 23:03:40', '2024-01-06 08:29:36', 14),
(112, 'nhatadmin', '2023-12-25 23:38:35', '2024-01-06 08:29:36', 14),
(113, 'nhatadmin', '2023-12-26 16:12:55', '2024-01-06 08:29:36', 14),
(114, 'nhatadmin', '2023-12-26 16:22:41', '2024-01-06 08:29:36', 14),
(115, 'nhatadmin', '2023-12-26 16:25:35', '2024-01-06 08:29:36', 14),
(116, 'nhatadmin', '2023-12-26 16:26:22', '2024-01-06 08:29:36', 14),
(117, 'nhatadmin', '2023-12-26 16:27:20', '2024-01-06 08:29:36', 14),
(118, 'nhatadmin', '2023-12-26 16:29:57', '2024-01-06 08:29:36', 14),
(119, 'nhatadmin', '2023-12-26 16:45:48', '2024-01-06 08:29:36', 14),
(120, 'nhatadmin', '2023-12-26 20:56:25', '2024-01-06 08:29:36', 14),
(121, 'nhatadmin', '2023-12-27 06:39:16', '2024-01-06 08:29:36', 14),
(122, 'nhatadmin', '2023-12-27 07:08:48', '2024-01-06 08:29:36', 14),
(123, 'nhatadmin', '2023-12-27 08:47:24', '2024-01-06 08:29:36', 14),
(124, 'nhatadmin', '2024-01-02 23:32:00', '2024-01-06 08:29:36', 14),
(125, 'nhatadmin', '2024-01-06 08:27:41', '2024-01-06 08:29:36', 14);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Chỉ mục cho bảng `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Chỉ mục cho bảng `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Chỉ mục cho bảng `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Chỉ mục cho bảng `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Chỉ mục cho bảng `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Chỉ mục cho bảng `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Chỉ mục cho bảng `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Chỉ mục cho bảng `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Chỉ mục cho bảng `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Chỉ mục cho bảng `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Chỉ mục cho bảng `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Chỉ mục cho bảng `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Chỉ mục cho bảng `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Chỉ mục cho bảng `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Chỉ mục cho bảng `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Chỉ mục cho bảng `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Chỉ mục cho bảng `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Chỉ mục cho bảng `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Chỉ mục cho bảng `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Chỉ mục cho bảng `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Chỉ mục cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Chỉ mục cho bảng `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Chỉ mục cho bảng `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Chỉ mục cho bảng `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Chỉ mục cho bảng `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Chỉ mục cho bảng `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Chỉ mục cho bảng `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT cho bảng `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=766;

--
-- AUTO_INCREMENT cho bảng `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT cho bảng `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT cho bảng `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
