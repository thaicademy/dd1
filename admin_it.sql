-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 07:34 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_it`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `id` bigint(10) NOT NULL,
  `title` varchar(250) COLLATE utf8_bin NOT NULL,
  `detail` text COLLATE utf8_bin NOT NULL,
  `title_en` varchar(250) COLLATE utf8_bin NOT NULL,
  `detail_en` text COLLATE utf8_bin NOT NULL,
  `photo` varchar(20) COLLATE utf8_bin NOT NULL,
  `views` int(5) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `title`, `detail`, `title_en`, `detail_en`, `photo`, `views`, `created`, `modified`) VALUES
(27, 'กิจกรรม พี่สอนน้อง "ทำความดีเพื่อพ่อหลวง"', 'วันที่ ๙ พ.ย. ๒๕๕๙วิทยาลัยเทคโนโลยีสยามธุรกิจในพระอุปถัมภ์ฯ จัดกิจกรรมพี่สอนน้อง โดยนักศึกษาของวิทยาลัยฯได้นำความรู้ทางด้านวิชาชีพ การโรงแรม การบัญชี และคอมพิวเตอร์ ไปจัดกิจกรรมแลกเปลี่ยนเรียนรู้ให้กับน้องๆ โรงเรียนกิ่งเพชร', '', '', '27.jpg', 41, '2016-12-12 22:01:27', '2016-12-14 05:33:41'),
(30, 'test', 'test', '', '', '30.jpg', 40, '2017-09-12 06:58:16', '2017-09-12 22:52:50');

-- --------------------------------------------------------

--
-- Table structure for table `activity_photo`
--

CREATE TABLE IF NOT EXISTS `activity_photo` (
  `id` bigint(11) NOT NULL,
  `activity_id` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `photo` varchar(20) COLLATE utf8_bin NOT NULL,
  `views` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_bin PACK_KEYS=0;

--
-- Dumping data for table `activity_photo`
--

INSERT INTO `activity_photo` (`id`, `activity_id`, `photo`, `views`, `created`, `modified`) VALUES
(29, '27', '27-29.jpg', 0, '2016-12-12 22:37:50', '2016-12-12 22:37:50'),
(30, '27', '27-30.jpg', 0, '2016-12-12 22:37:51', '2016-12-12 22:37:51'),
(26, '27', '27-26.jpg', 0, '2016-12-12 22:37:46', '2016-12-12 22:37:46'),
(27, '27', '27-27.jpg', 0, '2016-12-12 22:37:47', '2016-12-12 22:37:47'),
(28, '27', '27-28.jpg', 0, '2016-12-12 22:37:49', '2016-12-12 22:37:49'),
(25, '27', '27-25.jpg', 0, '2016-12-12 22:37:44', '2016-12-12 22:37:44'),
(42, '30', '30-42.png', 0, '2019-04-23 21:42:08', '2019-04-23 21:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` int(11) NOT NULL,
  `course_id` varchar(9) COLLATE utf8_bin NOT NULL,
  `title` varchar(250) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `credit` int(11) NOT NULL,
  `theory` int(2) NOT NULL,
  `practice` int(2) NOT NULL,
  `level` varchar(8) COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_id`, `title`, `description`, `credit`, `theory`, `practice`, `level`, `created`, `modified`) VALUES
(1, '2201-2001', 'การสร้างเว็บไซต์', '<div><div><span style="font-weight: bold;">(Website Design and Development)</span><br></div><div><span style="font-weight: bold;">จุดประสงค์รายวิชา</span>&nbsp; เพื่อให้</div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; เข้าใจเกี่ยวกับหลักการออกแบบเว็บไซต์</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; มีทักษะในการประยุกต์ ใช้โปรแกรมการสร้างเว็บไซต์</div><div>&nbsp; &nbsp; &nbsp;3.&nbsp; มีคุณลักษณะนิสัยที่พึงประสงค์&nbsp; และเจตคติที่ดีในวิชาชีพคอมพิวเตอร์ธุรกิจ</div><div><span style="font-weight: bold;">สมรรถนะรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; แสดงความรู้เกี่ยวกับหลักการออกแบบและพัฒนาเว็บไซต์</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; ออกแบบและพัฒนาเว็บไซต์ในงานธุรกิจ</div><div><span style="font-weight: bold;">คําอธิบายรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;ศึกษา และปฏิบัติเกี่ยวกับหลักการออกแบบเว็บไซต์ในงานธุรกิจ การใช้สี&nbsp; การใช้ตัวอักษร&nbsp; การใช้</div><div>รูปภาพ การออกแบบกราฟิกและภาพเคลื่อนไหวสําหรับเว็บไซต์ ระบบนําทางเว็บ (Navigation) ส่วนติดต่อผู้ใช้ (User Interface) แม่แบบเอกสารเว็บ สร้างเว็บไซต์ กรณีศึกษา</div></div><div><br></div><div><br></div>', 2, 0, 0, 'ปวช.', '2017-01-04 02:19:57', '2018-03-09 00:09:48'),
(2, '2201-2402', 'คณิตศาสาตร์คอมพิวเตอร์', '<div><span style="font-weight: bold;">วัตถุประสงค์รายวิชา</span>&nbsp; &nbsp; &nbsp;เพื่อให้</div><div>&nbsp; &nbsp; &nbsp;1. รู้หลักการเกี่ยวกับจำนวน ระบบเลขฐาน พีชคณิตบูลีน พีชคณิตเส้นตรงและทฤษฏีเมตริกซ์</div><div>&nbsp; &nbsp; &nbsp;2. มีทักษะในการคำนวณทางคณิตศาสตร์คอมพิวเตอร์</div><div>&nbsp; &nbsp; &nbsp;3. เข้าใจความสัมพันธ์ระหว่างคณิตศาสตร์กับการทำงานของเครื่องคอมพิวเตอร์</div><div>&nbsp; &nbsp; &nbsp;4. มีกิจนิสัยการทำงานอย่างมีระเบียบ</div><div><span style="font-weight: bold;">มาตรฐานรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;1. คำนวณเลขฐาน พีชคณิตบูลีน พีชคณิตเส้นตรง ทฤษฏีเมตริกซ์ได้</div><div>&nbsp; &nbsp; &nbsp;2. อธิบายความสัมพันธ์ระหว่างคณิตศาสตร์คอมพิวเตอร์กับการทำงานของเครื่องคอมพิวเตอร์</div><div><span style="font-weight: bold;">คำอธิบายรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;ศึกษาและปฏิบัติเกี่ยวกับระบบจำนวน ระบบเลขฐาน พีชคณิตเส้นตรงและทฤษฏีเมตริกซ์คอมพิวดเตอร์กับ&nbsp;</div><div>เลขฐาน ตรรกะกับคอมพิวเตอร์ และหลักการคำนวณของเครื่องคอมพิวเตอร์&nbsp;</div>', 2, 0, 0, 'ปวช.', '2017-01-05 00:38:12', '2017-11-01 00:10:17'),
(3, '3200-0010', 'คอมพิวเตอร์และการบำรุงรักษา', '<div><span style="font-weight: bold;">จุดประสงค์รายวิชา</span>&nbsp; เพื่อให้</div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; มีความรู้ความเข้าใจเกี่ยวกับหลักการทํางานของคอมพิวเตอร์ และระบบปฏิบัติการ</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; มีทักษะในการปฏิบัติงานการใช้อุปกรณ์ต่อพ่วง และการบํารุงรักษาอุปกรณ์คอมพิวเตอร์</div><div>&nbsp; &nbsp; &nbsp;3.&nbsp; มีทักษะในการปฏิบัติงานการใช้งานระบบปฏิบัติการคอมพิวเตอร์&nbsp; และโปรแกรมอรรถประโยชน์</div><div>&nbsp; &nbsp; &nbsp;4.&nbsp; มีคุณลักษณะนิสัยที่พึงประสงค์ และเจตคติที่ดีในวิชาชีพคอมพิวเตอร์ธุรกิจ</div><div><span style="font-weight: bold;">สมรรถนะรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; แสดงความรู้เกี่ยวกับหลักการทํางานของคอมพิวเตอร์ และระบบปฏิบัติการ</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; ติดตั้ง ใช้คําสั่งระบบปฏิบัติการ&nbsp; และโปรแกรมอรรถประโยชน์ได้ถูกต้องตามข้อกําหนด</div><div>&nbsp; &nbsp; &nbsp;3.&nbsp; ใช้อุปกรณ์ต่อพ่วง และบํารุงรักษาอุปกรณ์ตามข้อกําหนด</div><div><span style="font-weight: bold;">คําอธิบายรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp; &nbsp;ศึกษาและปฏิบัติเกี่ยวกับองค์ประกอบของเครื่องคอมพิวเตอร์ หลักการทํางานของคอมพิวเตอร์ อุปกรณ์</div><div>ต่อพ่วง&nbsp; สื่อบันทึกข้อมูล ความหมายหน้าที่และความสําคัญของระบบปฏิบัติการ ประเภทของโปรแกรม</div><div>ระบบปฏิบัติการ การเลือกใช้และติดตั้งระบบปฏิบัติการต่างๆ การใช้โปรแกรมอรรถประโยชน์ การตรวจและ</div><div>กําจัดไวรัส การสํารองและป้องกันความเสียหายของข้อมูล การกู้คืนข้อมูล การบํารุงรักษาอุปกรณ์คอมพิวเตอร์</div><div>การแก้ปัญหาการใช้งานคอมพิวเตอร์</div>', 3, 0, 0, 'ปวส.', '2017-02-05 00:26:48', '2017-11-01 00:08:14'),
(4, '3204-2005', 'การออกแบบและพัฒนาเว็บไซต์', '<div><div><span style="font-weight: bold;">จุดประสงค์รายวิชา</span>&nbsp;เพื่อให้</div><div>&nbsp; &nbsp; &nbsp;1. มีความรู้ความเข้าใจเกี่ยวกับกระบวนการและโครงสร้างการทํางานของเว็บไซต์</div><div>&nbsp; &nbsp; &nbsp;2. เข้าใจโครงสร้างและไวยากรณ์ของโปรแกรมภาษาหรือกระบวนการใช้เครื่องมือการสร้างเว็บไซต์</div><div>&nbsp; &nbsp; &nbsp;3. ออกแบบและกําหนดส่วนประกอบที่จําเป็นของเว็บเพจ</div><div>&nbsp; &nbsp; &nbsp;4. ใช้โปรแกรมภาษาหรือโปรแกรมสําเร็จรูปสําหรับสร้างเว็บไซต์</div><div>&nbsp; &nbsp; &nbsp;5. ติดตั้งและอัพโหลด(Upload) เว็บไซต์</div><div>&nbsp; &nbsp; &nbsp;6. มีคุณธรรม จริยธรรม และค่านิยมที่ดีในการใช้คอมพิวเตอร์</div><div><span style="font-weight: bold;">สมรรถนะรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;1. แสดงความรู้เกี่ยวกับกระบวนการโครงสร้างการทํางานและไวยากรณ์ของโปรแกรมภาษาในการสร้างเว็บไซต์</div><div>&nbsp; &nbsp; &nbsp;2. ประยุกต์ใช้โปรแกรมภาษาหรือโปรแกรมสําเร็จรูปสําหรับสร้างเว็บไซต์และการติดตั้งและอัพโหลด(Upload) เว็บไซต์</div><div><span style="font-weight: bold;">คําอธิบายรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;ศึกษาและปฏิบัติเกี่ยวกับกระบวนการและโครงสร้างการทํางานของเว็บไซต์ การออกแบบเว็บไซต์</div><div>การสร้างเว็บไซต์ด้วยโปรแกรมภาษาหรือโปรแกรมสําเร็จรูปหรือโปรแกรมระบบ CMS(Content Management System)&nbsp;</div><div>การทดสอบการทํางานของเว็บไซต์ และการ Upload เว็บไซต์</div></div>', 3, 0, 0, 'ปวส.', '2017-02-17 02:55:04', '2018-03-09 00:09:04'),
(5, '3204-2003', 'การสื่อสารข้อมูลและระบบเครื่อข่าย', '<div>(Data Communication and Computer Network)<br></div><div><span style="font-weight: bold;">จุดประสงค์ รายวิชา</span>&nbsp; เพื่อให้</div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; เข้าใจเกี่ยวกับการสื่อสารข้อมูลและเครือข่าย</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; มีทักษะในการใช้ ดูแลและบํารุงรักษาระบบเครือข่าย</div><div>&nbsp; &nbsp; &nbsp;3.&nbsp; มีทักษะในการใช้บริการบนอินเทอร์เน็ต</div><div>&nbsp; &nbsp; &nbsp;4.&nbsp; มีคุณลั กษณะนิสัยที่พึงประสงค์ และเจตคติที่ดีในวิชาชี พคอมพิวเตอร์ธุรกิจ</div><div><span style="font-weight: bold;">สมรรถนะรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; แสดงความรู้เกี่ยวกับหลักการสื่อสารข้อมูลและเครือข่าย</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; เลือก และติดตั้งอุปกรณ์เครือข่ายตามคู่มือ</div><div>&nbsp; &nbsp; &nbsp;3.&nbsp; ปรับแต่ง บํารุ งรักษาระบบปฏิบัติการเครือขายตามข้อกําหนด</div><div><span style="font-weight: bold;">คําอธิบายรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;ศึกษาและปฏิ บัติเกี่ยวกับหลักการ การสื่อสารข้อมูลและเครือข่าย การติดตั้งระบบปฏิบัติการเครือข่าย</div><div>การปรับแต่งและใช้งานระบบปฏิบัติการเครือข่าย การรั บ-ส่ง ข้อมูลบนเครือข่าย การใช้บริการบนอินเทอร์เน็ต</div><div>การดูแลรักษาระบบเครือข่าย และความปลอดภัยบนระบบเครือข่าย</div>', 3, 0, 0, 'ปวส.', '2017-10-29 09:25:40', '2017-11-01 00:08:51'),
(6, '3204-2004', 'ระบบจัดการฐานข้อมูล', '<div><span style="font-weight: bold;">(Database Management System)&nbsp;</span><br></div><div><span style="font-weight: bold;">จุดประสงค์รายวิชา</span>&nbsp; เพื่อให้</div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; เข้าใจเกี่ยวกับการออกแบบฐานข้อมูล</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; มีทักษะในการใช้ โปรแกรมจัดการระบบฐานข้อมูล</div><div>&nbsp; &nbsp; &nbsp;3.&nbsp; มีคุณลักษณะนิสัยที่พึงประสงค์ และเจตคติที่ดีในวิชาชีพคอมพิวเตอร์ธุรกิจ</div><div><span style="font-weight: bold;">สมรรถนะรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; แสดงความรู์เกี่ยวกับหลักการระบบจัดการฐานข้อมูล</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; ออกแบบฐานข้อมูลเชิงสัมพันธ์ตามหลักการของการจัดรูปแบบบรรทัดฐาน</div><div>&nbsp; &nbsp; &nbsp;3.&nbsp; ใช้โปรแกรมสําเร็จรูปในการจัดการฐานข้อมูล</div><div><span style="font-weight: bold;">คําอธิบายรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;ศึกษาและปฏิบัติเกี่ยวกับหลักการของระบบฐานข้อมูล&nbsp; ขั้นตอนการพัฒนาระบบฐานข้อมูล&nbsp;<span style="font-size: 1rem;">สถาปัตยกรรมฐานข้อมูล&nbsp; แบบจําลองข้อมูล&nbsp; การวิเคราะห์และการออกแบบฐานข้อมูล&nbsp; แบบจําลองเอนทิตี้และ</span><span style="font-size: 1rem;">ความสัมพันธ์&nbsp; รูปแบบบรรทัดฐาน&nbsp; การออกแบบฐานข้อมูลเชิงสัมพันธ์&nbsp; ภาษามาตรฐานบนระบบฐานข้อมูล</span><span style="font-size: 1rem;">เชิงสัมพันธ์ การเกิดภาวะพร้อมกัน และการกู้คืน การประยุกต์ใช้ฐานข้อมูลเพื่อพัฒนาระบบงาน กรณีศึกษา</span></div>', 3, 0, 0, 'ปวส.', '2017-10-31 01:53:03', '2017-11-05 01:58:09'),
(7, '2204-2007', 'การเขียนโปรแกรมบนมาตรฐานเปิด', '<div><span style="font-weight: bold;">จุดประสงค์รายวิชา</span> เพื่อให้</div><div>&nbsp; &nbsp; &nbsp;1. มีความรู้ความเข้าใจเกี่ยวกับหลักการเขียนโปรแกรมบนมาตรฐานเปิด</div><div>&nbsp; &nbsp; &nbsp;2. วิเคราะห์และเขียนโปรแกรมบนมาตรฐานเปิด</div><div>&nbsp; &nbsp; &nbsp;3. สร้างชุดคําสั่งตามขั้นตอนการแก้ปัญหา(Algorithm)&nbsp;</div><div>&nbsp; &nbsp; &nbsp;4. มีคุณธรรม จริยธรรม และค่านิยมที่ดีในการใช้คอมพิวเตอร์</div><div><span style="font-weight: bold;">สมรรถนะรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;1. แสดงความรู้เกี่ยวกับหลักการเขียนโปรแกรมบนมาตรฐานเปิด</div><div>&nbsp; &nbsp; &nbsp;2. เขียนโปรแกรมบนมาตรฐานเปิดในงานธุรกิจ</div><div><span style="font-weight: bold;">คําอธิบายรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;ศึกษาภาคทฤษฎีควบคู่กับการปฏิบัติเกี่ยวกับหลักการเขียนโปรแกรมบนมาตรฐานเปิด&nbsp;<span style="font-size: 1rem;">องค์ประกอบของโปรแกรมภาษาคอมพิวเตอร์&nbsp; ขั้นตอนการแก้ไขปัญหา(Algorithm)&nbsp; &nbsp;กระบวนการเขียน</span><span style="font-size: 1rem;">โปรแกรมคําสั่งควบคุม&nbsp; การทํางานของโปรแกรม การเขียนโปรแกรมบนมาตรฐานเปิดที่สามารถใช้ได้ใน</span><span style="font-size: 1rem;">ระบบปฏิบัติการที่หลากหลาย</span></div>', 2, 0, 0, 'ปวช.', '2017-10-31 22:43:31', '2017-11-05 01:59:16'),
(8, '3204-2106', 'การพัฒนาเว็บไซต์ในงานธุรกิจ', '<div><span style="font-weight: bold;">(Website Development in Business)</span><br></div><div><span style="font-weight: bold;">จุดประสงค์รายวิชา</span>&nbsp; เพื่อให้</div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; เข้าใจในการพัฒนาเว็บไซต์ในงานธุรกิจ</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; มีทักษะในการพัฒนาเว็บไซต์ในงานธุรกิ จ</div><div>&nbsp; &nbsp; &nbsp;3.&nbsp; มีคุณลั กษณะนิสัยที่พึงประสงค์ และเจตคติที่ดีในวิชาชีพคอมพิวเตอร์ธุรกิจ</div><div><span style="font-weight: bold;">สมรรถนะรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; แสดงความรู้เกี่ยวกับหลักการพัฒนาเว็บไซต์ในงานธุรกิจ</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; พัฒนาเว็บไซต์ในงานธุรกิ จ</div><div><span style="font-weight: bold;">คําอธิบายรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;ศึกษาและปฏิบัติเกี่ยวกับพื้นฐานและการทํางานของบริการเว็บบนระบบอินเทอร์เน็ต (World Wide&nbsp;<span style="font-size: 1rem;">Web) การพัฒนาเว็บไซต์แบบ Dynamic ด้วยโปรแกรมสําเร็จรูปหรือพัฒนาเว็บด้วยโปรแกรมอื่นๆ&nbsp; การติดตั้ง&nbsp;</span><span style="font-size: 1rem;">การบํารุงรักษาระบบ และจัดทําคู่มือ กรณีศึกษา</span></div>', 3, 0, 0, 'ปวส.', '2017-11-01 00:00:17', '2017-11-05 01:58:27'),
(9, '3204-2007', 'การเขียนโปรแกรมคอมพิวเตอร์', '<div><span style="font-weight: bold;">(Computer Programming)&nbsp;</span><br></div><div><span style="font-weight: bold;">จุดประสงค์รายวิชา&nbsp;</span> เพื่อให้</div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; เข้าใจเกี่ยวกับโครงสร้างและองค์ประกอบของโปรแกรมคอมพิวเตอร์</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; มีทักษะในการพัฒนาโปรแกรมคอมพิวเตอร์</div><div>&nbsp; &nbsp; &nbsp;3.&nbsp; มีทักษะในการตรวจสอบและแก้ไขข้อผิดพลาดของโปรแกรม</div><div>&nbsp; &nbsp; &nbsp;4.&nbsp; มีคุณลักษณะนิสัยที่พึงประสงค์ และเจตคติที่ดีในวิชาชีพคอมพิวเตอร์ธุรกิจ</div><div><span style="font-weight: bold;">สมรรถนะรายวิชา</span></div><div>&nbsp; &nbsp; 1.&nbsp; แสดงความรู้เกี่ยวกับหลักการออกแบบและพัฒนาโปรแกรม</div><div>&nbsp; &nbsp; 2.&nbsp; ออกแบบและพัฒนาโปรแกรมในงานธุรกิ จ</div><div><span style="font-weight: bold;">คําอธิบายรายวิชา</span></div><div>&nbsp; &nbsp; ศึกษาและปฏิบัติเกี่ยวกับหลักการเขียนโปรแกรมด้วยภาษาคอมพิวเตอร์ คําสั่งรับและแสดงผลข้อมูล</div><div>ชนิดของข้อมูล&nbsp; โครงสร้างโปรแกรมแบบต่าง ๆ การจัดการแฟ้มข้อมูลเบื้องต้น&nbsp; เครื่องมือช่วยเขียนโปรแกรม</div><div>การเขียนโปรแกรมขนาดเล็กสําหรับงานธุรกิจ&nbsp; กรณีศึกษา</div>', 3, 0, 0, 'ปวส.', '2017-11-01 00:18:00', '2017-11-01 00:21:31'),
(10, '3204-8501', 'โครงการ', '(Project)<div><div><span style="font-weight: bold;">จุดประสงค์รายวิชา</span> เพื่อให้</div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; เข้าใจขั้นตอนและกระบวนการสร้างและหรือพัฒนางานอาชีพอย่างเป็นระบบ</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; สามารถบูรณาการความรู้และทักษะในการสร้างและหรือพัฒนางานในสาขาวิชาชีพ&nbsp;<span style="font-size: 1rem;">ตามกระบวนการวางแผน ดําเนินงาน แก้ไขปัญหา ประเมินผล ทํารายงานและนําเสนอผลงาน</span></div><div>&nbsp; &nbsp; &nbsp;3.&nbsp; มีเจตคติและกิจนิสัยในการศึกษาค้นคว้าเพื่อสร้างและหรือพัฒนางานอาชีพด้วยความรับผิดชอบ&nbsp;<span style="font-size: 1rem;">มีวินัยคุณธรรม จริยธรรม ความคิดริเริ่มสร้างสรรค์ ขยัน อดทนและสามารถทํางานร่วมกับผู้อื่น</span></div><div><span style="font-weight: bold;">สมรรถนะรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;1.&nbsp; แสดงความรู้เกี่ยวกับหลักการและกระบวนการสร้างและหรือพัฒนางานอาชีพอย่างเป็นระบบ</div><div>&nbsp; &nbsp; &nbsp;2.&nbsp; เขียนโครงการสร้างและหรือพัฒนางานตามหลักการ</div><div>&nbsp; &nbsp; &nbsp;3.&nbsp; ดําเนินงานตามแผนงานโครงการตามหลักการและกระบวนการ</div><div>&nbsp; &nbsp; &nbsp;4.&nbsp; เก็บข้อมูลวิเคราะห์สรุปและประเมินผลการดําเนินงานโครงการตามหลักการ</div><div>&nbsp; &nbsp; &nbsp;5.&nbsp; รายงานผลการปฏิบัติงานโครงการตามรูปแบบ</div><div>&nbsp; &nbsp; &nbsp;6.&nbsp; นําเสนอผลการดําเนินงานด้วยรูปแบบวิธีการต่างๆ</div><div><span style="font-weight: bold;">คําอธิบายรายวิชา</span></div><div>&nbsp; &nbsp; &nbsp;ศึกษาและปฏิบัติเกี่ยวกับการบูรณาการความรู้และทักษะในระดับเทคนิคที่สอดคล่องกับสาขาวิชาชีพ<span style="font-size: 1rem;">ที่ศึกษาเพื่อสร้างและหรือพัฒนางานด้วยกระบวนการทดลอง สํารวจ ประดิษฐ์คิดค้น หรือการปฏิบัติงานเชิง</span><span style="font-size: 1rem;">ระบบ การเลือกหัวข้อโครงการการศึกษาค้นคว้าข้อมูลและเอกสารอ้างอิงการเขียนโครงการ การดําเนินงาน</span><span style="font-size: 1rem;">โครงการ การเก็บรวบรวมข้อมูล วิเคราะห์และแปลผล การสรุปจัดทํารายงาน การนําเสนอผลงานโครงการ</span><span style="font-size: 1rem;">ดําเนินการเป็นรายบุคคลหรือกลุ่มตามลักษณะของงานให้แล้วเสร็จในระยะเวลาที่กําหนด</span></div></div>', 4, 0, 0, 'ปวส.', '2017-11-04 13:52:08', '2017-11-05 01:58:50'),
(11, '2204-2006', 'พื้นฐานการเขียนโปรแกรม', '<div><span style="font-family: Tahoma; font-size: medium;"><span style="font-weight: bold;">จุดประสงค์รายวิชา </span>เพื่อให้</span></div><div><span style="font-family: Tahoma; font-size: medium;">&nbsp; &nbsp; &nbsp;1. มีความรู้ความเข้าใจเกี่ยวกับหลักการเขียนโปรแกรม</span></div><div><span style="font-family: Tahoma; font-size: medium;">&nbsp; &nbsp; &nbsp;2. วิเคราะห์งาน ใช้ผังงานและรหัสเทียม เพื่อลําดับขั้นตอนการทํางาน</span></div><div><span style="font-family: Tahoma; font-size: medium;">&nbsp; &nbsp; &nbsp;3. ออกแบบโปรแกรมประยุกต์ทางธุรกิจอย่างง่าย</span></div><div><span style="font-family: Tahoma; font-size: medium;">&nbsp; &nbsp; &nbsp;4. ใช้ภาษาคอมพิวเตอร์เขียนคําสั่งควบคุมการทํางานเบื้องต้น</span></div><div><span style="font-family: Tahoma; font-size: medium;">&nbsp; &nbsp; &nbsp;5. มีคุณธรรม จริยธรรม และค่านิยมที่ดีในการใช้คอมพิวเตอร์</span></div><div><span style="font-weight: bold; font-family: Tahoma; font-size: medium;">สมรรถนะรายวิชา</span></div><div><span style="font-family: Tahoma; font-size: medium;">&nbsp; &nbsp; &nbsp;1. แสดงความรู้เกี่ยวกับหลักการเขียนโปรแกรมและการวิเคราะห์งาน</span></div><div><span style="font-family: Tahoma; font-size: medium;">&nbsp; &nbsp; &nbsp;2. ออกแบบเขียนผังงาน รหัสเทียม ขั้นตอนการแก้ไขปัญหา(Algorithm)&nbsp;</span></div><div><span style="font-family: Tahoma; font-size: medium;">&nbsp; &nbsp; &nbsp;3. เขียนโปรแกรมธุรกิจอย่างง่าย</span></div><div><span style="font-weight: bold; font-family: Tahoma; font-size: medium;">คําอธิบายรายวิชา</span></div><div><span style="font-family: Tahoma; font-size: medium;">&nbsp; &nbsp; &nbsp;ศึกษาและปฏิบัติเกี่ยวกับหลักการเขียนโปรแกรมและการวิเคราะห์งาน&nbsp; ผังงาน รหัสเทียม ขั้นตอนการแก้ไขปัญหา(Algorithm)&nbsp; โครงสร้างภาษาคอมพิวเตอร์ และการใช้กระบวนการเขียนโปรแกรม คําสั่งการคํานวณ เงื่อนไขกรณี และการทําซ้ํา การออกแบบและเขียนโปรแกรมอย่างง่ายเพื่อประยุกต์ในงานธุรกิจ</span></div>', 2, 0, 0, 'ปวช.', '2017-11-05 01:46:08', '2019-04-23 12:09:38'),
(12, '3001-2001', 'เทคโนโลยีสารสนเทศเพื่อการจัดการอาชีพ', '<p><strong style="color: rgba(0, 0, 0, 0.870588);"><span style="font-size: 24px;"><span id="selectionBoundary_1555995330245_1756176899412052" class="rangySelectionBoundary">&#65279;</span><span id="selectionBoundary_1555995331870_963862626101372" class="rangySelectionBoundary">&#65279;</span><span id="selectionBoundary_1555995332928_08881062730035161" class="rangySelectionBoundary">&#65279;</span>จุดประสงค์รายวิชา เพื่อให้ </span></strong></p><p><span style="color: rgba(0, 0, 0, 0.870588);font-size: medium;">1. เข้าใจเกี่ยวกับคอมพิวเตอร์และอุปกรณ์โทรคมนาคม ระบบเครือข่ายคอมพิวเตอร์และสารสนเทศการสืบค้นและสื่อสารข้อมูล</span><span style="color: rgba(0, 0, 0, 0.870588);font-size: medium;">สารสนเทศในงานอาชีพ </span></p><p><span style="color: rgba(0, 0, 0, 0.870588);font-size: medium;">2. สามารถสืบค้น จัดเก็บ ค้นคืน ส่งผ่าน จัดดำเนินการข้อมูลสารสนเทศ นำเสนอและสื่อสารข้อมูลสารสนเทศในงานอาชีพ </span><span style="color: rgba(0, 0, 0, 0.870588);font-size: medium;">โดยใช้คอมพิวเตอร์และอุปกรณ์โทรคมนาคม และโปรแกรมสำเร็จรูปที่เกี่ยวข้อง </span></p><p><span style="color: rgba(0, 0, 0, 0.870588);font-size: medium;">3. มีคุณธรรม จริยธรรมและความรับผิดชอบในการใช้เทคโนโลยีสารสนเทศเพื่อการจัดการอาชีพ</span><br/></p><div><strong style="color: rgba(0, 0, 0, 0.870588);"><span style="font-size: 24px;">ส</span><span style="font-size: 24px;">มรรถนะรายวิชา</span> </strong><br style="color: rgba(0, 0, 0, 0.870588);"/><span style="color: rgba(0, 0, 0, 0.870588);font-size: medium;">1. แสดงความรู้เกี่ยวกับหลักการและกระบวนการสืบค้น จัดดำเนินการและสื่อสารข้อมูลสารสนเทศในงานอาชีพ </span><span style="color: rgba(0, 0, 0, 0.870588);font-size: medium;">โดยใช้คอมพิวเตอร์ อุปกรณ์โทรคมนาคม ระบบเครือข่ายคอมพิวเตอร์และสารสนเทศ และโปรแกรมสำเร็จรูปที่เกี่ยวข้อง </span><br style="color: rgba(0, 0, 0, 0.870588);"/><span style="color: rgba(0, 0, 0, 0.870588);font-size: medium;">2. ใช้คอมพิวเตอร์และอุปกรณ์โทรคมนาคมในการสืบค้นและสื่อสารข้อมูลสารสนเทศผ่านระบบเครือข่ายคอมพิวเตอร์</span><span style="color: rgba(0, 0, 0, 0.870588);font-size: medium;">และสารสนเทศ </span><br style="color: rgba(0, 0, 0, 0.870588);"/><span style="color: rgba(0, 0, 0, 0.870588);font-size: medium;">3. จัดเก็บ ค้นคืน ส่งผ่านและจัดดำเนินการข้อมูลสารสนเทศตามลักษณะงานอาชีพ </span><br style="color: rgba(0, 0, 0, 0.870588);"/><span style="color: rgba(0, 0, 0, 0.870588);font-size: medium;">4. นำเสนอและสื่อสารข้อมูลสารสนเทศในงานอาชีพโดยประยุกต์ใช้โปรแกรมสำเร็จรูป </span><span style="color: rgba(0, 0, 0, 0.870588);font-size: medium;"><br/></span></div><div><p style="color: rgba(0, 0, 0, 0.870588);"><strong><span style="font-size: 24px;">คำอธิบายรายวิชา</span></strong><br/>ศึกษาและปฏิบัติเกี่ยวกับคอมพิวเตอร์และอุปกรณ์โทรคมนาคม ระบบเครือข่ายคอมพิวเตอร์และ สารสนเทศ การสืบค้นข้อมูลสารสนเทศ การจัดเก็บ ค้นคืน ส่งผ่านและจัดดำเนินการข้อมูลสารสนเทศ การประยุกต์ใช้โปรแกรมสำเร็จรูปในการนำเสนอ<br/>และสื่อสารข้อมูลสารสนเทศตามลักษณะงานอาชีพ <span id="selectionBoundary_1555995332927_3952412055552813" class="rangySelectionBoundary">&#65279;</span><span id="selectionBoundary_1555995331870_3855740042404874" class="rangySelectionBoundary">&#65279;</span><span id="selectionBoundary_1555995330245_7046639591197683" class="rangySelectionBoundary">&#65279;</span></p></div>', 3, 0, 0, 'ปวส.', '2019-01-05 21:14:29', '2019-04-23 11:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `course_checktime`
--

CREATE TABLE IF NOT EXISTS `course_checktime` (
  `id` int(11) NOT NULL,
  `student_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `course_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `status` varchar(10) COLLATE utf8_bin NOT NULL,
  `checkin` datetime NOT NULL,
  `checkout` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course_checktime`
--

INSERT INTO `course_checktime` (`id`, `student_id`, `course_id`, `status`, `checkin`, `checkout`) VALUES
(1, '', '', 'Yes', '2017-03-12 01:57:53', '0000-00-00 00:00:00'),
(2, '', '', 'No', '2017-03-12 01:57:56', '0000-00-00 00:00:00'),
(3, '', '', 'Yes', '2017-03-12 01:57:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course_content`
--

CREATE TABLE IF NOT EXISTS `course_content` (
  `id` bigint(20) NOT NULL,
  `course_id` varchar(9) COLLATE utf8_bin NOT NULL,
  `unit_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `recommend` text COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course_content`
--

INSERT INTO `course_content` (`id`, `course_id`, `unit_id`, `title`, `description`, `recommend`, `created`, `modified`) VALUES
(1, '2201-2001', '1', '​ความรู้เกี่ยวการเขียนเว็บไซต์', '<p>​<a href="http://somkiat.sdtc.ac.th/home/public/download/data/2-5.pdf" target="" style="font-size: 2rem;">ความรู้เกี่ยวการเขียนเว็บไซต์</a></p><p><b><span style="font-size: 18pt;">1. โครงสร้างภาษา </span></b><b><span style="font-size: 18pt;">HTML</span></b><br/></p><p style="font-size: 16px;">       HTML ย่อมาจากคำว่า HyperText Markup Language เป็นภาษาที่ใช้สำหรับสร้างเว็บเพจ โดยคำสั่งในภาษา HTML จะทำหน้าที่ควบคุมการแสดงผลของข้อมูลในเว็บเพจ ซึ่งเราสามารถ ควบคุมได้ทั้งสีสัน รูปภาพ ตลอดจนตำแหน่งของสิ่งต่างๆ ที่อยู่บนเว็บเพจ</p><p style="font-size: 16px;">       คำสั่งที่ใช้ควบคุมการแสดงผลใน  HTML นั้นถูกเรียกว่าแท็ก (Tag) ซึ่งมีอยู่มากมายหลายสิบชนิด แต่ละแท็กก็มีหน้าที่แตกต่างกันออกไป เช่น บางแท็กใช้สำหรับกำหนดให้แสดงรูปภาพ บางแท็กใช้สำหรับกำหนดสีฟอนต์หรือขนาดให้กับตัวอักษร</p><p style="font-size: 16px;">       การเขียนภาษา HTML นั้นมีส่วนประกอบหลักอยู่  2 ส่วน คือ ส่วนที่เป็นเนื้อหา และส่วนที่เป็นคำสั่ง</p><p style="font-size: 16px;">       Tag  แบ่งออกเป็น  2  ประเภทคือ</p><p style="font-size: 16px;">       1. แท็กเดี่ยว คือ คำสั่งที่มีคำสั่งเพียงอย่างเดียว ซึ่งสามารถใช้และสิ้นสุดคำสั่งได้ด้วยตัวของมันเอง  เช่น</p><p style="font-size: 16px;">              ข้อความ... &lt;br&gt;</p><p style="font-size: 16px;">              &lt;hr&gt;</p><p style="font-size: 16px;">              &lt;! – ข้อความ -&gt;</p><p style="font-size: 16px;">       2. แท็กคู่ คือ คำสั่งที่ต้องมีส่วนเริ่มต้นและส่วนจุดจบของคำสั่งนั้นๆ โดยแท็กที่เป็นส่วนจบนั้นจะมีเครื่องหมาย (/) ติดเอาไว้ เช่น</p><p style="font-size: 16px;">              &lt;html&gt; ส่วนของเนื้อหา ... &lt;/html&gt;</p><p style="font-size: 16px;">              &lt;center&gt; ข้อความ... &lt;/center&gt;</p><p style="font-size: 16px;">              &lt;p&gt; ข้อความ... &lt;/p&gt;</p><p style="font-size: 16px;">       ถ้าหากมีการใช้แท็กคู่หลายๆ คำสั่ง เช่น คำสั่งตัวขีดเส้นใต้ &lt;U&gt; …&lt;/U&gt; และตามด้วย     คำสั่งตัวเอียง &lt;I&gt;…&lt;/I&gt;  จะต้องปิดคำสั่งตัวเอียงก่อน แล้วจึงจะมาปิดคำสั่งตัวหนา</p><p style="font-size: 16px;">              &lt;I&gt; &lt;U&gt; ข้อความ... &lt;/U&gt; &lt;/I&gt;</p><p style="font-size: 16px;">       โครงสร้างหลัก</p><p style="font-size: 16px;">              &lt;HTML&gt;</p><p style="font-size: 16px;">              &lt;HEAD&gt;</p><p style="font-size: 16px;">              &lt;TITLE&gt;  ส่วนหัวของเอกสาร  &lt;/TITLE&gt;</p><p style="font-size: 16px;">              &lt;/HEAD&gt;</p><p style="font-size: 16px;">              &lt;BODY&gt;  ส่วนของเนื้อหาในเอกสาร &lt;/BODY&gt;</p><p style="font-size: 16px;">              &lt;/HTML&gt;</p><p style="font-size: 16px;">       คำสั่งหลัก &lt;HTML&gt;…&lt;/HTML&gt; เป็นคำสั่งที่ไว้กำหนดจุดเริ่มต้นและจุดจบของเอกสาร</p><p style="font-size: 16px;">       คำสั่งหลัก &lt;HEAD&gt;…&lt;/HEAD&gt; เป็นคำสั่งที่ทำหน้าที่กำหนดส่วนหัวเรื่อง โดยภายใน  คำสั่งนี้จะประกอบไปด้วย</p><p style="font-size: 16px;">       คำสั่งหลัก &lt;TITLE&gt;…&lt;/TITLE&gt;  เป็นคำสั่งที่ใช้กำหนดข้อความที่ต้องการให้ขึ้นอยู่ในส่วนของ Title Bar โดยสามารถพิมพ์ได้ยาว 64 ตัวอักษร</p><p style="font-size: 16px;">       คำสั่งหลัก  &lt;BODY&gt;…&lt;/BODY&gt; เป็นคำสั่งที่ใช้ในการกำหนดรูปแบบของเอกสาร       ทั้งหมดว่าจะให้มีลักษณะอย่างไร</p><p style="font-size: 16px;"><span style="font-size: 8pt;"></span></p><p style="font-size: 16px;"><span style="font-size: 18pt;"><b>2. การกำหนดตัวอักษร</b></span><span style="font-size: 18pt;"></span></p><p style="font-size: 16px;">       2.1 การกำหนดรูปแบบตัวอักษร ในข้อความที่อยู่ภายใน เช่น ฟอนต์  สี และขนาดตัวอักษร</p><p style="font-size: 16px;">รูปแบบ</p><p style="font-size: 16px;">              &lt;font face = “text”&gt; … &lt;/font&gt; กำหนดแบบอักษร</p><p style="font-size: 16px;">              &lt;font size = “number”&gt; … &lt;/font&gt; กำหนดขนาดตัวอักษร</p><p style="font-size: 16px;">              &lt;font color = “color”&gt; … &lt;/font&gt; กำหนดสีตัวอักษร</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;"><span style="font-size: 17.5px;">&lt;html&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;head&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;title&gt;  Font Web page &lt;/title&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;/head&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;body&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;font size=&#34;3&#34;&gt; INFORMATION TECNOLOGY &lt;/font&gt; &lt;br&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;font color=&#34;blue&#34;&gt; information technology&lt;/font&gt; &lt;br&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;font face=&#34;JasmineUPC&#34;&gt; information technology&lt;/font&gt; &lt;br&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;font size=&#34;5&#34; color=&#34;#0000ff&#34;&gt; information technology&lt;/font&gt; &lt;br&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 17.5px;">&lt;font face=&#34;AngsanaUPC&#34; color=&#34;green&#34;&gt; information technology&lt;/font&gt; &lt;br&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 17.5px;">&lt;/body&gt;</span></p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;"><span style="font-size: 16pt;"></span></p><p style="font-size: 16px;"><span style="font-size: 16pt;"></span></p><p style="font-size: 16px;"><span style="font-size: 16pt;"></span></p><p style="font-size: 16px;">2.2 การกำหนดข้อความแบบตัวหนา ใช้กำหนดข้อความที่อยู่ภายในคำสั่งให้แสดงผลด้วยตัวอักษรตัวหนา</p><p style="font-size: 16px;">รูปแบบ     &lt;b&gt;…&lt;/b&gt;</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;head&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;title&gt;Bold Tag&lt;/title&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;/head&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;body&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;font size=&#34;4&#34;&gt;  Normal Text &lt;br&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;b&gt; Bold Text&lt;/b&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;/font&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">&lt;/body&gt;</span></p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;"><span style="font-size: 16pt;">2.3 การกำหนดข้อความแบบตัวเอียง</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">       รูปแบบ    </span><span style="font-size: 16pt;">&lt;I&gt;…&lt;/I&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">2.4 การกำหนดข้อความขีดเส้นใต้</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">       รูปแบบ   </span><span style="font-size: 16pt;">&lt;U&gt;…&lt;/U&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">2.5 การกำหนดข้อความตัวขีดเส้นทับ</span></p><p style="font-size: 16px;"><span style="font-size: 16pt;">       รูปแบบ  </span><span style="font-size: 16pt;">&lt;S&gt;…&lt;/S&gt;  หรือ  &lt;STRIKE&gt;…&lt;/STRIKE&gt;</span></p><p style="font-size: 16px;"><b><span style="font-size: 8pt;"></span></b></p><p style="font-size: 16px;"><b><span style="font-size: 18pt;">3. การจัดรูปแบบเอกสาร</span></b><b><span style="font-size: 18pt;"></span></b></p><p style="font-size: 16px;">       3.1 การกำหนดหัวข้อ  ใช้ในการกำหนดขนาดให้กับข้อความที่เป็นหัวเรื่องในเอกสารที่มีหัวข้อเป็นปลีกย่อย สามารถแยกเป็นลำดับของหัวเรื่องได้อย่างชัดเจน</p><p style="font-size: 16px;">       รูปแบบ   &lt;hx&gt;…&lt;/hx&gt;</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;"><span style="font-size: 10pt;">&lt;html&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 10pt;">&lt;head&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 10pt;">&lt;title&gt; Education Technology &lt;/title&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 10pt;">&lt;/head&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 10pt;">&lt;body&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 10pt;">&lt;h1&gt;Test Heading if x=1&lt;/h1&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 10pt;">&lt;h2&gt;Test Heading if x=2 &lt;/h2&gt;</span></p><p style="font-size: 16px;"><span style="font-size: 10pt;">&lt;/body&gt;</span></p><p style="font-size: 16px;"><tt><span style="font-size: 10pt;">&lt;/html&gt;</span></tt></p><p style="font-size: 16px;">       3.2  การกำหนดจุดสิ้นสุดบรรทัด  ใช้ในการกำหนดจุดสิ้นสุดบรรทัด และขึ้นบรรทัดใหม่ คำสั่งนี้เหมือนการกด Enter บนคีย์บอร์ด</p><p style="font-size: 16px;">       รูปแบบ    ...&lt;br&gt;</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;"><tt><span style="font-size: 10pt;">&lt;html&gt;</span></tt></p><p style="font-size: 16px;"><tt><span style="font-size: 10pt;">&lt;head&gt;</span></tt></p><p style="font-size: 16px;"><tt><span style="font-size: 10pt;">&lt;title&gt; Break Rule Tag &lt;/title&gt;</span></tt></p><p style="font-size: 16px;"><tt><span style="font-size: 10pt;">&lt;/head&gt;</span></tt></p><p style="font-size: 16px;"><tt><span style="font-size: 10pt;">&lt;body&gt;</span></tt></p><p style="font-size: 16px;"><tt><span style="font-size: 10pt;">คุณเป็นคนน่ารัก</span></tt></p><p style="font-size: 16px;"><tt><span style="font-size: 10pt;">คุณเป็นคนน่ารัก</span></tt></p><p style="font-size: 16px;"><tt><span style="font-size: 10pt;">เชื่อหรือไม่</span></tt><tt><span style="font-size: 10pt;"> &lt;br&gt;</span></tt></p><p style="font-size: 16px;"><tt><span style="font-size: 10pt;">แน่นอนที่สุด</span></tt><tt><span style="font-size: 10pt;"> &lt;br&gt;</span></tt></p><p style="font-size: 16px;"><tt><span style="font-size: 10pt;">&lt;/body&gt;</span></tt></p><p style="font-size: 16px;"><tt><span style="font-size: 10pt;">&lt;/html&gt;</span></tt></p><p style="font-size: 16px;">       3.3  การขึ้นย่อหน้าใหม่  ใช้แสดงข้อความในลักษณะพารากราฟ หรือย่อหน้าในเว็บเพจ และยังสามารถใช้ในการขึ้นบรรทัดใหม่ครั้งละ 2 บรรทัด</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;p&gt;…&lt;/p&gt;</p><p style="font-size: 16px;">              &lt;p align = “left/center/right”&gt;…&lt;/p&gt;</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt; Paragraph Tag &lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body&gt;</p><p style="font-size: 16px;">&lt;p&gt; ประโยคที่ 1 Test Normal</p><p style="font-size: 16px;">&lt;p align=&#34;right&#34;&gt; ประโยคที่ 2  Paragraph Test Right</p><p style="font-size: 16px;">&lt;p align=&#34;center&#34;&gt; ประโยคที่ 3 Paragraph Test Center</p><p style="font-size: 16px;">&lt;p align=&#34;left&#34;&gt; ประโยคที่ 4  Paragraph Test Left</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;">       3.4  แสดงข้อความแบบจัดกึ่งกลาง ใช้แสดงข้อความหรือรูปภาพ ใช้จัดกึ่งกลางเว็บเพจ</p><p style="font-size: 16px;">       รูปแบบ   &lt;center&gt;…&lt;/center&gt;</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;"><span style="font-size: 1rem;">&lt;html&gt;</span></p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt; Paragraph Tag &lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body&gt;</p><p style="font-size: 16px;">Test Normal Message</p><p style="font-size: 16px;">&lt;center&gt; Test Center Message &lt;/center&gt;</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;">       3.5  การแสดงเส้นคั่นทางแนวนอน ใช้แสดงเส้นคั่นแนวนอน โดยใช้ในการแบ่งเนื้อหาหรือคั่นเพื่อความสวยงามและความเป็นระเบียบของเนื้อหา</p><p style="font-size: 16px;">       รูปแบบ  &lt;hr&gt;</p><p style="font-size: 16px;">              &lt;hr align = “left/center/right”&gt;   กำหนดตำแหน่งเส้น</p><p style="font-size: 16px;">              &lt;hr width = “pixels or %”&gt;       กำหนดความยาวเส้น</p><p style="font-size: 16px;">              &lt;hr size = “pixels”&gt;                กำหนดขนาดเส้น</p><p style="font-size: 16px;">              &lt;hr noshade&gt;                 กำหนดลักษณะเส้น</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt; Horizontal Rule Tag &lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body&gt;</p><p style="font-size: 16px;">&lt;hr&gt;</p><p style="font-size: 16px;">&lt;hr width=&#34;100%&#34;&gt;</p><p style="font-size: 16px;">&lt;hr width=&#34;300&#34;&gt;</p><p style="font-size: 16px;">Rajabhat Thepsatri&lt;hr size=&#34;3&#34; color =&#34;blue&#34;&gt;</p><p style="font-size: 16px;">&lt;hr align=&#34;right&#34; color = &#34;red&#34;&gt;</p><p style="font-size: 16px;">&lt;hr align=&#34;center&#34; width=&#34;75% size=&#34;3&#34;&gt;</p><p style="font-size: 16px;">&lt;hr noshade&gt;</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;"><b><span style="font-size: 8pt;"></span></b></p><p style="font-size: 16px;"><b><span style="font-size: 18pt;">4. </span></b><b><span style="font-size: 18pt;">การกำหนดหัวข้อเรื่อง</span></b><b><span style="font-size: 18pt;"></span></b></p><p style="font-size: 16px;">       4.1 การแสดงรายการแบบไม่มีเลขลำดับ  ใช้แสดงรายการข้อมูลแบบแจกแจงเป็นข้อๆ โดยไม่มีเลขลำดับ จะมีสัญลักษณ์นำหน้าข้อมูลแต่ละหัวข้อแทน โดยใช้คำสั่ง &lt;LI&gt; ในการสร้างหัวข้อแต่ละหลายรายการ</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;UL&gt;       ข้อความส่วนหัว</p><p style="font-size: 16px;">              &lt;LI&gt; ข้อความย่อย</p><p style="font-size: 16px;">              &lt;LI&gt; ข้อความย่อย</p><p style="font-size: 16px;">              &lt;/UL&gt;</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;"><span style="font-size: 1rem;">&lt;title&gt;Unnorder List Tag&lt;/title&gt;</span></p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body&gt;</p><p style="font-size: 16px;">Microsoft Office Program</p><p style="font-size: 16px;">&lt;ul&gt;</p><p style="font-size: 16px;">&lt;li&gt; Microsoft Word</p><p style="font-size: 16px;">&lt;li&gt; Microsoft Excel</p><p style="font-size: 16px;">&lt;li&gt; Microsoft Power Point</p><p style="font-size: 16px;">&lt;/ul&gt;</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;">       4.2  การแสดงรายการแบบเมนูลิสต์  ใช้แสดงรายการข้อมูลแบบแจกแจงเป็นข้อๆ ที่ไม่ซับซ้อน มีลักษณะคล้ายกับคำสั่ง &lt;UL&gt;</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;MENU&gt;  ข้อความส่วนหัว</p><p style="font-size: 16px;">              &lt;LI&gt;  ข้อความย่อย</p><p style="font-size: 16px;">              &lt;/MENU&gt;</p><p style="font-size: 16px;">       4.3  การแสดงรายการแบบใช้ตัวเลข  เป็นการแสดงรายการแบบแจกแจงเป็นข้อๆ โดยใช้หมายเลขกำกับในการเรียงลำดับ โดยสร้างรายการจากคำสั่ง &lt;LI&gt; และยังสามารถกำหนดรูปแบบของหมายเลขกำกับได้ด้วยให้เป็นเลขอารบิก, เลขโรมัน หรือตัวอักษร</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;OL TYPE = “1 / a / A / i / I” start = “number”&gt;   ข้อความส่วนหัว</p><p style="font-size: 16px;">              &lt;LI&gt;  ข้อความย่อย</p><p style="font-size: 16px;">              &lt;/OL&gt;</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt;Order List Tag&lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body&gt;</p><p style="font-size: 16px;">&lt;h1&gt;Order List&lt;/h1&gt;</p><p style="font-size: 16px;">&lt;ol&gt;</p><p style="font-size: 16px;">&lt;li&gt;Item One&lt;li&gt;Item Two&lt;li&gt;Item Three</p><p style="font-size: 16px;">&lt;/ol&gt;</p><p style="font-size: 16px;">&lt;ol type=&#34;A&#34; start=&#34;5&#34;&gt;</p><p style="font-size: 16px;">&lt;li&gt;Item Four&lt;li&gt;Item Five</p><p style="font-size: 16px;">&lt;ol type=&#34;i&#34;&gt;</p><p style="font-size: 16px;">&lt;li&gt;Item Six&lt;li&gt;Item Seven</p><p style="font-size: 16px;">&lt;/ol&gt;&lt;/ol&gt;</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;">       4.4  การใส่เครื่องหมายหน้าหัวข้อ  เป็นการแสดงรายการโดยใช้เครื่องหมายในแต่ละ     รายการย่อย</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;UL type = “option”&gt;</p><p style="font-size: 16px;">              &lt;LI&gt;  ข้อความย่อย</p><p style="font-size: 16px;">              &lt;/UL&gt;</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt; การทำเครื่องหมายหน้าหัวข้อ&lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;BODY bgcolor=white&gt;</p><p style="font-size: 16px;">&lt;font face=&#34;ms sans serif&#34; size=3&gt; สาขาที่เปิดสอน 3 สาขาดังนี้ &lt;BR&gt;</p><p style="font-size: 16px;">แบบ Disc &lt;br&gt;</p><p style="font-size: 16px;">&lt;UL Type=&#34;Disc&#34;&gt;</p><p style="font-size: 16px;">&lt;Li&gt; คอมพิวเตอร์ธุรกิจ</p><p style="font-size: 16px;">&lt;Li&gt; บัญชี</p><p style="font-size: 16px;">&lt;/UL&gt;</p><p style="font-size: 16px;">แบบ Square &lt;br&gt;</p><p style="font-size: 16px;">&lt;UL Type=&#34;square&#34;&gt;</p><p style="font-size: 16px;">&lt;Li&gt; คอมพิวเตอร์ธุรกิจ</p><p style="font-size: 16px;">&lt;Li&gt; บัญชี</p><p style="font-size: 16px;">&lt;/UL&gt;</p><p style="font-size: 16px;">แบบ Circle&lt;br&gt;</p><p style="font-size: 16px;">&lt;UL Type=&#34;Circle&#34;&gt;</p><p style="font-size: 16px;">&lt;Li&gt; คอมพิวเตอร์ธุรกิจ</p><p style="font-size: 16px;">&lt;Li&gt; บัญชี</p><p style="font-size: 16px;">&lt;/font&gt; </p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;">       4.5 การแสดงรายการโดยกำหนดหัวข้อ  ใช้แสดงรายการแบบให้คำนิยาม โดยแบ่ง       องค์ประกอบเป็น 2 ส่วน ส่วนที่อยู่บนคือหัวข้อ  โดยใช้คำสั่ง &lt;DT&gt; ส่วนที่อยู่ด้านล่างคือคำอธิบายใช้คำสั่ง &lt;DD&gt; โดยหากจะให้ ส่วนหัวข้ออยู่ทางซ้าย แล้วคำอธิบายอยู่ทางขวาก็ให้ใช้ attribute COMPACT  ในกรณีที่รายการเป็นข้อความสั้นๆ</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;DL&gt;  ข้อความส่วนหัว</p><p style="font-size: 16px;">              &lt;DT&gt;  หัวข้อ   &lt;DD&gt;  คำอธิบาย</p><p style="font-size: 16px;">              &lt;/DL&gt;</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt;Definition Tag&lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body&gt;</p><p style="font-size: 16px;">&lt;h1&gt; Domain Name&lt;/h1&gt;</p><p style="font-size: 16px;">&lt;dl&gt;</p><p style="font-size: 16px;">&lt;dt&gt;com&lt;dd&gt;องค์การเอกชน</p><p style="font-size: 16px;">&lt;dt&gt;edu&lt;dd&gt;สถาบันการศึกษา</p><p style="font-size: 16px;">&lt;/dl&gt;</p><p style="font-size: 16px;">&lt;p&gt;</p><p style="font-size: 16px;">&lt;dl compact&gt;</p><p style="font-size: 16px;">&lt;dt&gt;org&lt;dd&gt;องค์กรไม่แสวงผลกำไร</p><p style="font-size: 16px;">&lt;dt&gt;gov&lt;dd&gt;องค์การของรัฐ</p><p style="font-size: 16px;">&lt;/dl&gt;</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;"><span style="font-size: 8pt;"></span></p><p style="font-size: 16px;"><b><span style="font-size: 18pt;">5. </span></b><b><span style="font-size: 18pt;"> การใส่รูปภาพ</span></b><b><span style="font-size: 18pt;"></span></b></p><p style="font-size: 16px;">       5.1 การใส่รูปภาพในเอกสาร  เช่น  GIF, JPEG  เป็นต้น</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;IMG SRC = “url”&gt;</p><p style="font-size: 16px;">              &lt;IMG align = “top / middle / bottom / left / right”&gt; การกำหนดตำแหน่งให้กับรูปภาพ</p><p style="font-size: 16px;">              &lt;IMG width = “pixels”&gt;   การกำหนดความกว้างรูปภาพ</p><p style="font-size: 16px;">              &lt;IMG height = “pixels”&gt;  การกำหนดความสูงของรูปภาพ</p><p style="font-size: 16px;">              &lt;IMG border = “number”&gt; การกำหนดช่องว่างแนวนอนระหว่างรูปภาพกับข้อความ</p><p style="font-size: 16px;">              &lt;IMG vspace = “number”&gt; การกำหนดช่องว่างแนวตั้งระหว่างรูปภาพกับข้อความ</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt; Image Tags&lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body&gt;</p><p style="font-size: 16px;">&lt;img src=&#34;love.jpg&#34; width=&#34;100&#34; height=&#34;80&#34;&gt;</p><p style="font-size: 16px;">&lt;p&gt;&lt;p&gt;</p><p style="font-size: 16px;">&lt;img src=&#34;love.jpg&#34; align=&#34;top&#34; hspace=&#34;2&#34;&gt;TEST IMAGE TAG</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;">       5.2 การทำพื้นฉากหลัง   เป็นการนำรูปภาพมาทำเป็น background</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;BODY BACKGROUND = “ชื่อไฟล์รูปภาพ”&gt;</p><p style="font-size: 16px;">              &lt;BODY BGCOLOR = “ชื่อสี / รหัสสี”&gt;  กำหนดสีพื้นหลังของเว็บ</p><p style="font-size: 16px;"><span style="font-size: 8pt;"></span></p><p style="font-size: 16px;"><b><span style="font-size: 18pt;">6.  การสร้างตาราง</span></b></p><p style="font-size: 16px;">       6.1 การสร้างตาราง  ใช้ในการสร้างตารางข้อมูล โดยจะมีคำสั่งที่ใช้ร่วมกันคือ คำสั่ง &lt;TR&gt; ในการสร้างแถวเซลล์ข้อมูล, คำสั่ง &lt;TD&gt; ในการสร้างเซลล์ข้อมูล, คำสั่ง &lt;TH&gt; ในการสร้างหัวตาราง</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;TABLE&gt;…&lt;/TABLE&gt;</p><p style="font-size: 16px;">              &lt;table bgcolor = “color”&gt; … &lt;/table&gt;  กำหนดสีพื้นในตาราง</p><p style="font-size: 16px;">              &lt;table border = “pixels”&gt; … &lt;/table&gt;  กำหนดขนาดของขอบตาราง</p><p style="font-size: 16px;">              &lt;table width = “pixels / %&gt;” … &lt;/table&gt;  กำหนดความกว้างของตาราง</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt; Table Tags &lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body&gt;</p><p style="font-size: 16px;">&lt;table&gt;</p><p style="font-size: 16px;">&lt;tr&gt;</p><p style="font-size: 16px;">&lt;th&gt;หัวข้อที่ 1&lt;/th&gt;</p><p style="font-size: 16px;">&lt;th&gt;หัวข้อที่ 2 &lt;/th&gt;</p><p style="font-size: 16px;">&lt;th&gt;หัวข้อที่ 3 &lt;/th&gt;</p><p style="font-size: 16px;">&lt;/tr&gt;</p><p style="font-size: 16px;">&lt;tr&gt;</p><p style="font-size: 16px;">&lt;td&gt;ข้อมูล&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;ข้อมูล&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;ข้อมูล&lt;/td&gt;</p><p style="font-size: 16px;">&lt;/tr&gt;</p><p style="font-size: 16px;">&lt;tr&gt;</p><p style="font-size: 16px;">&lt;td&gt;ข้อมูล&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;ข้อมูล&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;ข้อมูล&lt;/td&gt;</p><p style="font-size: 16px;">&lt;/tr&gt;</p><p style="font-size: 16px;">&lt;/table&gt;</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;">       6.2 กำหนดข้อความกำกับตาราง  ใช้แสดงคำอธิบายหรือข้อความประกอบตารางไว้บนส่วนบนหรือส่วนล่างของตารางข้อมูล</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;caption align = “top / bottom / left / right”&gt;  กำหนดตำแหน่งของคำอธิบายตาราง</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt; Table Tags &lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body&gt;</p><p style="font-size: 16px;">&lt;table border&gt;</p><p style="font-size: 16px;">&lt;caption align=&#34;top&#34;&gt;ตารางรายรับรายจ่ายประจำเดือน&lt;/caption&gt;</p><p style="font-size: 16px;">&lt;tr&gt;</p><p style="font-size: 16px;">&lt;th&gt;เดือน&lt;/th&gt;</p><p style="font-size: 16px;">&lt;th&gt;มกราคม&lt;/th&gt;</p><p style="font-size: 16px;">&lt;th&gt;กุมภาพันธ์&lt;/th&gt;</p><p style="font-size: 16px;">&lt;th&gt;มีนาคม&lt;/th&gt;</p><p style="font-size: 16px;">&lt;/tr&gt;</p><p style="font-size: 16px;">&lt;tr&gt;</p><p style="font-size: 16px;">&lt;td&gt;รายรับ&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;25000&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;23000&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;24500&lt;/td&gt;</p><p style="font-size: 16px;">&lt;/tr&gt;</p><p style="font-size: 16px;">&lt;tr&gt;</p><p style="font-size: 16px;">&lt;td&gt;รายจ่าย&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;21000&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;22500&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;23100&lt;/td&gt;</p><p style="font-size: 16px;">&lt;/tr&gt;</p><p style="font-size: 16px;">&lt;/table&gt;</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;">       6.3  การสร้างแถวของตาราง  เป็นการสร้างแถวเซลล์ข้อมูล เพื่อไว้สร้างเซลล์ข้อมูลและการสร้างหัวเรื่องของตาราง</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;tr align = “left / center / right”&gt; … &lt;/tr&gt;   กำหนดตำแหน่งของข้อความ</p><p style="font-size: 16px;">              &lt;tr bgcolor = “color”&gt; … &lt;/tr&gt;   กำหนดสีพื้นหลังในตาราง</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt; Table Tags &lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body&gt;</p><p style="font-size: 16px;">&lt;table border&gt;</p><p style="font-size: 16px;">&lt;tr align=&#34;center&#34; bgcolor=&#34;lightblue&#34;&gt;</p><p style="font-size: 16px;">&lt;th&gt;สินค้า&lt;/th&gt;</p><p style="font-size: 16px;">&lt;th&gt;โทรทัศน์&lt;/th&gt;</p><p style="font-size: 16px;">&lt;th&gt;วิทยุ&lt;/th&gt;</p><p style="font-size: 16px;">&lt;th&gt;ตู้เย็น&lt;/th&gt;</p><p style="font-size: 16px;">&lt;/tr&gt;</p><p style="font-size: 16px;">&lt;tr align=&#34;right&#34; bgcolor=&#34;orange&#34;&gt;</p><p style="font-size: 16px;">&lt;td&gt;ราคา&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;7000&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;1750&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;9500&lt;/td&gt;</p><p style="font-size: 16px;">&lt;/tr&gt;</p><p style="font-size: 16px;">&lt;/table&gt;</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;">       6.4  การสร้างหัวเรื่องของตาราง เป็นการสร้างเซลล์ หัวตาราง ซึ่งทำหน้าที่กำกับเซลล์ข้อมูลในแนวคอลัมน์ที่กำหนด</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;th align = “left / right / center / justify / char”&gt; … &lt;/th&gt; กำหนดตำแหน่งของ ข้อความในตารางตามแนวนอน</p><p style="font-size: 16px;">              &lt;th valign = “top / middle / bottom / baseline”&gt; … &lt;/th&gt;  กำหนดตำแหน่งของข้อความในตารางตามแนวตั้ง</p><p style="font-size: 16px;">              &lt;th bgcolor = “color”&gt; … &lt;/th&gt;  กำหนดสีพื้นของตาราง</p><p style="font-size: 16px;">              &lt;th height = “pixels / %”&gt; … &lt;/th&gt;  กำหนดความสูงของตาราง</p><p style="font-size: 16px;">              &lt;th width = “pixels / %”&gt; … &lt;/th&gt;  กำหนดความกว้างของตาราง</p><p style="font-size: 16px;">              &lt;th rowspan = “number”&gt; … &lt;/th&gt;  กำหนดการรวมช่องเซลล์ในแนวตั้ง</p><p style="font-size: 16px;">              &lt;th colspan = “number”&gt; … &lt;/th&gt;  กำหนดการรวมช่องเซลล์ในแนวนอน</p><p style="font-size: 16px;">       6.5  การสร้างเซลล์ข้อมูล  ใช้สร้างเซลล์ข้อมูลเพื่อใช้ในการแสดงข้อมูลรายละเอียดต่างๆ ของเอกสาร</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;td align = “left / right / center / justify / char”&gt; … &lt;/td&gt; กำหนดตำแหน่งของ  ข้อความในตารางตามแนวนอน</p><p style="font-size: 16px;">              &lt;td valign = “top / middle / bottom / baseline”&gt; … &lt;/td&gt;  กำหนดตำแหน่งของข้อความในตารางตามแนวตั้ง</p><p style="font-size: 16px;">              &lt;td bgcolor = “color”&gt; … &lt;/td&gt;  กำหนดสีพื้นของตาราง</p><p style="font-size: 16px;">              &lt;td height = “pixels / %”&gt; … &lt;/td&gt;  กำหนดความสูงของตาราง</p><p style="font-size: 16px;">              &lt;td width = “pixels / %”&gt; … &lt;/td&gt;  กำหนดความกว้างของตาราง</p><p style="font-size: 16px;">              &lt;td rowspan = “number”&gt; … &lt;/td&gt;  กำหนดการรวมช่องเซลล์ในแนวตั้ง</p><p style="font-size: 16px;">              &lt;td colspan = “number”&gt; … &lt;/td&gt;  กำหนดการรวมช่องเซลล์ในแนวนอน</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt; Table Tags &lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body&gt;</p><p style="font-size: 16px;">&lt;table border&gt;</p><p style="font-size: 16px;">&lt;tr&gt;</p><p style="font-size: 16px;">&lt;th colspan=&#34;2&#34; bgcolor=&#34;#ffffe0&#34;&gt;CPU&lt;/th&gt;</p><p style="font-size: 16px;">&lt;th colspan=&#34;2&#34;&gt;RAM&lt;/th&gt;</p><p style="font-size: 16px;">&lt;/tr&gt;</p><p style="font-size: 16px;">&lt;tr&gt;</p><p style="font-size: 16px;">&lt;td rowspan=&#34;2&#34;&gt;Mhz&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;450&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;500&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;550&lt;/td&gt;</p><p style="font-size: 16px;">&lt;/tr&gt;</p><p style="font-size: 16px;">&lt;tr&gt;</p><p style="font-size: 16px;">&lt;td&gt;600&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;700&lt;/td&gt;</p><p style="font-size: 16px;">&lt;td&gt;750&lt;/td&gt;</p><p style="font-size: 16px;">&lt;/tr&gt;</p><p style="font-size: 16px;">&lt;/table&gt;</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><p style="font-size: 16px;"><span style="font-size: 8pt;"></span></p><p style="font-size: 16px;"><b><span style="font-size: 18pt;">7. </span></b><b><span style="font-size: 18pt;">การเชื่อมโยงเว็บเพจ</span></b><b><span style="font-size: 18pt;"></span></b></p><p style="font-size: 16px;">       7.1 การสร้างจุดเชื่อมโยง  ทำหน้าที่กำหนดข้อความหรือรูปภาพที่อยู่ภายในให้ทำหน้าที่เป็นจุดเชื่อมโยงไปยังเว็บเพจอื่นๆ หรือข้อมูลชนิดต่างๆ</p><p style="font-size: 16px;">       รูปแบบ</p><p style="font-size: 16px;">              &lt;a href = “ชื่อรูปภาพหรือข้อความ”&gt;…&lt;/a&gt;</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt; Image Tags&lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body&gt;</p><p style="font-size: 16px;">&lt;a href=&#34;test.html&#34;&gt;Click Here&lt;/a&gt;&lt;br&gt;</p><p style="font-size: 16px;">&lt;br&gt;</p><p style="font-size: 16px;">&lt;a href=&#34;love.jpg&#34;&gt;&lt;img src=&#34;love.jpg&#34;&gt;&lt;/a&gt;</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><blockquote style="font-size: 16px;"><p>7.2 การกำหนดสีให้จุดเชื่อมโยง  เป็นการกำหนดสีอักษรที่จุดเชื่อมโยง โดย</p><p>7.2.1   link  คือสีจุดเชื่อมโยงที่ยังไม่ได้ทำการคลิก</p><p>7.2.2  vlink  คือสีจุดเชื่อมโยงที่ไปยังเป้าหมายแล้ว</p><p>7.2.3  alink  คือสีจุดเชื่อมโยงที่ไปอยู่ขณะนั้น</p></blockquote><p style="font-size: 16px;">นอกจากนี้ยังมี  text  คือสีตัวหนังสือธรรมดา และ bgcolor คือสีพื้นหลังของเอกสาร</p><p style="font-size: 16px;">รูปแบบ</p><p style="font-size: 16px;">       &lt;BODY TAG = “color”&gt;</p><p style="font-size: 16px;">ตัวอย่าง</p><p style="font-size: 16px;">&lt;html&gt;</p><p style="font-size: 16px;">&lt;head&gt;</p><p style="font-size: 16px;">&lt;title&gt; Image Tags&lt;/title&gt;</p><p style="font-size: 16px;">&lt;/head&gt;</p><p style="font-size: 16px;">&lt;body bgcolor=&#34;black&#34; text=&#34;write&#34; link=&#34;yellow&#34; vlink=&#34;lime&#34; alink=&#34;aqua&#34;&gt;</p><p style="font-size: 16px;">&lt;a href=&#34;page06c.html&#34;&gt;Click Here&lt;/a&gt;&lt;br&gt;&lt;br&gt;</p><p style="font-size: 16px;">&lt;a href=&#34;page06d.html&#34;&gt;Click Here&lt;/a&gt;</p><p style="font-size: 16px;">&lt;/body&gt;</p><p style="font-size: 16px;">&lt;/html&gt;</p><!--EndFragment--><p><br/></p><p><br/></p>', '', '2017-01-04 22:32:08', '2018-01-26 23:50:49'),
(2, '2201-2001', '2', 'โครงสร้างภาษา HTML เบื้องต้น', '<div><p>​</p><div><br/></div><img src="https://sites.google.com/site/class0223/_/rsrc/1468756044004/learnhtml/html.JPG"/></div><p><br/></p><p><img src="https://krunopict.files.wordpress.com/2011/11/html.jpg"/>​</p>', '', '2017-01-04 22:44:39', '2018-01-27 01:42:28'),
(3, '2001', '1', 'ff', '', 'f', '2017-01-05 00:44:50', '2017-01-05 00:45:58'),
(4, '2201-2222', '1', 'ระบบจำนวน', '', '', '2017-01-07 00:18:39', '2017-01-28 22:46:54'),
(5, '2201-2001', '3', 'เครื่องมือในการเขียนเว็ไซต์', '<p><img class="ta-insert-video" src="https://img.youtube.com/vi/h0gKyQrH9fE/hqdefault.jpg" ta-insert-video="https://www.youtube.com/embed/h0gKyQrH9fE" contenteditable="false" allowfullscreen="true" frameborder="0"/>​</p><h1><a href="https://www.youtube.com/watch?v=h0gKyQrH9fE" target="">คลิกเข้าชมวีดีโอ</a></h1>', '', '2017-01-19 18:36:17', '2018-01-26 23:57:07'),
(6, '2201-2001', '4', 'การติดตั้งใช้งาน Sublimetext', '<p>ขั้นตอนติดตั้ง Package Control สำหรับ Sublime Text<br/></p><p>มีวิธีติดตั้ง 2 แบบ คือ<br/><br/>แบบติดตั้งผ่าน Console<br/><br/>1. ไปที่ View -&gt; Show Console<br/><br/>sublime_text_show_console<br/><br/>2. นำโค้ดชุดนี้ลงไปวาง แล้วกด Enter<br/></p><p>3. เมื่อติดตั้งเสร็จก็ทำการ เปิด ปิด โปรแกรมใหม่<br/><br/>4. กด Control + Shift + P (Windows) หรือ Cmd + Shift + P (Mac OSX) เพื่อเปิดหน้าต่างจัดการ Package<br/><br/>sublime_text_package_control</p><p><img src="https://i2.wp.com/www.manybug.com/wp-content/uploads/2016/02/sublime_text_package_control.png?resize=300%2C206"/>​<br/>แบบติดตั้งด้วยตัวเอง<br/><br/>1. ดาวโหลด Package Control.sublime-package และกด Copy ไฟล์เพื่อเตรียมไปวาง<br/><br/>2. ไปที่ Preferences &gt; Browse Packages<br/><br/>3. เลือกโฟลเดอร์ชื่อ Installed Packages<br/><br/>4. กดวางไฟล์ Package Control.sublime-package ลงไป<br/><br/>5. เปิด ปิดโปรแกรมใหม่<br/><br/>6. กด Control + Shift + P (Windows) หรือ Cmd + Shift + P (Mac OSX) เพื่อเปิดหน้าต่างจัดการ Package<br/><br/><img src="https://i2.wp.com/www.manybug.com/wp-content/uploads/2016/02/sublime_text_package_control.png?resize=300%2C206"/><br/></p>', '', '2017-01-19 18:36:42', '2017-01-19 18:52:33'),
(7, '2201-2001', '5', 'การออกแบบเว็บด้วย CSS', '<div><p><span style="font-size: 36px;">CSS คืออะไร? มีประโยชน์อย่างไรบ้าง</span><br/></p><div class="post_main_text" style="width: 766px;float: left;font-size: 14px;"><p style="float: left;width: 766px;font-size: 22px;"><span style="font-size: 22px;">      การจัดทำเว็บไซต์ที่มีประสิทธิภาพต้องมีการวางแผนและการออกแบบระบบที่ดี  โดยในยุคแรก ๆ จะใช้ภาษา HTML ในการจัดทำระบบการแสดงผลทางด้านโครงสร้างและข้อมูลของเว็บ  แต่ปัจจุบันมีการพัฒนามาจนถึง HTML5  และยังมีการพัฒนาภาษาที่ใช้เพื่อกำหนดรูปแบบการแสดงผลทางหน้าเว็บไซต์ที่หลากหลายและมีความยืดหยุ่น  เช่น สีอักษร สีพิ้นหลัง ขนาดตัวอักษร จัดการเลย์เอ้าท์ ให้สวยงามและอื่นๆ ซึ่งนั้นก็คือ CSS หรือ Style Sheets และในความหมายของทางโปรแกรมเมอร์นั้น คือ โครงสร้างการแสดงผลของหน้าตาเว็บไซต์ </span></p><p style="float: left;width: 766px;font-size: 22px;"><span style="font-size: 22px;"><strong>CSS คืออะไร? </strong><br/>       CSS ย่อมาจาก Cascading Style Sheet  มักเรียกโดยย่อว่า &#34;สไตล์ชีต&#34; คือภาษาที่ใช้เป็นส่วนของการจัดรูปแบบการแสดงผลเอกสาร  HTML โดยที่ CSS กำหนดกฏเกณฑ์ในการระบุรูปแบบ (หรือ &#34;Style&#34;) ของเนื้อหาในเอกสาร อันได้แก่ สีของข้อความ สีพื้นหลัง ประเภทตัวอักษร และการจัดวางข้อความ ซึ่งการกำหนดรูปแบบ หรือ Style นี้ใช้หลักการของการแยกเนื้อหาเอกสาร HTML ออกจากคำสั่งที่ใช้ในการจัดรูปแบบการแสดงผล กำหนดให้รูปแบบของการแสดงผลเอกสาร ไม่ขึ้นอยู่กับเนื้อหาของเอกสาร เพื่อให้ง่ายต่อการจัดรูปแบบการแสดงผลลัพธ์ของเอกสาร HTML โดยเฉพาะในกรณีที่มีการเปลี่ยนแปลงเนื้อหาเอกสารบ่อยครั้ง หรือต้องการควบคุมให้รูปแบบการแสดงผลเอกสาร HTML มีลักษณะของความสม่ำเสมอทั่วกันทุกหน้าเอกสารภายในเว็บไซต์เดียวกัน  โดยกฏเกณฑ์ในการกำหนดรูปแบบ (Style) เอกสาร HTML ถูกเพิ่มเข้ามาครั้งแรกใน HTML 4.0  เมื่อปีพ.ศ. 2539 ในรูปแบบของ CSS level 1 Recommendations ที่กำหนดโดย องค์กร World Wide Web Consortium หรือ W3C</span><br/> </p><p style="float: left;width: 766px;font-size: 22px;"><span style="font-size: 22px;"><strong>CSS มีประโยชน์อย่างไร?</strong><br/>        ภาษา CSS (Cascading Style Sheets) มีประโยชน์หลายอย่างเลยทีเดียวซึ่งทำให้การพัฒนาเว็บเพจด้วยภาษา HTML เป็นเรื่องที่ง่ายมากขึ้น<br/>1. ภาษา CSS จะช่วยในการจัดรูปแบบแสดงผลให้กับภาษา HTML ซึ่งจะช่วยลดการใช้ภาษา HTML ให้น้อยลง โดยเหลือเพียงแต่ส่วนที่เป็นเอกสารที่เป็นภาษา HTML เท่านั้นทำให้มีการแก้ไขและทำความเข้าใจได้ง่ายขึ้น<br/>2. ทำให้ขนาดไฟล์ HTML น้อยลงเนื่องจาก ภาษา CSS จะช่วยลงการใช้ภาษา HTML ลงทำให้ขนาดไฟล์นั้นก็เล็กลงไปด้วยเช่นกัน<br/>3. ภาษา CSS เป็นภาษา Style Sheets โดย Style Sheets ชุดเดียวสามารถใช้กำหนดรูปแบบการแสดงผลให้เอกสาร HTML ทั้งหน้า หรือทุกหน้ามีผลเหมือนกันได้ จึงทำให้เวลาที่มีการแก้ไขก็จะแก้ไขได้ง่ายขึ้นเพียงแก้ไข Style Sheets ที่ใช้งานเพียงชุดเดียวเท่านั้น<br/>4. ทำให้เว็บไซต์มีมาตราฐานเพราะการใช้งาน CSS นั้นจะทำให้การแสดงผลในสื่อต่าง ๆ ถูกปรับเปลี่ยนไปได้อย่างเหมาะสม เช่น  การแสดงผลบนหน้าจอ และการแสดงผลในมือถือ<br/>5. CSS สามารถที่จะใช้งานได้หลากหลาย เว็บบราวเซอร์ ทำให้การใช้งานนั้นสะดวกมากยิ่งขึ้น<br/>6. CSS สามารถกำหนดแยกไว้ต่างหากจากไฟล์เอกสาร HTML และสามารถนำมาใช้ร่วม กับเอกสารหลายไฟล์ได้ การแก้ไขก็แก้เพียง จุดเดียวก็มีผลกับเอกสารทั้งหมด</span></p><p style="float: left;width: 766px;font-size: 22px;"><span style="font-size: 22px;">     CSS กับ HTML นั้นทำหน้าที่คนละอย่างกัน โดย HTMLจะทำหน้าที่ในการวางโครงร่างเอกสารอย่างเป็นรูปแบบ  ถูกต้อง เข้าใจง่าย  ไม่เกี่ยวข้องกับการแสดงผล  ส่วน CSS จะทำหน้าที่ในการตกแต่งเอกสารให้สวยงาม เรียกได้ว่า HTML คือส่วน coding ส่วน  CSS คือส่วน design</span></p></div><!--EndFragment--><br/><br/><img class="ta-insert-video" src="https://img.youtube.com/vi/qKoajPPWpmo/hqdefault.jpg" ta-insert-video="https://www.youtube.com/embed/qKoajPPWpmo" contenteditable="false" allowfullscreen="true" frameborder="0"/></div><p><br/></p><p><br/></p><h1><a href="https://www.youtube.com/watch?v=qKoajPPWpmo&amp;list=PLr6-GrHUlVf8JIgLcu3sHigvQjTw_aC9C" target="">คลิกดูวีดีโอ</a></h1>', '', '2017-01-19 18:37:58', '2019-04-23 14:34:03'),
(8, '2201-2001', '6', 'การออกแบบเว็บด้วย Bootstrap', '<p><span style="color: inherit;font-size: 2rem;">Bootstrap คืออะไร?</span><br/></p><p>     Bootstrap คือ Frontend Framework ที่รวม HTML, CSS และ JS เข้าด้วยกันสำหรับพัฒนา Web ที่รองรับทุก Smart Device หรือ เรียกว่า Responsive Web หรือ Mobile First </p><p>     Bootstrap ถูกพัฒนาขึ้นโดยทีมงานจาก Twitter หรือ Twitter.com ซึ่งจะเห็นว่าหน้าตาคล้ายกันมาก ซึ่งปัจจุบันทีมพัฒนาหลัก (Core team) มีทั้งหมด 17 คน สามารถติดตามได้จาก </p><p>https://github.com/orgs/twbs/people</p><h2>ทำไมต้องเป็น Bootstrap?</h2><p>     แล้วทำไมล่ะต้องเป็น Bootstrap ด้วย เป็นเรื่องที่น่าคิดเช่นกัน ก่อนอื่นก็คงต้องกล่าวถึงการพัฒนา Web Application ในสมัยก่อน การที่จะออกแบบ Website สักเว็บหนึ่ง ต้องร่างแบบในโปรแกรมซึ่งอาจใช้โปรแกรมยอดนิยมอย่าง Photoshop ออกแบบ Website จากนั้นก็ทำการ Slice ออกมาเป็นภาพต่างๆ และสร้างเป็นไฟล์ CSS และ HTML เพื่อนำไป Coding เป็น Web Application ต่อไป</p><p>     ในยุคที่ Mobile หรือ Smart Device ยังไม่รุ่งเรืองก็อาจจะยังไม่มีปัญหาอะไร แต่ปัจจุบันยุคที่ Mobile First (ส่วนใหญ่เปิดดูเว็บจาก Mobile) เป็นหลัก การออกแบบเว็บไซต์ต้องคำนึงถึงจุดนี้ แต่เนื่องจากหน้าจอของ Smart Device นั้นมีหลากหลายมาก การออกแบบหน้าเว็บให้ตอบสนองกับทุกหน้าจอ (Responsive Web Design) นั้นเป็นเรื่องยาก</p><p>     Twitter จึงได้พัฒนา Bootstrap ขึ้นมาเพื่อตอบโจทย์ในด้าน Reponsive Web Design โดยเฉพาะซึ่งมีระบบ Grid มาช่วย และมีการคำนวนค่าหน้าจอพร้อมกับปรับขนาดของ Web ให้แสดงผลกับทุกๆ หน้าจอโดยอัตโนมัติ ซึ่งเราสามารถปรับแต่งให้แต่ละหน้าจอแสดงผลต่างๆ กันได้ ตามขนาดของหน้าจอ</p><p>     Twitter Bootstrap จึงได้รับความนิยมอย่างกว้างขวาง ในการทำ Frontend เพราะมีเครื่องมือที่พร้อมสนับสนุนการทำงาน และ มีรูปแบบที่สามารถทำความเข้าใจได้ง่าย</p><p>     สำหรับการทำความเข้าใจ Bootstrap นั้นเราจะเรียนรู้กันแบบ Step by Step เพื่อให้เกิดความเข้าใจพื้นฐาน</p><h4>เว็บไซต์อย่างเป็นทางการของ Bootstrap คือ <span style="font-size: 1rem;">http://getbootstrap.com/</span></h4><!--EndFragment--><p><br/></p><p>การใช้งาน Bootstrap 4<br/>1. เข้าเว็บไซต์ https://v4-alpha.getbootstrap.com/<br/>2. ไปดาวน์โหลดซอร์สโค้ด css, js มาใช้ที่โฟลเดอร์งาน<br/>     css <br/>        - bootstrap.css<br/>        - bootstrap.min.css<br/>        - bootstrap-flex.css<br/>        - bootstrap-flex.min.css<br/>     js<br/>        - bootstrap.js<br/>        - bootstrap.min.js<br/>3. ไปดาวน์โหลด jquery มาใว้ที่โฟลเดอร์งานด้วย <br/>     ในที่นี้ใว้ที่โฟลเดอร์ js  (jquery.js , jquery.min.js)      <br/>4. เรียกไฟล์ bootstrap มาใว้ที่ส่วน head ของไฟล์ html<br/><br/></p><p><img src="https://img.youtube.com/vi/NDcfKNQBqAk/hqdefault.jpg" ta-insert-video="https://www.youtube.com/embed/NDcfKNQBqAk" contenteditable="false" allowfullscreen="true" frameborder="0"/>​</p><h2><a href="https://www.youtube.com/watch?v=NDcfKNQBqAk" target="">คลิกเข้าดูวีดีโอ</a></h2>', '', '2017-01-19 18:39:38', '2018-01-27 02:39:06'),
(9, '2201-2001', '8', 'แบบทดสอบระหว่างเรียน', '<h1>คลิกเข้าไปทำ<a href="https://sdtc.ac.th/somkiat/home/public/datasheet/data/17-22.swf" target="">แบบทดสอบ</a></h1>', '', '2017-01-19 21:36:22', '2018-01-27 00:09:53'),
(10, '2201-2402', '1', 'ระบบจำนวน', '<div><p>​</p><img class="ta-insert-video" src="https://img.youtube.com/vi/ku4KOFQ-bB4/hqdefault.jpg" ta-insert-video="https://www.youtube.com/embed/ku4KOFQ-bB4" contenteditable="false" allowfullscreen="true" frameborder="0"/></div><p><a href="https://www.youtube.com/watch?v=ku4KOFQ-bB4" target="" style="font-size: 2rem;">คลิกดู วีดีโอ</a><br/></p>', '', '2017-01-28 22:55:08', '2017-06-02 00:49:23'),
(11, '2201-2402', '2', 'ระบบเลขฐาน', '', '', '2017-01-28 22:55:41', '0000-00-00 00:00:00'),
(12, '3200-0010', '1', 'องค์ประกอบของระบบคอมพิวเตอร์', '<div><p>​องค์ปรกอบของคอมพิวเตอร์</p><p>1. Hardware</p><p>2. Software</p><p>3. People </p><p>4. Data และสารสนเทศ</p><p>5. กระบวนการ (Procedure)</p><div><br/></div><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/3-60.png" style="height: 536px;width: 718px;"/></div>', '', '2017-02-05 00:33:16', '2017-02-12 02:04:27'),
(13, '3200-0010', '2', 'หลักการทํางานของคอมพิวเตอร์', '', '', '2017-02-05 00:34:45', '0000-00-00 00:00:00'),
(14, '3200-0010', '3', 'อุปกรณ์ ต่อพ่วง', '', '', '2017-02-05 00:35:02', '0000-00-00 00:00:00'),
(15, '3200-0010', '4', 'สื่อบันทึกข้อมูล', '', '', '2017-02-05 00:35:28', '0000-00-00 00:00:00'),
(16, '3200-0010', '5', 'ระบบปฏิบัติการ', '', '', '2017-02-05 00:41:56', '0000-00-00 00:00:00'),
(17, '3200-0010', '6', 'การติดตั้งระบบปฏิบัติการ', '', '', '2017-02-05 00:50:23', '0000-00-00 00:00:00'),
(18, '3200-0010', '7', 'การใช้งานโปรแกรมอรรถประโยชน์', '', '', '2017-02-05 00:50:57', '0000-00-00 00:00:00'),
(19, '3200-0010', '8', 'การตรวจสอบและกำจัดไวรัส', '', '', '2017-02-05 00:51:20', '0000-00-00 00:00:00'),
(20, '3200-0010', '9', 'การสำรองและป้องกันความเสียหายของข้อมูล', '', '', '2017-02-05 00:52:17', '0000-00-00 00:00:00'),
(21, '3200-0010', '10', 'การกู้คืนข้อมูล', '', '', '2017-02-05 00:52:43', '0000-00-00 00:00:00'),
(22, '3200-0010', '11', 'การบำรุงรักษาอุปกรณ์คอมพิวเตอร์', '', '', '2017-02-05 00:53:37', '2017-03-12 01:57:33'),
(23, '3200-0010', '12', 'การแก้ปัญหาการใช้งานคอมพิวเตอร์', '', '', '2017-02-05 00:54:06', '0000-00-00 00:00:00'),
(24, '2201-2001', '7', 'NodeJS', '<p>เขียน NodeJS<br/>www.nodejs.org<br/><br/>D:&gt;md web1<br/>D:cd web1<br/>D:web1&gt;npm install  -g  general  express<br/><br/>D:web1&gt;npm install --save express<br/>เปิดโปรแกรม Sublime Text<br/><br/>สร้างไฟล์ใหม่  index.js ใว้ใน web1<br/><br/>รันแสดงผล<br/>node  index.js<br/>เรียกผ่าน บราวน์เซอร์<br/>http://localhost:3000<br/></p>', '', '2017-02-05 01:22:46', '2018-01-27 00:10:00');
INSERT INTO `course_content` (`id`, `course_id`, `unit_id`, `title`, `description`, `recommend`, `created`, `modified`) VALUES
(25, '3204-2005', '1', 'ความรู้เบื้องต้นเกี่ยวกับภาษา HTML', '<p><b><span style="font-size: 18.0pt;">1. โครงสร้างภาษา </span></b><b><span style="font-size: 18.0pt;">HTML</span></b></p><p>       HTML ย่อมาจากคำว่า HyperText Markup Language เป็นภาษาที่ใช้สำหรับสร้างเว็บเพจ โดยคำสั่งในภาษา HTML จะทำหน้าที่ควบคุมการแสดงผลของข้อมูลในเว็บเพจ ซึ่งเราสามารถ ควบคุมได้ทั้งสีสัน รูปภาพ ตลอดจนตำแหน่งของสิ่งต่างๆ ที่อยู่บนเว็บเพจ</p><p>       คำสั่งที่ใช้ควบคุมการแสดงผลใน  HTML นั้นถูกเรียกว่าแท็ก (Tag) ซึ่งมีอยู่มากมายหลายสิบชนิด แต่ละแท็กก็มีหน้าที่แตกต่างกันออกไป เช่น บางแท็กใช้สำหรับกำหนดให้แสดงรูปภาพ บางแท็กใช้สำหรับกำหนดสีฟอนต์หรือขนาดให้กับตัวอักษร</p><p>       การเขียนภาษา HTML นั้นมีส่วนประกอบหลักอยู่  2 ส่วน คือ ส่วนที่เป็นเนื้อหา และส่วนที่เป็นคำสั่ง </p><p>       Tag  แบ่งออกเป็น  2  ประเภทคือ</p><p>       1. แท็กเดี่ยว คือ คำสั่งที่มีคำสั่งเพียงอย่างเดียว ซึ่งสามารถใช้และสิ้นสุดคำสั่งได้ด้วยตัวของมันเอง  เช่น</p><p>              ข้อความ... &lt;br&gt;</p><p>              &lt;hr&gt;</p><p>              &lt;! – ข้อความ -&gt;</p><p>       2. แท็กคู่ คือ คำสั่งที่ต้องมีส่วนเริ่มต้นและส่วนจุดจบของคำสั่งนั้นๆ โดยแท็กที่เป็นส่วนจบนั้นจะมีเครื่องหมาย (/) ติดเอาไว้ เช่น</p><p>              &lt;html&gt; ส่วนของเนื้อหา ... &lt;/html&gt;</p><p>              &lt;center&gt; ข้อความ... &lt;/center&gt;</p><p>              &lt;p&gt; ข้อความ... &lt;/p&gt;</p><p>       ถ้าหากมีการใช้แท็กคู่หลายๆ คำสั่ง เช่น คำสั่งตัวขีดเส้นใต้ &lt;U&gt; …&lt;/U&gt; และตามด้วย     คำสั่งตัวเอียง &lt;I&gt;…&lt;/I&gt;  จะต้องปิดคำสั่งตัวเอียงก่อน แล้วจึงจะมาปิดคำสั่งตัวหนา</p><p>              &lt;I&gt; &lt;U&gt; ข้อความ... &lt;/U&gt; &lt;/I&gt;</p><p>       โครงสร้างหลัก</p><p>              &lt;HTML&gt;</p><p>              &lt;HEAD&gt;</p><p>              &lt;TITLE&gt;  ส่วนหัวของเอกสาร  &lt;/TITLE&gt;</p><p>              &lt;/HEAD&gt;</p><p>              &lt;BODY&gt;  ส่วนของเนื้อหาในเอกสาร &lt;/BODY&gt;</p><p>              &lt;/HTML&gt;</p><p>       คำสั่งหลัก &lt;HTML&gt;…&lt;/HTML&gt; เป็นคำสั่งที่ไว้กำหนดจุดเริ่มต้นและจุดจบของเอกสาร</p><p>       คำสั่งหลัก &lt;HEAD&gt;…&lt;/HEAD&gt; เป็นคำสั่งที่ทำหน้าที่กำหนดส่วนหัวเรื่อง โดยภายใน  คำสั่งนี้จะประกอบไปด้วย</p><p>       คำสั่งหลัก &lt;TITLE&gt;…&lt;/TITLE&gt;  เป็นคำสั่งที่ใช้กำหนดข้อความที่ต้องการให้ขึ้นอยู่ในส่วนของ Title Bar โดยสามารถพิมพ์ได้ยาว 64 ตัวอักษร</p><p>       คำสั่งหลัก  &lt;BODY&gt;…&lt;/BODY&gt; เป็นคำสั่งที่ใช้ในการกำหนดรูปแบบของเอกสาร       ทั้งหมดว่าจะให้มีลักษณะอย่างไร</p><p><span style="font-size: 8.0pt;"></span></p><p><span style="font-size: 18.0pt;"><b>2. การกำหนดตัวอักษร</b></span><span style="font-size: 18.0pt;"></span></p><p>       2.1 การกำหนดรูปแบบตัวอักษร ในข้อความที่อยู่ภายใน เช่น ฟอนต์  สี และขนาดตัวอักษร</p><p>รูปแบบ</p><p>              &lt;font face = “text”&gt; … &lt;/font&gt; กำหนดแบบอักษร</p><p>              &lt;font size = “number”&gt; … &lt;/font&gt; กำหนดขนาดตัวอักษร</p><p>              &lt;font color = “color”&gt; … &lt;/font&gt; กำหนดสีตัวอักษร</p><p>ตัวอย่าง</p><p><span style="font-size: 17.5px;">&lt;html&gt;</span></p><p><span style="font-size: 16pt;">&lt;head&gt;</span></p><p><span style="font-size: 16pt;">&lt;title&gt;  Font Web page &lt;/title&gt;</span></p><p><span style="font-size: 16pt;">&lt;/head&gt;</span></p><p><span style="font-size: 16pt;">&lt;body&gt;</span></p><p><span style="font-size: 16pt;">&lt;font size=&#34;3&#34;&gt; INFORMATION TECNOLOGY &lt;/font&gt; &lt;br&gt;</span></p><p><span style="font-size: 16pt;">&lt;font color=&#34;blue&#34;&gt; information technology&lt;/font&gt; &lt;br&gt;</span></p><p><span style="font-size: 16pt;">&lt;font face=&#34;JasmineUPC&#34;&gt; information technology&lt;/font&gt; &lt;br&gt;</span></p><p><span style="font-size: 16pt;">&lt;font size=&#34;5&#34; color=&#34;#0000ff&#34;&gt; information technology&lt;/font&gt; &lt;br&gt;</span></p><p><span style="font-size: 17.5px;">&lt;font face=&#34;AngsanaUPC&#34; color=&#34;green&#34;&gt; information technology&lt;/font&gt; &lt;br&gt;</span></p><p><span style="font-size: 17.5px;">&lt;/body&gt;</span></p><p>&lt;/html&gt;</p><p><span style="font-size: 16.0pt;"></span></p><p></p><p><span style="font-size: 16.0pt;"></span></p><p></p><p><span style="font-size: 16.0pt;"></span></p><p></p><p>2.2 การกำหนดข้อความแบบตัวหนา ใช้กำหนดข้อความที่อยู่ภายในคำสั่งให้แสดงผลด้วยตัวอักษรตัวหนา </p><p>รูปแบบ     &lt;b&gt;…&lt;/b&gt;</p><p>ตัวอย่าง</p><p>&lt;html&gt;</p><p><span style="font-size: 16pt;">&lt;head&gt;</span></p><p><span style="font-size: 16pt;">&lt;title&gt;Bold Tag&lt;/title&gt;</span></p><p><span style="font-size: 16pt;">&lt;/head&gt;</span></p><p><span style="font-size: 16pt;">&lt;body&gt;</span></p><p><span style="font-size: 16pt;">&lt;font size=&#34;4&#34;&gt;  Normal Text &lt;br&gt;</span></p><p><span style="font-size: 16pt;">&lt;b&gt; Bold Text&lt;/b&gt;</span></p><p><span style="font-size: 16pt;">&lt;/font&gt;</span></p><p><span style="font-size: 16pt;">&lt;/body&gt;</span></p><p>&lt;/html&gt;</p><p><span style="font-size: 16.0pt;">2.3 การกำหนดข้อความแบบตัวเอียง</span></p><p><span style="font-size: 16.0pt;">       รูปแบบ    </span><span style="font-size: 16.0pt;">&lt;I&gt;…&lt;/I&gt;</span></p><p><span style="font-size: 16.0pt;">2.4 การกำหนดข้อความขีดเส้นใต้</span></p><p><span style="font-size: 16.0pt;">       รูปแบบ   </span><span style="font-size: 16.0pt;">&lt;U&gt;…&lt;/U&gt;</span></p><p><span style="font-size: 16.0pt;">2.5 การกำหนดข้อความตัวขีดเส้นทับ</span></p><p><span style="font-size: 16.0pt;">       รูปแบบ  </span><span style="font-size: 16.0pt;">&lt;S&gt;…&lt;/S&gt;  หรือ  &lt;STRIKE&gt;…&lt;/STRIKE&gt;</span></p><p><b><span style="font-size: 8.0pt;"></span></b></p><p><b><span style="font-size: 18.0pt;">3. การจัดรูปแบบเอกสาร</span></b><b><span style="font-size: 18.0pt;"></span></b></p><p>       3.1 การกำหนดหัวข้อ  ใช้ในการกำหนดขนาดให้กับข้อความที่เป็นหัวเรื่องในเอกสารที่มีหัวข้อเป็นปลีกย่อย สามารถแยกเป็นลำดับของหัวเรื่องได้อย่างชัดเจน</p><p>       รูปแบบ   &lt;hx&gt;…&lt;/hx&gt;</p><p>ตัวอย่าง</p><p><span style="font-size: 10pt;">&lt;html&gt;</span></p><p><span style="font-size: 10pt;">&lt;head&gt;</span></p><p><span style="font-size: 10pt;">&lt;title&gt; Education Technology &lt;/title&gt;</span></p><p><span style="font-size: 10pt;">&lt;/head&gt;</span></p><p><span style="font-size: 10pt;">&lt;body&gt;</span></p><p><span style="font-size: 10pt;">&lt;h1&gt;Test Heading if x=1&lt;/h1&gt;</span></p><p><span style="font-size: 10pt;">&lt;h2&gt;Test Heading if x=2 &lt;/h2&gt;</span></p><p><span style="font-size: 10pt;">&lt;/body&gt;</span></p><p><tt><span style="font-size: 10.0pt;">&lt;/html&gt;</span></tt></p><p>       3.2  การกำหนดจุดสิ้นสุดบรรทัด  ใช้ในการกำหนดจุดสิ้นสุดบรรทัด และขึ้นบรรทัดใหม่ คำสั่งนี้เหมือนการกด Enter บนคีย์บอร์ด</p><p>       รูปแบบ    ...&lt;br&gt;</p><p>ตัวอย่าง</p><p><tt><span style="font-size: 10.0pt;">&lt;html&gt;</span></tt> </p><p><tt><span style="font-size: 10.0pt;">&lt;head&gt;</span></tt></p><p><tt><span style="font-size: 10.0pt;">&lt;title&gt; Break Rule Tag &lt;/title&gt;</span></tt></p><p><tt><span style="font-size: 10.0pt;">&lt;/head&gt;</span></tt></p><p><tt><span style="font-size: 10.0pt;">&lt;body&gt;</span></tt></p><p><tt><span style="font-size: 10.0pt;">คุณเป็นคนน่ารัก</span></tt></p><p><tt><span style="font-size: 10.0pt;">คุณเป็นคนน่ารัก</span></tt></p><p><tt><span style="font-size: 10.0pt;">เชื่อหรือไม่</span></tt><tt><span style="font-size: 10.0pt;"> &lt;br&gt;</span></tt></p><p><tt><span style="font-size: 10.0pt;">แน่นอนที่สุด</span></tt><tt><span style="font-size: 10.0pt;"> &lt;br&gt;</span></tt></p><p><tt><span style="font-size: 10.0pt;">&lt;/body&gt;</span></tt></p><p><tt><span style="font-size: 10.0pt;">&lt;/html&gt;</span></tt></p><p>       3.3  การขึ้นย่อหน้าใหม่  ใช้แสดงข้อความในลักษณะพารากราฟ หรือย่อหน้าในเว็บเพจ และยังสามารถใช้ในการขึ้นบรรทัดใหม่ครั้งละ 2 บรรทัด</p><p>       รูปแบบ</p><p>              &lt;p&gt;…&lt;/p&gt;</p><p>              &lt;p align = “left/center/right”&gt;…&lt;/p&gt;</p><p>ตัวอย่าง</p><p>&lt;html&gt; </p><p>&lt;head&gt;</p><p>&lt;title&gt; Paragraph Tag &lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p>&lt;p&gt; ประโยคที่ 1 Test Normal </p><p>&lt;p align=&#34;right&#34;&gt; ประโยคที่ 2  Paragraph Test Right</p><p>&lt;p align=&#34;center&#34;&gt; ประโยคที่ 3 Paragraph Test Center</p><p>&lt;p align=&#34;left&#34;&gt; ประโยคที่ 4  Paragraph Test Left </p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p>       3.4  แสดงข้อความแบบจัดกึ่งกลาง ใช้แสดงข้อความหรือรูปภาพ ใช้จัดกึ่งกลางเว็บเพจ</p><p>       รูปแบบ   &lt;center&gt;…&lt;/center&gt;</p><p>ตัวอย่าง</p><p><span style="font-size: 1rem;">&lt;html&gt;</span></p><p>&lt;head&gt;</p><p>&lt;title&gt; Paragraph Tag &lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p>Test Normal Message</p><p>&lt;center&gt; Test Center Message &lt;/center&gt;</p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p>       3.5  การแสดงเส้นคั่นทางแนวนอน ใช้แสดงเส้นคั่นแนวนอน โดยใช้ในการแบ่งเนื้อหาหรือคั่นเพื่อความสวยงามและความเป็นระเบียบของเนื้อหา</p><p>       รูปแบบ  &lt;hr&gt;</p><p>              &lt;hr align = “left/center/right”&gt;    กำหนดตำแหน่งเส้น</p><p>              &lt;hr width = “pixels or %”&gt;       กำหนดความยาวเส้น</p><p>              &lt;hr size = “pixels”&gt;                กำหนดขนาดเส้น</p><p>              &lt;hr noshade&gt;                 กำหนดลักษณะเส้น</p><p>ตัวอย่าง</p><p>&lt;html&gt; </p><p>&lt;head&gt;</p><p>&lt;title&gt; Horizontal Rule Tag &lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p>&lt;hr&gt;</p><p>&lt;hr width=&#34;100%&#34;&gt;</p><p>&lt;hr width=&#34;300&#34;&gt;</p><p>Rajabhat Thepsatri&lt;hr size=&#34;3&#34; color =&#34;blue&#34;&gt;</p><p>&lt;hr align=&#34;right&#34; color = &#34;red&#34;&gt;</p><p>&lt;hr align=&#34;center&#34; width=&#34;75% size=&#34;3&#34;&gt;</p><p>&lt;hr noshade&gt;</p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p><b><span style="font-size: 8.0pt;"></span></b></p><p><b><span style="font-size: 18.0pt;">4. </span></b><b><span style="font-size: 18.0pt;">การกำหนดหัวข้อเรื่อง</span></b><b><span style="font-size: 18.0pt;"></span></b></p><p>       4.1 การแสดงรายการแบบไม่มีเลขลำดับ  ใช้แสดงรายการข้อมูลแบบแจกแจงเป็นข้อๆ โดยไม่มีเลขลำดับ จะมีสัญลักษณ์นำหน้าข้อมูลแต่ละหัวข้อแทน โดยใช้คำสั่ง &lt;LI&gt; ในการสร้างหัวข้อแต่ละหลายรายการ</p><p>       รูปแบบ</p><p>              &lt;UL&gt;       ข้อความส่วนหัว</p><p>              &lt;LI&gt; ข้อความย่อย</p><p>              &lt;LI&gt; ข้อความย่อย</p><p>              &lt;/UL&gt;</p><p>ตัวอย่าง</p><p>&lt;html&gt; </p><p>&lt;head&gt;</p><p><span style="font-size: 1rem;">&lt;title&gt;Unnorder List Tag&lt;/title&gt;</span></p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p>Microsoft Office Program</p><p>&lt;ul&gt; </p><p>&lt;li&gt; Microsoft Word</p><p>&lt;li&gt; Microsoft Excel</p><p>&lt;li&gt; Microsoft Power Point</p><p>&lt;/ul&gt;</p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p>       4.2  การแสดงรายการแบบเมนูลิสต์  ใช้แสดงรายการข้อมูลแบบแจกแจงเป็นข้อๆ ที่ไม่ซับซ้อน มีลักษณะคล้ายกับคำสั่ง &lt;UL&gt;</p><p>       รูปแบบ</p><p>              &lt;MENU&gt;  ข้อความส่วนหัว</p><p>              &lt;LI&gt;  ข้อความย่อย</p><p>              &lt;/MENU&gt;</p><p>       4.3  การแสดงรายการแบบใช้ตัวเลข  เป็นการแสดงรายการแบบแจกแจงเป็นข้อๆ โดยใช้หมายเลขกำกับในการเรียงลำดับ โดยสร้างรายการจากคำสั่ง &lt;LI&gt; และยังสามารถกำหนดรูปแบบของหมายเลขกำกับได้ด้วยให้เป็นเลขอารบิก, เลขโรมัน หรือตัวอักษร</p><p>       รูปแบบ</p><p>              &lt;OL TYPE = “1 / a / A / i / I” start = “number”&gt;   ข้อความส่วนหัว</p><p>              &lt;LI&gt;  ข้อความย่อย</p><p>              &lt;/OL&gt;</p><p>ตัวอย่าง</p><p>&lt;html&gt; </p><p>&lt;head&gt;</p><p>&lt;title&gt;Order List Tag&lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p>&lt;h1&gt;Order List&lt;/h1&gt;</p><p>&lt;ol&gt;</p><p>&lt;li&gt;Item One&lt;li&gt;Item Two&lt;li&gt;Item Three</p><p>&lt;/ol&gt;</p><p>&lt;ol type=&#34;A&#34; start=&#34;5&#34;&gt;</p><p>&lt;li&gt;Item Four&lt;li&gt;Item Five</p><p>&lt;ol type=&#34;i&#34;&gt;</p><p>&lt;li&gt;Item Six&lt;li&gt;Item Seven</p><p>&lt;/ol&gt;&lt;/ol&gt;</p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p>       4.4  การใส่เครื่องหมายหน้าหัวข้อ  เป็นการแสดงรายการโดยใช้เครื่องหมายในแต่ละ     รายการย่อย</p><p>       รูปแบบ</p><p>              &lt;UL type = “option”&gt;</p><p>              &lt;LI&gt;  ข้อความย่อย</p><p>              &lt;/UL&gt;</p><p>ตัวอย่าง</p><p>&lt;html&gt;</p><p>&lt;head&gt;</p><p>&lt;title&gt; การทำเครื่องหมายหน้าหัวข้อ&lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;BODY bgcolor=white&gt; </p><p>&lt;font face=&#34;ms sans serif&#34; size=3&gt; สาขาที่เปิดสอน 3 สาขาดังนี้ &lt;BR&gt;</p><p>แบบ Disc &lt;br&gt; </p><p>&lt;UL Type=&#34;Disc&#34;&gt; </p><p>&lt;Li&gt; คอมพิวเตอร์ธุรกิจ </p><p>&lt;Li&gt; บัญชี </p><p>&lt;/UL&gt; </p><p>แบบ Square &lt;br&gt; </p><p>&lt;UL Type=&#34;square&#34;&gt; </p><p>&lt;Li&gt; คอมพิวเตอร์ธุรกิจ </p><p>&lt;Li&gt; บัญชี </p><p>&lt;/UL&gt; </p><p>แบบ Circle&lt;br&gt; </p><p>&lt;UL Type=&#34;Circle&#34;&gt; </p><p>&lt;Li&gt; คอมพิวเตอร์ธุรกิจ </p><p>&lt;Li&gt; บัญชี </p><p>&lt;/font&gt;  </p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p>       4.5 การแสดงรายการโดยกำหนดหัวข้อ  ใช้แสดงรายการแบบให้คำนิยาม โดยแบ่ง       องค์ประกอบเป็น 2 ส่วน ส่วนที่อยู่บนคือหัวข้อ  โดยใช้คำสั่ง &lt;DT&gt; ส่วนที่อยู่ด้านล่างคือคำอธิบายใช้คำสั่ง &lt;DD&gt; โดยหากจะให้ ส่วนหัวข้ออยู่ทางซ้าย แล้วคำอธิบายอยู่ทางขวาก็ให้ใช้ attribute COMPACT  ในกรณีที่รายการเป็นข้อความสั้นๆ</p><p>       รูปแบบ</p><p>              &lt;DL&gt;  ข้อความส่วนหัว</p><p>              &lt;DT&gt;  หัวข้อ   &lt;DD&gt;  คำอธิบาย</p><p>              &lt;/DL&gt;</p><p>ตัวอย่าง</p><p>&lt;html&gt; </p><p>&lt;head&gt;</p><p>&lt;title&gt;Definition Tag&lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p>&lt;h1&gt; Domain Name&lt;/h1&gt;</p><p>&lt;dl&gt;</p><p>&lt;dt&gt;com&lt;dd&gt;องค์การเอกชน</p><p>&lt;dt&gt;edu&lt;dd&gt;สถาบันการศึกษา</p><p>&lt;/dl&gt;</p><p>&lt;p&gt;</p><p>&lt;dl compact&gt;</p><p>&lt;dt&gt;org&lt;dd&gt;องค์กรไม่แสวงผลกำไร</p><p>&lt;dt&gt;gov&lt;dd&gt;องค์การของรัฐ</p><p>&lt;/dl&gt;</p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p><span style="font-size: 8.0pt;"></span></p><p><b><span style="font-size: 18.0pt;">5. </span></b><b><span style="font-size: 18.0pt;"> การใส่รูปภาพ</span></b><b><span style="font-size: 18.0pt;"></span></b></p><p>       5.1 การใส่รูปภาพในเอกสาร  เช่น  GIF, JPEG  เป็นต้น </p><p>       รูปแบบ</p><p>              &lt;IMG SRC = “url”&gt;</p><p>              &lt;IMG align = “top / middle / bottom / left / right”&gt; การกำหนดตำแหน่งให้กับรูปภาพ</p><p>              &lt;IMG width = “pixels”&gt;   การกำหนดความกว้างรูปภาพ</p><p>              &lt;IMG height = “pixels”&gt;  การกำหนดความสูงของรูปภาพ</p><p>              &lt;IMG border = “number”&gt; การกำหนดช่องว่างแนวนอนระหว่างรูปภาพกับข้อความ</p><p>              &lt;IMG vspace = “number”&gt; การกำหนดช่องว่างแนวตั้งระหว่างรูปภาพกับข้อความ</p><p>ตัวอย่าง</p><p>&lt;html&gt; </p><p>&lt;head&gt;</p><p>&lt;title&gt; Image Tags&lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p>&lt;img src=&#34;love.jpg&#34; width=&#34;100&#34; height=&#34;80&#34;&gt;</p><p>&lt;p&gt;&lt;p&gt;</p><p>&lt;img src=&#34;love.jpg&#34; align=&#34;top&#34; hspace=&#34;2&#34;&gt;TEST IMAGE TAG</p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p>       5.2 การทำพื้นฉากหลัง   เป็นการนำรูปภาพมาทำเป็น background</p><p>       รูปแบบ</p><p>              &lt;BODY BACKGROUND = “ชื่อไฟล์รูปภาพ”&gt;</p><p>              &lt;BODY BGCOLOR = “ชื่อสี / รหัสสี”&gt;  กำหนดสีพื้นหลังของเว็บ</p><p><span style="font-size: 8.0pt;"></span></p><p><b><span style="font-size: 18.0pt;">6.  การสร้างตาราง</span></b></p><p>       6.1 การสร้างตาราง  ใช้ในการสร้างตารางข้อมูล โดยจะมีคำสั่งที่ใช้ร่วมกันคือ คำสั่ง &lt;TR&gt; ในการสร้างแถวเซลล์ข้อมูล, คำสั่ง &lt;TD&gt; ในการสร้างเซลล์ข้อมูล, คำสั่ง &lt;TH&gt; ในการสร้างหัวตาราง</p><p>       รูปแบบ</p><p>              &lt;TABLE&gt;…&lt;/TABLE&gt;</p><p>              &lt;table bgcolor = “color”&gt; … &lt;/table&gt;  กำหนดสีพื้นในตาราง</p><p>              &lt;table border = “pixels”&gt; … &lt;/table&gt;  กำหนดขนาดของขอบตาราง</p><p>              &lt;table width = “pixels / %&gt;” … &lt;/table&gt;  กำหนดความกว้างของตาราง</p><p>ตัวอย่าง</p><p>&lt;html&gt; </p><p>&lt;head&gt;</p><p>&lt;title&gt; Table Tags &lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p>&lt;table&gt;</p><p>&lt;tr&gt;</p><p>&lt;th&gt;หัวข้อที่ 1&lt;/th&gt;</p><p>&lt;th&gt;หัวข้อที่ 2 &lt;/th&gt;</p><p>&lt;th&gt;หัวข้อที่ 3 &lt;/th&gt;</p><p>&lt;/tr&gt;</p><p>&lt;tr&gt;</p><p>&lt;td&gt;ข้อมูล&lt;/td&gt;</p><p>&lt;td&gt;ข้อมูล&lt;/td&gt;</p><p>&lt;td&gt;ข้อมูล&lt;/td&gt;</p><p>&lt;/tr&gt;</p><p>&lt;tr&gt;</p><p>&lt;td&gt;ข้อมูล&lt;/td&gt;</p><p>&lt;td&gt;ข้อมูล&lt;/td&gt;</p><p>&lt;td&gt;ข้อมูล&lt;/td&gt;</p><p>&lt;/tr&gt;</p><p>&lt;/table&gt;</p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p>       6.2 กำหนดข้อความกำกับตาราง  ใช้แสดงคำอธิบายหรือข้อความประกอบตารางไว้บนส่วนบนหรือส่วนล่างของตารางข้อมูล</p><p>       รูปแบบ</p><p>              &lt;caption align = “top / bottom / left / right”&gt;  กำหนดตำแหน่งของคำอธิบายตาราง</p><p>ตัวอย่าง</p><p>&lt;html&gt; </p><p>&lt;head&gt;</p><p>&lt;title&gt; Table Tags &lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p>&lt;table border&gt;</p><p>&lt;caption align=&#34;top&#34;&gt;ตารางรายรับรายจ่ายประจำเดือน&lt;/caption&gt;</p><p>&lt;tr&gt;</p><p>&lt;th&gt;เดือน&lt;/th&gt;</p><p>&lt;th&gt;มกราคม&lt;/th&gt;</p><p>&lt;th&gt;กุมภาพันธ์&lt;/th&gt;</p><p>&lt;th&gt;มีนาคม&lt;/th&gt;</p><p>&lt;/tr&gt;</p><p>&lt;tr&gt;</p><p>&lt;td&gt;รายรับ&lt;/td&gt;</p><p>&lt;td&gt;25000&lt;/td&gt;</p><p>&lt;td&gt;23000&lt;/td&gt;</p><p>&lt;td&gt;24500&lt;/td&gt;</p><p>&lt;/tr&gt;</p><p>&lt;tr&gt;</p><p>&lt;td&gt;รายจ่าย&lt;/td&gt;</p><p>&lt;td&gt;21000&lt;/td&gt;</p><p>&lt;td&gt;22500&lt;/td&gt;</p><p>&lt;td&gt;23100&lt;/td&gt;</p><p>&lt;/tr&gt;</p><p>&lt;/table&gt;</p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p>       6.3  การสร้างแถวของตาราง  เป็นการสร้างแถวเซลล์ข้อมูล เพื่อไว้สร้างเซลล์ข้อมูลและการสร้างหัวเรื่องของตาราง</p><p>       รูปแบบ</p><p>              &lt;tr align = “left / center / right”&gt; … &lt;/tr&gt;   กำหนดตำแหน่งของข้อความ</p><p>              &lt;tr bgcolor = “color”&gt; … &lt;/tr&gt;   กำหนดสีพื้นหลังในตาราง</p><p>ตัวอย่าง</p><p>&lt;html&gt; </p><p>&lt;head&gt;</p><p>&lt;title&gt; Table Tags &lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p>&lt;table border&gt;</p><p>&lt;tr align=&#34;center&#34; bgcolor=&#34;lightblue&#34;&gt;</p><p>&lt;th&gt;สินค้า&lt;/th&gt;</p><p>&lt;th&gt;โทรทัศน์&lt;/th&gt;</p><p>&lt;th&gt;วิทยุ&lt;/th&gt;</p><p>&lt;th&gt;ตู้เย็น&lt;/th&gt;</p><p>&lt;/tr&gt;</p><p>&lt;tr align=&#34;right&#34; bgcolor=&#34;orange&#34;&gt;</p><p>&lt;td&gt;ราคา&lt;/td&gt;</p><p>&lt;td&gt;7000&lt;/td&gt;</p><p>&lt;td&gt;1750&lt;/td&gt;</p><p>&lt;td&gt;9500&lt;/td&gt;</p><p>&lt;/tr&gt;</p><p>&lt;/table&gt;</p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p>       6.4  การสร้างหัวเรื่องของตาราง เป็นการสร้างเซลล์ หัวตาราง ซึ่งทำหน้าที่กำกับเซลล์ข้อมูลในแนวคอลัมน์ที่กำหนด</p><p>       รูปแบบ</p><p>              &lt;th align = “left / right / center / justify / char”&gt; … &lt;/th&gt; กำหนดตำแหน่งของ ข้อความในตารางตามแนวนอน</p><p>              &lt;th valign = “top / middle / bottom / baseline”&gt; … &lt;/th&gt;  กำหนดตำแหน่งของข้อความในตารางตามแนวตั้ง</p><p>              &lt;th bgcolor = “color”&gt; … &lt;/th&gt;  กำหนดสีพื้นของตาราง</p><p>              &lt;th height = “pixels / %”&gt; … &lt;/th&gt;  กำหนดความสูงของตาราง</p><p>              &lt;th width = “pixels / %”&gt; … &lt;/th&gt;  กำหนดความกว้างของตาราง</p><p>              &lt;th rowspan = “number”&gt; … &lt;/th&gt;  กำหนดการรวมช่องเซลล์ในแนวตั้ง</p><p>              &lt;th colspan = “number”&gt; … &lt;/th&gt;  กำหนดการรวมช่องเซลล์ในแนวนอน</p><p>       6.5  การสร้างเซลล์ข้อมูล  ใช้สร้างเซลล์ข้อมูลเพื่อใช้ในการแสดงข้อมูลรายละเอียดต่างๆ ของเอกสาร</p><p>       รูปแบบ</p><p>              &lt;td align = “left / right / center / justify / char”&gt; … &lt;/td&gt; กำหนดตำแหน่งของ  ข้อความในตารางตามแนวนอน</p><p>              &lt;td valign = “top / middle / bottom / baseline”&gt; … &lt;/td&gt;  กำหนดตำแหน่งของข้อความในตารางตามแนวตั้ง</p><p>              &lt;td bgcolor = “color”&gt; … &lt;/td&gt;  กำหนดสีพื้นของตาราง</p><p>              &lt;td height = “pixels / %”&gt; … &lt;/td&gt;  กำหนดความสูงของตาราง</p><p>              &lt;td width = “pixels / %”&gt; … &lt;/td&gt;  กำหนดความกว้างของตาราง</p><p>              &lt;td rowspan = “number”&gt; … &lt;/td&gt;  กำหนดการรวมช่องเซลล์ในแนวตั้ง</p><p>              &lt;td colspan = “number”&gt; … &lt;/td&gt;  กำหนดการรวมช่องเซลล์ในแนวนอน</p><p>ตัวอย่าง</p><p>&lt;html&gt; </p><p>&lt;head&gt;</p><p>&lt;title&gt; Table Tags &lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p>&lt;table border&gt;</p><p>&lt;tr&gt;</p><p>&lt;th colspan=&#34;2&#34; bgcolor=&#34;#ffffe0&#34;&gt;CPU&lt;/th&gt;</p><p>&lt;th colspan=&#34;2&#34;&gt;RAM&lt;/th&gt;</p><p>&lt;/tr&gt;</p><p>&lt;tr&gt;</p><p>&lt;td rowspan=&#34;2&#34;&gt;Mhz&lt;/td&gt;</p><p>&lt;td&gt;450&lt;/td&gt;</p><p>&lt;td&gt;500&lt;/td&gt;</p><p>&lt;td&gt;550&lt;/td&gt;</p><p>&lt;/tr&gt;</p><p>&lt;tr&gt;</p><p>&lt;td&gt;600&lt;/td&gt;</p><p>&lt;td&gt;700&lt;/td&gt;</p><p>&lt;td&gt;750&lt;/td&gt;</p><p>&lt;/tr&gt;</p><p>&lt;/table&gt;</p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p><span style="font-size: 8.0pt;"></span></p><p><b><span style="font-size: 18.0pt;">7. </span></b><b><span style="font-size: 18.0pt;">การเชื่อมโยงเว็บเพจ</span></b><b><span style="font-size: 18.0pt;"></span></b></p><p>       7.1 การสร้างจุดเชื่อมโยง  ทำหน้าที่กำหนดข้อความหรือรูปภาพที่อยู่ภายในให้ทำหน้าที่เป็นจุดเชื่อมโยงไปยังเว็บเพจอื่นๆ หรือข้อมูลชนิดต่างๆ</p><p>       รูปแบบ</p><p>              &lt;a href = “ชื่อรูปภาพหรือข้อความ”&gt;…&lt;/a&gt;</p><p>ตัวอย่าง</p><p>&lt;html&gt; </p><p>&lt;head&gt;</p><p>&lt;title&gt; Image Tags&lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;body&gt;</p><p>&lt;a href=&#34;test.html&#34;&gt;Click Here&lt;/a&gt;&lt;br&gt;</p><p>&lt;br&gt;</p><p>&lt;a href=&#34;love.jpg&#34;&gt;&lt;img src=&#34;love.jpg&#34;&gt;&lt;/a&gt;</p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><blockquote><p>7.2 การกำหนดสีให้จุดเชื่อมโยง  เป็นการกำหนดสีอักษรที่จุดเชื่อมโยง โดย</p><p>7.2.1   link  คือสีจุดเชื่อมโยงที่ยังไม่ได้ทำการคลิก</p><p>7.2.2  vlink  คือสีจุดเชื่อมโยงที่ไปยังเป้าหมายแล้ว</p><p>7.2.3  alink  คือสีจุดเชื่อมโยงที่ไปอยู่ขณะนั้น</p></blockquote><p>นอกจากนี้ยังมี  text  คือสีตัวหนังสือธรรมดา และ bgcolor คือสีพื้นหลังของเอกสาร</p><p>รูปแบบ</p><p>       &lt;BODY TAG = “color”&gt;</p><p>ตัวอย่าง</p><p>&lt;html&gt; </p><p>&lt;head&gt;</p><p>&lt;title&gt; Image Tags&lt;/title&gt;</p><p>&lt;/head&gt;</p><p>&lt;body bgcolor=&#34;black&#34; text=&#34;write&#34; link=&#34;yellow&#34; vlink=&#34;lime&#34; alink=&#34;aqua&#34;&gt;</p><p>&lt;a href=&#34;page06c.html&#34;&gt;Click Here&lt;/a&gt;&lt;br&gt;&lt;br&gt;</p><p>&lt;a href=&#34;page06d.html&#34;&gt;Click Here&lt;/a&gt;</p><p>&lt;/body&gt;</p><p>&lt;/html&gt;</p><p><br/></p>', '', '2017-02-17 02:58:49', '2017-02-17 03:44:09'),
(27, '3204-2004', '1', 'ความรู้เกี่ยวกับระบบฐานข้อมูล', '<h1><a href="http://somkiat.sdtc.ac.th/home/public/download/data/4-8.pdf" target="">คลิกเข้าไปอ่าน</a></h1>', '', '2017-10-31 01:55:39', '2017-10-31 02:02:49'),
(28, '2204-2007', '1', 'หลักการเขียนโปรแกรม', '', '', '2017-10-31 23:08:22', '0000-00-00 00:00:00'),
(29, '3204-2106', '1', 'ติดตั้งเครื่องมือ', '<p><br/><!--StartFragment--><span style="font-size: 16px;float: none;">เขียน App Android+Web</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">ติดตั้ง NodeJS และ git </span></p><p></p><p>1. เปิด cmd พิมพ์ <span style="font-size: 16px;">node -v  และ git --version</span></p><p><span style="font-size: 16px;float: none;">    v.8.0.0</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">2.npm install -g ionic</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">3.npm install -g cordova</span><span class="text_exposed_show" style="font-size: 16px;"><br/>       ทำการออกมาจาก path โดย cd<br/>4. ionic start WorkShop blank<br/>5. cd WorkShop<br/>6. ionic serve</span><!--EndFragment--><br/><br/><br/></p>', '', '2017-11-01 00:44:55', '2017-11-01 01:30:28'),
(30, '3204-2004', '2', 'สถาปัตยกรรมฐานข้อมูล', '<div><p>​</p><div><br/></div><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-109.jpg" style="height: 385px;width: 518px;"/></div><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-110.jpg" style="height: 608px;width: 746px;"/>​</p><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-111.jpg" style="height: 611px;width: 755px;"/>​<br/></p><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-112.jpg" style="height: 511px;width: 736px;"/>​</p><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-113.jpg" style="height: 503px;width: 736px;"/>​</p><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-114.jpg" style="height: 437px;width: 740px;"/>​</p><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-115.jpg" style="width: 747px;height: 434px;"/>​</p><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-116.jpg" style="height: 529px;width: 747px;"/>​</p><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-117.jpg" style="height: 295px;width: 742px;"/>​</p><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-118.jpg" style="height: 421px;width: 739px;"/>​</p><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-119.jpg" style="height: 336px;width: 739px;"/>​</p><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-120.jpg" style="height: 505px;width: 733px;"/>​</p><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-121.jpg" style="height: 446px;width: 734px;"/>​</p><p><br/></p><p><img src="http://somkiat.sdtc.ac.th/home/public/activity/large/5-122.jpg" style="height: 343px;width: 741px;"/>​</p><p><br/></p><h1><a href="http://somkiat.sdtc.ac.th/home/public/datasheet/data/18-23.pdf" target="">คลิกทำ แบบทดสอบ</a></h1>', '', '2017-11-01 21:53:17', '2017-11-01 23:01:42'),
(31, '3204-2007', '1', 'ความรู้เกี่ยวกับการเขียน Visual C#', '<h1><a href="http://somkiat.sdtc.ac.th/home/public/datasheet/data/19-24.pdf" target="">คลิกเข้าไปอ่าน</a></h1>', '', '2017-11-03 00:39:15', '2017-11-03 01:04:08'),
(32, '3204-2007', '2', 'ตัวแปรและค่าคงที่', '', '', '2017-11-03 01:23:32', '0000-00-00 00:00:00'),
(33, '2204-2006', '1', 'ภาษาคอมพิวเตอร์  (Computer Programming Language)', '<p>     ภาษาเป็นตัวแทนการสื่อสารระหว่าง 2 สิ่งหรือหลายๆสิ่งเพื่อให้เกิดความหมายและความเข้าใจตรงกัน เช่น  มนุษย์ใช้คำพูดสื่อสารกันก็ถือว่าคำพูดนั้นเป็นภาษาหรืออาจใช้มือในการสื่อสารระหว่างคนที่เป็นใบ้พูดไม่ได้หรือแม้แต่ดนตรีก็ถือว่าเป็นภาษาชนิดหนึ่งที่เป็นสากลเพราะคนชาติใดมาฟังก็จะให้ความรู้สึกเดียวกัน</p><p>     ในทางคอมพิวเตอร์นั้นก็ต้องทำการพัฒนาภาษาที่จะสื่อสารระหว่างมนุษย์กับเครื่องคอมพิวเตอร์แต่ด้วยเหตุที่เครื่องคอมพิวเตอร์เป็นอุปกรณ์อิเล็กทรอนิกส์ซึ่งมีเฉพาะวงจรการเปิดและปิดทำให้เครื่องคอมพิวเตอร์สื่อสารโดยใช้เลขฐานสองเท่านั้นเรียกภาษาที่ใช้เฉพาะเลขฐานสองในคอมพิวเตอร์ว่าภาษาเครื่อง (Machine Language) การที่มนุษย์จะเรียนรู้ภาษาเครื่องนั้นยากมากเพราะนอกจากจะต้องศึกษาถึงอุปกรณ์นั้นอีกด้วยซึ่งจะทำให้การใช้งานคอมพิวเตอร์เป็นเรื่องยุ่งยากจึงมีผู้คิดค้นภาษาคอมพิวเตอร์ขึ้นเพื่อทำหน้าที่ในการติดต่อสื่อสารระหว่างเครื่องคอมพิวเตอร์กับมนุษย์โดยผู้ใช้จะสามารถติดต่อกับเครื่องคอมพิวเตอร์โดยผ่านทางภาษาคอมพิวเตอร์  (Computer Programming Language)<br/></p><p>ชนิดของภาษาคอมพิวเตอร์</p><p>จากการที่มีภาษาจ านวนมากมายนั้นท าให้ต้องก าหนดระดับของภาษาคอมพิวเตอร์เพื่อช่วยในการแบ่งประเภทของภาษาเหล่านั้นการก าหนดว่าเป็นภาษาระดับต่ า หรือภาษาระดับสูงจะขึ้นอยู่กับภาษานั้นใกล้เคียงกับภาษาเครื่องคอมพิวเตอร์  (ใกล้เคียงกับรหัส  0  และ  1  เรียกว่า  ภาษาระดับต่ า)  หรือว่าใกล้เคียงกับภาษาที่มนุษย์ใช้   (ใกล้เคียงกับภาษาอังกฤษเรียกว่า   ภาษาระดับสูง) <br/></p>', '', '2017-11-05 01:04:28', '2017-11-05 01:11:33'),
(34, '3204-2106', '2', 'ขั้นตอนการติดตั้ง MongoDB บน Windows', '<p><br/><span style="font-size: 16px;float: none;">1. เข้าไปที่ </span><a href="https://www.mongodb.org/downloads" target="_blank" rel="noopener nofollow" style="font-size: 16px;">https://www.mongodb.org/downloads</a><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">2. เลือก VERSION </span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - Windows 64-bit 2008 R2+ [ กรณี Windows ของเราเป็น 64 bit ]</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - Windows 32 [ กรณี Windows ของเราเป็น 32 bit ]</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">3. กดปุ่ม DOWNLOAD (MSI)</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">4. ดับเบิ้ลลคลิกไฟล์ที่ดาวโหลดมาเรียบร้อย</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - mongodb-win32-x86_64-2008plus-ssl-3.4.6-signed.msi [ กรณี Windows ของเราเป็น 64 bit ]</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - mongodb-win32-i386-3.4.6-signed.msi [ กรณี Windows ของเราเป็น 32 bit ]</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">5. ขั้นตอนการติดตั้ง MongoDB</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - กดปุ่ม Next</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - ติ๊กถูกที่ I accept the terms in the License Agreement</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - กดปุ่ม Next</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - กดปุ่ม Complete [ กรณีตั้งค่าการติดตั้งอัตโนมัติ ] </span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - หรือ กดปุ่ม Custom (แนะนำ) [ กรณีต้องการตั้งค่าการติดตั้งเอง ]</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - เลือกตำแหน่งที่ต้องการติดตั้ง MongoDB</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          - กดปุ่ม Browse ... </span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          - ตัวอย่าง C:Program FilesMongoDBServer3.4</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - กดปุ่ม Next</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - กดปุ่ม Install</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">6. สร้างโฟล์เดอร์ที่ต้องการเก็บไฟล์ Log, Database</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - Log คือ C:Program Filesmongodbdatalog </span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - Database คือ C:Program Filesmongodbdatadb </span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">7. สร้างไฟล์ตั้งค่า MongoDB ใหม่</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - ตั้งชื่อไฟล์ว่า mongod.cfg</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - พิมพ์คำสั่งภายในไฟล์ mongod.cfg ดังต่อไปนี้</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          systemLog:</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">              destination: file</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">              path: C:Program Filesmongodbdatalogmongod.log</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          storage:</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">              dbPath: C:Program Filesmongodbdatadb</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - เก็บไว้ในไดเรคทอรี่ C:Program FilesMongoDBServer3.0in</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">8. สร้างไฟล์เปิดการใช้งาน MongoDB Database Server </span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - วิธีเปิดการใช้งานที่ 1 (Command-Line)</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          - ตั้งชื่อไฟล์ว่า start_server.bat</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          - พิมพ์คำสั่งภายในไฟล์ start_server.bat ดังต่อไปนี้</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">              @ECHO off</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">              Start mongod.exe --config mongod.cfg</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">              Start mongo.exe</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">              Exit</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          - เก็บไว้ในไดเรคทอรี่ C:Program FilesMongoDBServer3.4in</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          - สร้าง Shortcut ไฟล์ start_server.bat ไว้หน้า Desktop</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">    - วิธีเปิดการใช้งานที่ 2 Service Windows</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          - เข้าไปที่ไฟล์ C:WindowsSystem32cmd.exe</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          - คลิกขวา cmd.exe เลือก &#34;Run as administrator&#34;</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          - พิมพ์คำสั่งดังต่อไปนี้ (เรียงต่อกัน)</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">              sc.exe create MongoDB binPath= &#34;C:<span style="font-size: 16px;float: none;">Program Files</span>MongoDBServer3.4inmongod.exe --service --config=&#34;C:Program FilesMongoDBServer3.4inmongod.cfg&#34;&#34; DisplayName= &#34;MongoDB&#34; start= &#34;auto&#34;</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          - กดปุ่ม ENTER</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">          - คำสั่งการใช้งาน Service</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">              - start คือ net start MongoDB</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">              - stop คือ net stop MongoDB</span><br style="font-size: 16px;"/><span style="font-size: 16px;float: none;">              - delete คือ sc.exe delete MongoDB</span><!--EndFragment--><br/><br/><br/></p>', '', '2017-11-08 06:49:26', '0000-00-00 00:00:00'),
(35, '2201-2001', '9', 'ผลงานนักศึกษา', '<p><img class="ta-insert-video" src="https://img.youtube.com/vi/I4uFJEAn5fA/hqdefault.jpg" ta-insert-video="https://www.youtube.com/embed/I4uFJEAn5fA" contenteditable="false" allowfullscreen="true" frameborder="0"/><br/></p><h2><a href="https://www.youtube.com/watch?v=I4uFJEAn5fA&amp;t=1s" target="">คลิกเข้าชมวีดีโอ</a></h2><p><br/></p><p><img class="ta-insert-video" src="https://img.youtube.com/vi/AGrUlz8jgpg/hqdefault.jpg" ta-insert-video="https://www.youtube.com/embed/AGrUlz8jgpg" contenteditable="false" allowfullscreen="true" frameborder="0"/>​</p><h2><a href="https://www.youtube.com/watch?v=AGrUlz8jgpg" target="">คลิกดูวีดีโอ</a></h2>', '', '2018-01-27 00:26:03', '2018-01-27 02:59:05'),
(36, '3001-2001', '1', 'คอมพิวเตอร์และอุปกรณ์โทรคมนาคม', '', '', '2019-01-05 21:20:55', '0000-00-00 00:00:00'),
(37, '3001-2001', '2', 'ระบบเครือข่ายคอมพิวเตอร์และสารสนเทศ', '', '', '2019-01-05 21:21:36', '0000-00-00 00:00:00'),
(38, '3001-2001', '3', 'การสืบค้นข้อมูลสารสนเทศ', '', '', '2019-01-05 21:21:48', '0000-00-00 00:00:00'),
(39, '3001-2001', '4', 'การจัดเก็บ ค้นคืน ส่งผ่านและจัดดำเนินการข้อมูลสารสนเทศ', '', '', '2019-01-05 21:22:47', '0000-00-00 00:00:00'),
(40, '3001-2001', '5', 'การประยุกต์ใช้โปรแกรมสำเร็จรูปในการนำเสนอ', '', '', '2019-01-05 21:25:17', '0000-00-00 00:00:00'),
(41, '3001-2001', '6', 'test', '', '', '2019-04-23 20:35:10', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE IF NOT EXISTS `course_student` (
  `id` bigint(20) NOT NULL,
  `course_id` varchar(9) COLLATE utf8_bin NOT NULL,
  `student_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `firstname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `address` varchar(250) COLLATE utf8_bin NOT NULL,
  `photo` varchar(30) COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course_student`
--

INSERT INTO `course_student` (`id`, `course_id`, `student_id`, `firstname`, `lastname`, `email`, `phone`, `address`, `photo`, `created`, `modified`) VALUES
(1, '2201-2222', '1001', 'xxx', 'xxx', 'x', '', '', '1001.jpg', '2017-01-05 20:56:41', '2017-02-05 02:23:52'),
(2, '2201-2222', '0027016', 'อินทุภา', 'มาศบิ้ง', 'po_552@hotmail.com', '0989152954', 'วัดดวงแข', '', '2017-01-28 22:48:09', '0000-00-00 00:00:00'),
(3, '3200-0010', '0025768', 'ณัฐพงษ์', 'มูลมา', 'tle0281@gmail.com', '0910036054', 'สุวรรณดี2 SD อพาร์ทเม้น ถนนเลียบคลองประปา บางซื่อ กทม 10800', '', '2017-02-05 01:14:55', '0000-00-00 00:00:00'),
(4, '3200-0010', '26079', 'ศศิธร', 'บุญนำพาสุข', 'maymix1234@gmail.com', '089-1350068', '189/10 ม.3 ถ.สุขสวัสดิ์ ต.ปากคลองบางปลากด อ.พระสมุทรเจดีย์ จ.สมุทรปราการ 10290', '', '2017-02-05 01:15:57', '0000-00-00 00:00:00'),
(5, '3200-0010', '26116', 'นางสาวณัฐวรรณ', 'การเกต', 'natnichakamaporn@gmail.com', '0894967003', '31 ชุมชนแสงสันติ แขวงสวนหลวง เขตสวนหลวง กทม. 10250', '', '2017-02-05 01:16:01', '2017-02-05 01:56:55'),
(6, '3200-0010', '26308', 'ชนิาดาภา', 'ธิธัมมา', 'blinkblink37952@gmail.com', '', '', '', '2017-02-05 01:16:03', '0000-00-00 00:00:00'),
(7, '3200-0010', '0026295', 'เพ็ญนภา', 'ตีบนอก', 'panda.pennapa@gmail.com', '0616407409', 'ดอนเมือง', '', '2017-02-05 01:16:18', '0000-00-00 00:00:00'),
(8, '3200-0010', '0025914', 'นางสาวเรวดี', 'วงค์ชมภู', 'icepoo58@gmail.com', '0971781760', '89 ม.7 ถนนเพิ่มสิน เขตสายไหม กรุงเทพมหานคร 10220', '0025914.jpg', '2017-02-05 01:17:40', '2017-02-05 02:14:05'),
(9, '3200-0010', '26171', 'นางสาวปิยะธิดา', 'ฤกษ์ใหญ่', 'yiew06@gmail.com', '0852221980', '11 ราชครูคอนโด พึ่งมีซอย 1 สุขุมวิท 93 แขวงบางจาก เขตพระโขนง กทม. 11260', '', '2017-02-05 01:18:21', '0000-00-00 00:00:00'),
(10, '3200-0010', '25856', 'ฤทัยรัตน์', 'วงศ์ลา', 'yingruetairut@gmail.com', '0984290906', '37/32 ม.2 ถ.เลียบคลองสาม ต.คลองสาม อ.คลองหลวง จ.ปทุมธานี 12120', '', '2017-02-05 01:18:29', '0000-00-00 00:00:00'),
(11, '3200-0010', '0025798', 'นางสาวนฤชา', 'อยู่สบาย', 'NaruchaYoosabye@gmail.com', '0618516642', '190/108 อาคารทรัพทย์สินส่วนพระมหากษัตริย์ ชั้น 12  ซ.ไผ่สิงห์โต\nถนนพระราม 4 แขวงคลองเตย เขตคลองเตย กรุงเทพฯ 10110', '0025798.jpg', '2017-02-05 01:19:18', '2017-02-05 02:12:23'),
(12, '3200-0010', '00025841', 'อัมพิลา', 'เกิดสุข', 'ampila.somying@gmail.com', '', '', '', '2017-02-05 01:22:10', '2017-02-05 01:23:08'),
(13, '3200-0010', '25989', 'นางสาวสุภาพร', 'เสนาพล', 'sanapon1317@gmail.com', '0959636555', '', '', '2017-02-05 01:23:03', '2017-02-05 01:23:19'),
(15, '3200-0010', '26135', 'ปรัชญาทวี', 'พงษ์พยัคฆ์', 'iauser773@gmail.com', '0965413276', '39/1 ม7', '', '2017-02-05 01:53:03', '0000-00-00 00:00:00'),
(16, '3200-0010', '0025795', 'ชินวิวัฒน์', 'นาวาทอง', 'orojimaru789@gmail.com', '0934137343', 'ช่างอากาศอุทิศที่ 6 เลขที่ 20', '0025795.jpg', '2017-02-05 02:27:15', '2017-02-05 02:34:20'),
(17, '3200-0010', '0026493', 'พงษ์เทพ', 'นาคล้วน', 'chokphongthep99@gmail.com', '0615624290', 'เพชรบุรีตดใหม่', '0026493.jpg', '2017-02-05 02:29:41', '2017-02-05 02:32:35'),
(18, '3200-0010', '0026435', 'ธนกร', 'ลิ้มเจริญ', 'thanakorn.vcb@gmail.com', '0909955443', '160/87 ซ.พัทลุง ถนนลาดพร้าว48 แขวงสามเสนนอก เขตห้วยขวาง กทม 10310', '0026435.jpg', '2017-02-05 02:34:10', '2017-02-05 02:36:18'),
(19, '2201-2001', '26770', 'นายภานุทัศน์', 'จินดามาศ', 'panutat10@gmail.com', '093-875-7457', 'www.siam5.com/panutat', '26770.jpg', '2017-02-21 20:52:49', '2017-10-31 22:53:34'),
(20, '2201-2001', '25987', 'ศุภโชค', 'บาลจบ', 'shanano3370@gmail.com', '0972251435', 'http://www.siam5.com/suphachok', '25987.jpg', '2017-02-21 20:53:13', '2017-02-21 20:54:07'),
(21, '2201-2001', '0026208', 'เหมรัตน์', 'มาตรา', 'patandnay766@gmail.com', '0949092822', 'http://www.siam5.com/hemarat', '0026208.jpg', '2017-02-21 20:53:46', '2017-02-21 21:06:57'),
(22, '2201-2001', '26276', 'นาย สุขสมบูรณ์', 'ผิวสอาด', 'suksomboon.25@gmail.com', '0922482232', 'http://www.siam5.com/suksomboon', '26276.jpg', '2017-02-21 20:53:47', '2017-02-21 20:57:23'),
(23, '2201-2001', '25964', 'มัชพล', 'ชุมใหม่', 'poppr6@hotmail.com', '0961481250', 'http://www.siam5.com/mutchapon', '', '2017-02-21 20:54:03', '0000-00-00 00:00:00'),
(25, '2201-2001', '26216', 'นิติกร', 'บรรเทิงจิตต์', 'max_mii@hotamail.com', '0952685460', 'http://siam5.com/nitikorn/', '26216.jpg', '2017-02-21 20:54:34', '2017-02-21 20:57:01'),
(26, '2201-2001', '0026270', 'ศุภกิตติ์', 'บุญดีพิทักษ์', 'l3omberbangll@gmail.com', '0972054507', 'www.siam5.com/supakit', '0026270.jpg', '2017-02-21 20:54:41', '2017-02-21 21:04:10'),
(27, '2201-2001', '0025955', 'เบญญาภา', 'ไวยศิลา', 'pangnarak009@gmail.com', '0992158389', 'http:/www.siam5.com/benyapa', '0025955.jpg', '2017-02-21 20:54:45', '2017-02-21 21:36:53'),
(29, '2201-2001', '27175', 'เอกรินทร์', 'ศรีมุงคุณ', 'biggame33@outlook.co.th', '0922836670', 'www.siam5.com/akarin', '27175.jpg', '2017-02-21 20:54:56', '2017-02-21 21:01:51'),
(30, '2201-2001', '26484', 'ธันวา', 'ประณิธานธรรม', 'tongza20040@gmail.com', '0633848588', 'http://www.siam5.com/thanwa', '26484.jpg', '2017-02-21 20:55:06', '2017-02-21 20:58:17'),
(31, '2201-2001', '25895', 'อภิสิทธิ์', 'เชยกลิ่นพุฒ', 'm.milkapisit@gmail.com', '0929734417', 'http://www.siam5.com/apisit', '25895.jpg', '2017-02-21 20:55:09', '2017-02-21 21:09:13'),
(32, '2201-2001', '0025878', 'ขวัญชัย', 'จตุเทน', 'tao-140@hotmail.com', '0627732200', 'http:\\www.siam5.com/khwanchai', '0025878.jpg', '2017-02-21 20:55:16', '2017-02-21 20:55:35'),
(33, '2201-2001', '26275', 'กฤษณชัย', 'พัดทัง', 'toey_kisanachai@hotmail.com', '0805524472', '6006/86 ถ.ประชาสงค์เคราะห์ ซ.ประชาสงค์เคราะห์ 11 เขต ดินแดง แขวง ดินแดง กรุงเทพมหานครฯ 10400', '26275.jpg', '2017-02-21 20:55:37', '2017-02-21 20:58:31'),
(34, '2201-2001', '25935', 'กัลยา', 'เล็บพยักษ์', 'earn254274@gmail.com', '', 'kanlaya.siam5.com', '25935.jpg', '2017-02-21 20:55:50', '2017-10-31 23:01:44'),
(35, '2201-2001', '0026269', 'ฐานุวัชร์', 'อุดมธรรมวัสส์', 'Pisit25422542@gmail.com', '0619142415', 'www.siam5.com/thanuwat', '0026269.jpg', '2017-02-21 20:56:10', '2017-02-21 21:05:34'),
(36, '2201-2001', '26273', 'สหัสวรรษ', 'ตรีบุบผา', 'chaidza@gmail.com', '0851115417', 'http://www.siam5.com/sahatsawat', '26273.jpg', '2017-02-21 20:56:47', '2017-02-21 20:57:35'),
(37, '2201-2001', '25968', 'ฐิติกร', 'ศรีพิณ', 'rung_za200@hotmail.com', '0999254703', '8/1', '25968.jpg', '2017-02-21 20:57:48', '2017-02-21 21:01:05'),
(38, '2201-2001', '26130', 'พิชาภพ', 'คงกระพันธ์', 'unlimited24682468@gmail.com', '0952896248', '97/10', '26130.jpg', '2017-02-21 20:57:51', '2017-02-21 21:02:29'),
(39, '2201-2001', '26243', 'ณัฐชยา', 'ยอดยิ่ง', 'nutchayagift31@gmail.com', '0960496254', 'http://www.siam5.com//nutchaya', '26243.jpg', '2017-02-21 20:58:39', '2017-02-21 21:01:40'),
(40, '2201-2001', '0026217', 'นายชนาภัทร', 'เหลี่ยมใส', 'ovlov7536@hotmail.com', '0854458690', 'http://www.siam5.com/chanaphat/#', '0026217.jpg', '2017-02-21 20:59:02', '2017-02-21 21:02:24'),
(41, '2201-2001', '25972', 'ภฤศม', 'ฤทธิ์เรืองเดช', 'engzzz55@gmail.com', '0613897627', 'pharudsama.siam5.com', '25972.jpg', '2017-02-21 21:00:30', '2017-02-21 21:07:32'),
(42, '2201-2001', '26277', 'กัญญารัตน์', 'น้อยนุ้ย', 'pleng145689@gmail.com', '0970693289', 'http://siam5.com/kanyarat/', '26277.jpg', '2017-02-21 21:01:42', '2017-10-31 22:59:07'),
(43, '2201-2001', '26044', 'พงศกร', 'น้อยดี', 'app_10330@hotmail.com', '0838003454', 'http://www.siam5.com/pongsakorn', '26044.jpg', '2017-02-21 21:10:03', '2017-02-21 21:12:58'),
(44, '2201-2001', '25903', 'อิทธิพัทธ์', 'หาญประเทศ', 'kapook_toey3@hotmail.com', '0917492853', 'http://www.siam5.com/ittiphat/', '25903.jpg', '2017-02-21 21:12:23', '2017-02-21 21:14:52'),
(45, '2201-2402', '0027047', 'ศุภชัย', 'ชั้วปลี', 'b_anksupachai@hotmail.com', '0956682433', 'ฉัตรแก้ว ซอย7 ครับ', '0027047.jpg', '2017-06-01 23:45:15', '2017-06-01 23:51:50'),
(46, '2201-2402', '0027392', 'นภัสกร', 'เจริญผล', 'dent_12345@hotmail.com', '', '', '0027392.jpg', '2017-06-01 23:45:17', '2017-06-02 00:04:35'),
(47, '2201-2402', '0027379', 'นาย เทพฤทธิ์', 'โชติจำรัส', 'momo_za01@hotmail.com', '087-931-0856', '-', '0027379.jpg', '2017-06-01 23:46:02', '2017-06-02 00:30:41'),
(48, '2201-2402', '0027125', 'ธนาธิป', 'แซ่โง้ว', 'palawong123456@gmail.com', '', '', '0027125.jpg', '2017-06-01 23:46:19', '2017-06-01 23:52:53'),
(49, '2201-2402', '27281', 'กรณ์รลักษ์', 'อภิรมย์', 'ku_laklove@hotmail.com', '0957678388', '', '27281.jpg', '2017-06-01 23:46:19', '2017-06-01 23:51:04'),
(53, '2201-2402', '0027163', 'พุฒิพงศ์', 'ศรีหล้า', 'puttipongsrilar@gmailcom', '0804487551', 'ใกล้Big Cพระประแดง', '0027163.jpg', '2017-06-01 23:46:43', '2017-06-01 23:54:33'),
(54, '2201-2402', '0027384', 'วันชนะ', 'ทองสุข', 'wonchana2560@gmail.com', '', '', '0027384.jpg', '2017-06-01 23:47:17', '2017-06-01 23:57:26'),
(55, '2201-2402', '0027457', 'เพทาย', 'ทิพย์ศิริ', 'suapaythay18@gmail.com', '0964519597', '33/27 พหลโยธิน พหลโยธิน 6 สามเสนใน พญาไท 10400', '0027457.jpg', '2017-06-01 23:47:33', '2017-06-01 23:57:42'),
(56, '2201-2402', '0027508', 'สุรวุฒิ', 'ศรีวะวงค์', 'fluksurawut@gmail.com', '', '', '0027508.jpg', '2017-06-01 23:47:38', '2017-06-01 23:49:59'),
(57, '2201-2402', '0027014', 'สมประเสริฐ', 'ศรีโรจน์รุ่ง', 'mick_sir43@hotmail.com', '0634868811', '', '0027014.jpg', '2017-06-01 23:47:41', '2017-06-01 23:55:08'),
(58, '2201-2402', '0027252', 'ไอศวรรย์', 'สร้อยรี', 'skull27252@outlook.co.th', '0640493054', '111/1 อ.เมือง ต.ปากน้ำ ถ.สายลวด จ.สมุทรปราการ 10270', '0027252.jpg', '2017-06-01 23:47:45', '2017-06-01 23:49:42'),
(59, '', '', '', '', '', '', '', '', '2017-06-01 23:47:59', '2017-06-01 23:48:18'),
(60, '', '', '', '', '', '', '', '', '2017-06-01 23:47:59', '0000-00-00 00:00:00'),
(61, '2201-2402', '27304', 'ธัญสินี', 'เฮงมัก', 'aoyaaoy555@gmail.com', '', '', '27304.png', '2017-06-01 23:48:21', '2017-06-01 23:53:46'),
(63, '2201-2402', '0027009', 'นาย ศิรพัฒน์', 'ชัยดิลกลาภ', 'gurufrongz@gmail.com', '0954410587', '', '0027009.jpg', '2017-06-01 23:48:44', '2017-06-01 23:51:00'),
(64, '2201-2402', '0027116', 'ญาตวี', 'อินนารี', 'yatavee.first@gamail.com', '', '', '0027116.jpg', '2017-06-01 23:48:48', '2017-06-01 23:56:07'),
(65, '2201-2402', '0027294', 'นาย หัสวรรษ', 'แย้มทุ่ง', 'hatsawat.yamthung@gmail.com', '', '', '0027294.jpg', '2017-06-01 23:49:01', '2017-06-01 23:51:32'),
(67, '2201-2402', '0027300', 'สหภาพ', 'แสงเงิน', 'armzazazazaza5@hotmail.com', '0927294244', '', '0027300.jpg', '2017-06-01 23:49:16', '2017-06-01 23:57:25'),
(68, '2201-2402', '0027242', 'กาญจนา', 'กาสี', 'kaycnakasi200@gmail.com', '', '', '0027242.jpg', '2017-06-01 23:49:36', '2017-06-01 23:51:54'),
(69, '2201-2402', '0027001', 'ตั้งปณิธาน', 'จันทร์อยู่', 'tang263475963@gmail.com', '', '', '0027001.jpg', '2017-06-01 23:50:10', '2017-06-01 23:55:45'),
(70, '2201-2402', '0027040', 'อารียา', 'วงละคร', 'noeynyarmy12@gmail.com', '', '', '0027040.jpg', '2017-06-01 23:50:14', '2017-06-01 23:57:06'),
(71, '', '', '', '', '', '', '', '', '2017-06-01 23:50:14', '0000-00-00 00:00:00'),
(72, '2201-2402', '0027126', 'วุฒิชัย', 'จิตรสคม', 'jd.wuttichai@gmail.com', '', '', '0027126.jpg', '2017-06-01 23:50:23', '2017-06-02 00:34:25'),
(73, '2201-2402', '0027301', 'ยุทธนากร', 'หิรัญวุฒิโรจน์', 'yutlove3521@gmail.com', '55555555555555', 'บ้านผมเองครับ', '0027301.jpg', '2017-06-01 23:52:00', '2017-06-02 00:33:58'),
(74, '2201-2402', '0027195', 'นาย วสุพล', 'มนตรีดิลก', 'nelovene1@gmail.com', '', '', '0027195.jpg', '2017-06-01 23:55:46', '2017-06-02 00:03:23'),
(76, '3204-2004', '24898', 'คุณกร', 'อุบลกิจ', 'artzabing@hotmail.com', '', '', '24898.jpg', '2017-10-31 01:55:44', '2017-10-31 03:24:16'),
(77, '3204-2004', '0024624', 'นาย ธนาทิพย์', 'คล้ายสอน', 'Thanaamp09@gmail.com', '0969735356', '', '0024624.jpg', '2017-10-31 01:56:01', '2017-10-31 12:51:46'),
(79, '3204-2004', '0024731', 'อาทิตย์', 'ซิม', 'gunaummarit@hotmail.com', '061-826-0121', '', '0024731.jpg', '2017-10-31 01:58:36', '2017-10-31 03:12:10'),
(80, '3204-2004', '0024802', 'รัตนพงษ์', 'ธเนศานุรักษ์', 'evildarkone01@gmail.com', '0830663205', '', '0024802.jpg', '2017-10-31 01:58:54', '2017-10-31 03:24:11'),
(81, '3204-2004', '0028389', 'สาวิตร', 'พรมเหลา', '', '', '', '0028389.jpg', '2017-10-31 01:59:11', '2017-10-31 03:18:35'),
(82, '3204-2004', '28331', 'ณภาภัช', 'ญาดา วัฒนกิจ', 'napaphat.tai@gmail.com', '0843855778', '87/80 อ่อนนุช 21/1 สุขุมวิท77 สวนหลวง กรุงเทพฯ', '28331.jpg', '2017-10-31 01:59:37', '2018-07-12 23:32:41'),
(83, '3204-2004', '0024892', 'นายฆณศัพท์', 'ยวงลำใย', 'ton5551234@gmail.com', '084-537-7332', '', '0024892.jpg', '2017-10-31 01:59:43', '2017-10-31 12:57:48'),
(84, '3204-2004', '0025008', 'นายภูวดล', 'พาเคน', 'not29220@gmail.com', '0992827855', '', '0025008.jpg', '2017-10-31 02:00:31', '2017-10-31 03:21:59'),
(85, '3204-2004', '0025048', 'นายธีรพงษ์', 'ธจิรมงคลกิตต์', 'the_guy_1999@hotmail.com', '0929975496', '212/159 ถ.พัฒนาการ ซอย 68 แขวงประเวศ เขตประเวศ กรุงเทพมหานคร 10250', '0025048.jpg', '2017-10-31 02:00:45', '2017-10-31 03:23:03'),
(86, '3204-2004', '28358', 'ศราวิน', 'สากล่ำ', 'copter18782@hotmail.com', '0613543671', '2/219 ม.สรัลพร ถ.เลียบคลองภาษีเจริญฝั่งเหนือ แขวงหนองแขม เขตหนองแขม กรุงเทพมหานคร 10160', '28358.jpg', '2017-10-31 02:00:54', '2017-10-31 02:56:42'),
(87, '3204-2004', '24567', 'ญาดารัตน์', 'ยาวิเศษ', 'ohmmyz_01@hotmail.com', '', '', '24567.jpg', '2017-10-31 02:01:07', '2017-10-31 02:03:48'),
(88, '3204-2004', '0024771', 'นภัทราภรณ์', 'ทับทิมดี', 'mitanifuyu@gmail.com , fuyu_1144@outlook.com', '0939092545', 'กรุงเทพ', '0024771.png', '2017-10-31 02:01:58', '2017-10-31 03:17:03'),
(89, '3204-2004', '0028387', 'ศุภิสรา', 'ผดุงกิจ', 'nimmy18269@gmail.com', '0932511930', '', '0028387.jpg', '2017-10-31 02:02:04', '2017-10-31 03:24:26'),
(90, '3204-2004', '0028303', 'เสวนา', 'แสวง', 'mildx82@gmail.com', '0994577056', '', '0028303.jpg', '2017-10-31 02:02:04', '2017-10-31 02:24:33'),
(91, '3204-2004', '0027969', 'ปิยรัตน์', 'ตราชู', 'piyaratnsood@gmail.com', '0928472568', '', '0027969.jpg', '2017-10-31 02:02:06', '2017-10-31 02:24:39'),
(93, '3204-2004', '27953', 'พัชรินทร์', 'เอียงหลง', 'kikpatcharin1998@gmail.com', '0637981727', '', '27953.jpg', '2017-10-31 02:02:32', '2018-07-12 23:31:30'),
(94, '3204-2004', '24696', 'ชัยวัฒน์', 'งามศรี', 'bankchaiwat99@gmail.com', '0632033535', '306/232 หมู่บ้านกฤษณา ซอยร่มเกล้า 12 ถนนร่มเกล้า แขวงมีนบุรี เขตมีนบุรี กรุงเทพมหานคร 10510', '24696.jpg', '2017-10-31 02:02:45', '2018-07-12 23:31:56'),
(95, '3204-2004', '0024844', 'เกรียงไกร', 'จงไกรจักร์', 'emachies20740@gmail.com', '0966288078', '125/13 ประชาสงเคราะห์ ดินแดง กรุงเทพ 10400', '0024844.jpg', '2017-10-31 02:02:58', '2017-10-31 10:26:25'),
(96, '3204-2004', '24604', 'ณัฐมล', 'ธนชุ่มจีน', 'love85nan@gmail.com', '', '', '24604.jpg', '2017-10-31 02:05:59', '2017-11-01 22:20:38'),
(97, '3204-2004', '24751', 'อทิติยา', 'นามกุล', 'athitiya778@gmail.com', '0994899721', 'นิสากรริซิเด้นท์ แขวงบางโคล่ เขตบางคอแหลม กรุงเทพ 10120', '24751.jpg', '2017-10-31 02:10:04', '2017-10-31 03:22:37'),
(99, '3204-2004', '0028329', 'วราพงษ์', 'แก้วโภคา', 'aqw492541@gmail.com', '098403921', '-', '0028329.jpg', '2017-10-31 02:15:04', '2017-11-01 22:26:16'),
(100, '3204-2004', '0028324', 'พีรพัฒน์', 'พลัดคล้าย', 'peerapat211041@gmail.com', '', '', '0028324.jpg', '2017-10-31 02:15:43', '2017-11-01 22:06:34'),
(101, '2204-2007', '0026269', 'นายฐานุวัชร์', 'อุดมธรรมวัสส์', 'pisit25422542@gmail.com', '0619142415', '', '', '2017-10-31 22:49:54', '2017-10-31 22:53:02'),
(102, '2204-2007', '25987', 'นายศุภโชค', 'บาลจบ', 'shanano3370@gmail.com', '0972251435', '342/7 ซอย ร่มเกล้า27 แยก11 ถนนร่มเกล้า แขวงลาดกระบัง เขตลาดกระบัง', '', '2017-10-31 22:51:25', '2017-10-31 22:53:13'),
(103, '2204-2007', '26217', 'นายชนาภัทร', 'เหลี่ยมใส', 'ovlov0864@gmail.com , ovlov7536@hotmail.com', '-', '', '26217.jpg', '2017-10-31 22:52:14', '2017-10-31 22:58:48'),
(104, '2204-2007', '25878', 'นายขวัยชัย', 'จตุเทน', 'tao-140@hotmail.com', '0627732200', '', '25878.jpg', '2017-10-31 22:53:21', '2017-10-31 23:13:56'),
(105, '2204-2007', '26770', 'นายภานุทัศน์', 'จินดามาศ', 'Panutat10@gmail.com', '0938757457', '', '26770.jpg', '2017-10-31 22:53:21', '2017-10-31 22:53:34'),
(106, '2204-2007', '0026216', 'นายนิติกร', 'บรรเทิงจิตต์', 'max405246@gmail.com', '095-268-5460', '192 ประชาสงเคราะห์ 28 ดินแดง กรุงเทพ 10400', '0026216.jpg', '2017-10-31 22:54:51', '2017-10-31 23:02:10'),
(107, '2204-2007', '0025895', 'นายอภิสิทธิ์', 'เชยกลิ่นพุฒ', 'milkzer.1986@gmail.com', '0929734417', '', '', '2017-10-31 22:55:41', '2017-10-31 23:00:53'),
(108, '2204-2007', '26208', 'นายเหมรัตน์', 'มาตรา', 'patandnay766@gmail.com', '0949092822', '', '26208.jpg', '2017-10-31 22:56:00', '2017-10-31 22:59:24'),
(109, '2204-2007', '26277', 'นางสาวกัญญารัตน์', 'น้อยนุ้ย', 'Pleng145689@gmail.com', '', '', '26277.jpg', '2017-10-31 22:56:01', '2017-10-31 23:00:24'),
(110, '2204-2007', '0026273', 'สหัสวรรษ', 'ตรีบุบผา', 'chaidza@gmail.com', '0851115417', '457/26 ซ.แสงอุทัยทิพย์ ถนนดินแดง1 เขตดินแดง กทม 10400', '0026273.jpg', '2017-10-31 22:56:37', '2017-10-31 22:57:54'),
(111, '2204-2007', '25935', 'นางสาวกัลยา', 'เล็บพยักษ์', 'kalya091999@gmail.com', '', '', '25935.jpg', '2017-10-31 22:56:56', '2017-10-31 23:01:44'),
(112, '2204-2007', '0026272', 'นายสุขสมบูรณ์', 'ผิวสอาด', 'suksomboon.25@gmail.com', '0922482232', '343 ถนนตลิ่นชั่น-บางบัวทอง แขวงฉิมพลี เขตตลิ่นชั่น', '0026272.jpg', '2017-10-31 22:57:40', '2017-10-31 23:12:33'),
(113, '2204-2007', '26270', 'นายศุภกิตติ์', 'บุญดีพิทักษ์', 'l3omberbangll@hotmail.com', '', '', '26270.jpg', '2017-10-31 22:58:42', '2017-10-31 23:03:39'),
(114, '2204-2007', '0026130', 'นายพิชาภพ', 'คงกระพันธ์', 'unlimited24682468@gmail.com', '0619758250', 'ลาดพร้าว 80 แยก 20 แขวงวังทองหลาง เขตวังทองหลาง กรุงเทพฯ', '0026130.jpg', '2017-10-31 23:00:25', '2017-10-31 23:16:47'),
(115, '2204-2007', '0026484', 'ธันวา', 'ประณิธานธรรม', 'tongza09@gmail.com', '0633848588', '19 ซ.พระรามที่ 2 ซอย 69 แยก 3-15-7 แขวงแสมดำ เขตบางขุนเทียน', '', '2017-10-31 23:03:19', '0000-00-00 00:00:00'),
(116, '2204-2007', '25964', 'มัชพล', 'ชุมใหม่', 'poppr9@gmail.com', '0961481250', '2/10 ซ.เจริญนิวาส ถ.พระราม1 แขวงรองเมือง เขตปทุมวัน กทม.10330', '', '2017-10-31 23:03:28', '0000-00-00 00:00:00'),
(117, '2204-2007', '26044', 'พงศกร', 'น้อยดี', 'app_10330@hotmail.com', '0838003454', '152/10 ซ.วัดบรมนิวาสถ.พระราม1 แขวงรองเมือง เขตปทุมวัน กทม.10330', '', '2017-10-31 23:04:25', '0000-00-00 00:00:00'),
(118, '2204-2007', '26243', 'ณัฐชยา', 'ยอดยิ่ง', 'nutchayagift31@gmail.com', '0917797385', 'ประตูน้ำ', '', '2017-10-31 23:27:50', '0000-00-00 00:00:00'),
(119, '3204-2007', '0027081', 'นาย คณิศร', 'คุณโตนด', 'dew.acdc@gmail.com', '0615633361', '', '0027081.jpg', '2017-11-01 00:33:50', '2017-11-01 00:40:05'),
(120, '3204-2007', '0023748', 'นายสุวรรณภูมิ', 'เขียวสอาด', 'icezaice39@gmail.com', '', '', '0023748.png', '2017-11-01 00:34:09', '2017-11-01 00:49:59'),
(121, '3204-2106', '0023748', 'นายสุวรรณภูมิ', 'เขียวสอาด', 'icezaice39@gmail.com', '', '', '0023748.png', '2017-11-01 00:34:28', '2017-11-01 00:49:59'),
(122, '3204-2106', '27464', 'นายธวัชชัย', 'มงคลภาส', 'killerxbalckzero@hotmail.com', '', '135/95 ถ.อาจณรงค์ แฟลต 5 ชั้น 1 เขต คลองเตย แขวงคลองเตย กรุงเทพ 10110', '27464.jpg', '2017-11-01 00:34:56', '2017-11-01 00:46:41'),
(123, '3204-2007', '23474', 'นาย นนท์มนัส', 'ชื่นชูเดช', 'kunanonkempet@hotmail.co.th', '', '424/858 ถนนราชวิถี เขตราชเทวี แขวงทุ่งพญาไท กรุงเทพฯ 10400', '23474.jpg', '2017-11-01 00:35:47', '2017-11-01 00:55:18'),
(124, '3204-2007', '23814', 'นางสาว พงษ์ภัสภ์', 'ชัยวิทยกาญจน์', 'au-ror-1234@hotmail.com', '0916294946', '19/6 ซ.ชุมชนหมูบ้านพัฒนา แขวงทุ่งมหาเมฆ เขตสาทร กรุงเทพมหานคร 10120', '23814.jpg', '2017-11-01 00:36:55', '2017-11-01 00:58:55'),
(125, '3204-2007', '27464', 'นายธวัชชัย', 'มงคลภาส', 'killerxblackzero@hotmail.com', '', '135/95 ถ.อาณรงค์ แฟลต5 ชั้น 1 เขตคลองเตย แขวงคลองเตย กรุงเทพฯ 10110', '27464.jpg', '2017-11-01 00:37:02', '2017-11-01 00:46:41'),
(126, '3204-2007', '23931', 'น.ส.พัชรินทร์', 'อารีย์', 'saimai.14@hotmail.com', '083-0206976', '502/122 ซ.อยู่เจริญ ถ.อโศก-ดินแดง เขตดินแดง กรุงเทพฯ 10400', '23931.jpg', '2017-11-01 00:37:04', '2017-11-01 00:45:01'),
(128, '3204-2007', '23820', 'นายณัฐพันธ์', 'กำจร', 'ddcgoo@gmail.com', '0900100268', '79/137 ถ.พระรามที่ 6 แขวงทุ่งพญาไท เขตราชเทวี กทม. 10400', '23820.jpg', '2017-11-01 00:37:51', '2017-11-01 00:50:26'),
(129, '3204-2106', '23820', 'นายณัฐพันธ์', 'กำจร', 'ddcgoo@gmail.com', '0900100268', '79/137 ถ.พระรามที่ 6 แขวงทุ่งพญาไท เขตราชเทวี กทม. 10400', '23820.jpg', '2017-11-01 00:37:53', '2017-11-01 00:50:26'),
(131, '3204-2106', '23550', 'นาย ธนากร', 'วงศ์ษา', 'britelovely@gmail.com', '0615056395', '56/82 หมู่ 1 ตำบล เสาธงหิน อำเภอ บางใหญ่ จังหวัด นนทบุรี 11140', '23550.jpg', '2017-11-01 00:38:29', '2017-11-01 00:44:08'),
(132, '3204-2007', '23974', 'นาย ศรณ์', 'เพ็ชร์มา', 'basssorn@gmail.com', '0879025402', '509/14 แขวง คลองเตย เขต คลองเตย ถนน สุนทรโกษา', '23974.jpg', '2017-11-01 00:38:54', '2017-11-01 00:47:07'),
(133, '3204-2007', '23682', 'นาย อนุสิทธิ์', 'เพ็งบุญโสม', 'artzero_za@hotmail.com', '', '', '23682.jpg', '2017-11-01 00:39:18', '2017-11-01 00:56:36'),
(134, '3204-2106', '0027081', 'นายคณิศร', 'คุณโตนด', 'dew.acdc@gmail.com', '', '', '0027081.jpg', '2017-11-01 00:39:34', '2017-11-01 00:40:05'),
(135, '3204-2106', '0027554', 'นางสาวชนินาถ', 'จันทศรี', 'chaninat4434@gmail.com', '0986184170', '670/162 ซ.ตลาดขวัญพัฒนา ถ. อโศกดินแดง เขตดินแดง กรุงเทพฯ 10400', '0027554.jpg', '2017-11-01 00:40:03', '2017-11-01 00:47:09'),
(136, '3204-2106', '27130', 'นายวรายุทธ', 'วงษ์วาท', 'Thebas20084@hotmail.com', '', '', '27130.jpg', '2017-11-01 00:40:12', '2017-11-01 00:48:37'),
(137, '3204-2007', '0027554', 'นางสาวชนินาถ', 'จันทศรี 555', 'chaninat4434@gmail.com', '0986184170', '670/162 ซ.ตลาดขวัญพัฒนา ถ. อโศกดินแดง เขตดินแดง กรุงเทพฯ 10400', '0027554.jpg', '2017-11-01 00:41:48', '2017-11-01 00:47:51'),
(138, '3204-2007', '23720', 'นาย ทศพล สืบจากหล้า', 'สืบจากหล้า', 'sodier78@gmail.com', '0994298752', 'ถ.จันทน์ แขวงทุ่งวัดดอน เขตสาทร กทม. 10120', '23720.jpg', '2017-11-01 00:43:44', '2017-11-01 00:50:11'),
(139, '3204-2106', '23931', 'นางสาวพัชรินทร์', 'อารีย์', 'saimai.14@hotmail.com', '083-2026976', '502/122 ซ.อยู่เจริญ ถ.อโศก-ดินแดง เขตดินแดง กรุงเทพฯ 10400', '23931.jpg', '2017-11-01 00:44:40', '2017-11-01 00:50:25'),
(140, '3204-2007', '27164', 'พิมพ์วรีย์', 'บุญสร้าง', 'pimwaree560504@gmail.com', '095-6968684', '', '27164.jpg', '2017-11-01 00:45:07', '2017-11-01 00:54:41'),
(141, '3204-2106', '23974', 'นาย ศรณ์', 'เพ็ชร์มา', 'basssorn@gmail.com', '0879025402', '509/14 แขวง คลองเตย เขต คลองเตย ถนน สุนทรโกษา', '23974.jpg', '2017-11-01 00:46:20', '2017-11-01 00:46:33'),
(142, '', '', '', '', '', '', '', '', '2017-11-01 00:47:01', '0000-00-00 00:00:00'),
(143, '3204-2007', '28712', 'นาย รัชภูมิ', 'พ่วงทรัพย์', 'mybankrachapoom@gmail.com', '0917917354', '', '28712.jpg', '2017-11-01 00:47:01', '2017-11-01 00:56:37'),
(144, '3204-2106', '27167', 'พิสิทธิ์', 'ธิบูรณ์บุญ', 'dewfudo@hotmail.co.th', '0991866561', 'เเฟลต 16/163 ท่าเรือคลองเตย เเขวงคลองเตย เขตคลองเตย กรุงเทพฯ 10110', '', '2017-11-01 00:47:34', '0000-00-00 00:00:00'),
(145, '3204-2106', '27212', 'นาย อรรถพล', 'เรืองศรี', 'Attapolbank05@gmail.com', '0938589223', '91/5 ซอย พระเจน ถนน วิทยุ เเขวงลุมพินี เขตปทุมวัน', '27212.jpg', '2017-11-01 00:47:46', '2017-11-01 00:51:04'),
(146, '3204-2106', '27164', 'นางสาวพิมพ์วรีย์', 'บุญสร้าง', 'pimwaree560504@gmail.com', '095-6968684', '', '27164.jpg', '2017-11-01 00:53:17', '2017-11-01 00:54:41'),
(147, '3204-2106', '23608', 'นายอนุชา', 'แย้มเยื้อน', 'anoocha1953@gmail.com', '0830013197', '5419/4 ซอย.ประชาสงเคราะห์33/1 ถนน.ประชาสงเคราะห์ เขตดินแดง 10400', '23608.jpg', '2017-11-01 00:53:56', '2017-11-01 00:58:02'),
(148, '3204-2106', '23474', 'นาย นนท์มนัส', 'ชื่นชูเดช', 'kunanonkempet@hotmail.co.th', '', '424/858 ถนนราชวิถี เขตราชเทวี แขวงทุ่งพญาไท กรุงเทพฯ 10400', '23474.jpg', '2017-11-01 00:55:02', '2017-11-01 00:55:18'),
(149, '3204-2106', '23682', 'นาย อนุสิทธิ์', 'เพ็งบุญโสม', 'artzero_za@hotmail.com', '09337543XX', '', '23682.jpg', '2017-11-01 00:56:19', '2017-11-01 00:56:36'),
(150, '3204-2106', '28712', 'นาย รัชภูมิ', 'พ่วงทรัพย์', 'mybankrachapoom@gmail.com', '0917917354', '', '28712.jpg', '2017-11-01 00:56:22', '2017-11-01 00:56:37'),
(151, '', '', '', '', '', '', '', '', '2017-11-01 00:56:22', '0000-00-00 00:00:00'),
(152, '', '', '', '', '', '', '', '', '2017-11-01 00:56:22', '0000-00-00 00:00:00'),
(153, '3204-2007', '23608', 'นายอนุชา', 'แย้มเยื้อน', 'anoocha1953@gmail.com', '0830013197', '5419/4 ซอย.ประชาสงเคราะห์33/1 ถนน.ประชาสงเคราะห์ เขตดินแดง 10400', '23608.jpg', '2017-11-01 00:57:51', '2017-11-01 00:58:02'),
(154, '3204-2106', '23814', 'นาย พงษ์ภัสภ์', 'ชัยวิทยกาญจน์', 'au-ror-1234@hotmail.com', '0916294946', '19/6 ซ.ชุมชนหมู่บ้านพัฒนา แขวงทุ่งมหาเมฆ เขตสาทร กรุงเทพมหานคร 10120', '23814.jpg', '2017-11-01 00:58:42', '2017-11-01 00:58:55'),
(155, '3204-2007', '27130', 'นายวรายุทธ', 'วงษ์วาท', 'Thebas20084@hotmail.com', '', '', '', '2017-11-01 00:59:27', '0000-00-00 00:00:00'),
(156, '3204-2004', '0025232', 'โศภณ', 'ปุญณกิตติ', 'pontonygang@hotmail.com', '0948105337', '728/28 ถ.ประชาสงเคราะห์ ซ.ชานเมืองแยก 4 เขตดินแดง แขวงดินแดง', '0025232.webp', '2017-11-01 22:07:52', '2017-11-01 22:57:17'),
(157, '2204-2007', '27175', 'เอกรินทร์', 'ศรีมุงคุณ', 'onew0840733101@gmail.com', '', '', '', '2017-11-02 00:02:58', '0000-00-00 00:00:00'),
(158, '2204-2007', '25972', 'ภฤศม', 'ฤทธิ์เรืองเดช', 'engzzz55@gmail.com', '', '', '', '2017-11-02 00:04:22', '0000-00-00 00:00:00'),
(159, '3204-2005', '22688', 'นายพิเชษฐ', 'คำหลาน', 'not22688@hotmail.com', '', '', '22688.jpg', '2017-11-04 23:53:44', '2017-11-04 23:57:36'),
(160, '3204-2005', '27671', 'ศิริวรรณ', 'ทองดีนอก', 'nidnoisiriwan15@gmail.com', '', '', '27671.jpg', '2017-11-04 23:53:58', '2017-11-05 00:00:03'),
(161, '3204-2005', '27611', 'นายนิวัฒน์', 'ดวงแก้ว', 'niwat20107@gmail.com', '', '', '27611.jpg', '2017-11-04 23:54:03', '2017-11-05 00:03:48'),
(162, '3204-2005', '27682', 'ชฎาพร', 'จันทะคุณ', 'chadapornjantakun@gmail.com', '', '', '27682.jpg', '2017-11-04 23:54:08', '2017-11-05 00:13:14'),
(165, '3204-2005', '27612', 'น.ส.พัชรี', 'คำแฝง', 'patchareekamfang24@gmail.com', '', '', '27612.jpg', '2017-11-04 23:54:54', '2017-11-05 00:00:08'),
(166, '3204-2005', '0027598', 'ฉัตรชัย', 'เย็นนิกร', 'chatchai.yennikorn@gmail.com', '-', '-', '0027598.jpg', '2017-11-04 23:54:54', '2017-11-04 23:58:35'),
(167, '3204-2005', '27651', 'รัตน์สุดา', 'อาจหาญ', 'ftw.yuii@gmail.com', '', '', '27651.jpg', '2017-11-04 23:54:57', '2017-11-05 00:21:58'),
(168, '', '', '', '', '', '', '', '', '2017-11-04 23:54:57', '0000-00-00 00:00:00'),
(169, '', '', '', '', '', '', '', '', '2017-11-04 23:54:57', '0000-00-00 00:00:00'),
(170, '3204-2005', '24195', 'นายณัฏฐ์', 'ปัญญา', 'apisitpanya5@gmail.com', '', '', '24195.jpg', '2017-11-04 23:55:00', '2017-11-04 23:59:56'),
(171, '3204-2005', '27640', 'กนกวรรณ', 'คงรวยทรัพย์', 'faiigolf12@gmail.com', '', '', '27640.jpg', '2017-11-04 23:55:38', '2017-11-05 00:22:41'),
(172, '3204-2005', '27633', 'กมลชนก', 'น้อยเทพ', '้hlinkamonchanok@gmail.com', '', '137/8 ซ.สนามคลี (โปโล) ถ.วิทยุ แขวงลุมพินี เขตปทุมวัน กรุงเทพ 10330', '27633.jpg', '2017-11-04 23:56:21', '2017-11-05 00:01:15'),
(173, '3204-2005', '27666', 'รัฐ', 'เหรียญมณี', 'rathrienmanee.rath@gmail.com', '', '', '27666.jpg', '2017-11-05 00:00:21', '2017-11-05 00:00:32'),
(174, '3204-2005', '27723', 'นางสาววาสนา', 'อุตอามาตย์', 'gungging19933@gmail.com', '0971425946', '', '27723.jpg', '2017-11-05 00:00:34', '2017-11-05 00:11:41'),
(175, '3204-2005', '27722', 'ปัญญวัฒน์', 'พันพะม่า', 'maymand33@gmail.com', '0629283278', '', '27722.jpg', '2017-11-05 00:00:47', '2017-11-05 00:07:26'),
(176, '3204-2005', '27713', 'ประมวล', 'ไชยจันทร์', 'pramaun.1984@gmail.com', '', '', '27713.jpg', '2017-11-05 00:02:34', '2017-11-05 00:25:24'),
(177, '3204-2005', '27737', 'เบญจมาาศน์', 'กีตา', 'brend.day1834@gmail.com', '', '', '27737.jpg', '2017-11-05 00:03:27', '2017-11-05 00:22:56'),
(178, '3204-2005', '27689', 'จิราภรณ์', 'แก้วจันทร์', 'chichi_menk@hotmail.com', '', '29/9 อินทามระ 27 ถ.สุทธิสารวินิจฉัย แขวงสามเสนใน เขตพญาไท กรุงเทพ 10400', '27689.jpg', '2017-11-05 00:08:43', '2017-11-05 00:09:03'),
(184, '3200-0010', '28147', 'นายกิตติพัฒน์', 'สุธรรมมา', 'nonseeitroom56ks01@gmail.com', '0943218423', '4/42 เชื้อเพลิง ช่องนนทรี ยานนาวา กรงเทพมหานคร 10120', '28147.jpg', '2018-06-13 22:36:28', '2018-06-13 22:41:52'),
(185, '3200-0010', '28250', 'ธนิก', 'อาลีมีน', 'arleemeen@gmail.com', '0941584042', '26/41 จ.สมุทรปราการ อ.พระประแดง ต.บางพึง 10130 หมู่18', '28250.jpg', '2018-06-13 22:36:35', '2018-06-13 22:44:04'),
(186, '3200-0010', '27939', 'นาย วสันต์', 'ก๋าชุ่ม', 'EZKAmazingT@gmail.com', '0953168510', 'บ.18ซ.พร้อมพงษ์ถ.ประชาสงเคราะห์14เขตดินแดงแขวงดินแดง กรุงเทพ 10400', '27939.jpg', '2018-06-13 22:37:06', '2018-06-13 22:40:49'),
(187, '3200-0010', '0028217', 'ประสบโชค', 'วัฒนะโอฬาร', 'psc.tt8@gmail.com', '0902576145', '', '0028217.jpg', '2018-06-13 22:37:06', '2018-06-13 22:45:27'),
(188, '3200-0010', '28244', 'นายปัญจพล', 'เชิดกาย', 'papz25452545@gmail.com', '0925398020', '104/51 หมู่9 ต.คลองอุดมชลจร อ.เมืองฉะเชิงเทรา จ.ฉะเชิงเทรา', '28244.jpg', '2018-06-13 22:37:25', '2018-06-13 22:43:31'),
(189, '3200-0010', '0028248', 'นาย มินทดา', 'วังเวง', 'min_razer@hotmail.com', '0851646534', '454/3 เพชรบุรีซอย5 เขตราชเทวี แขวงทุ่งพญาไท กรุงเทพมหานครฯ 10400', '0028248.jpg', '2018-06-13 22:39:12', '2018-06-13 22:42:19'),
(190, '3200-0010', '27910', 'ธนภัทร', 'จุ้ยเชื้อ', 'wesdxc2014@gmail.com', '0646928124', '', '27910.jpg', '2018-06-13 22:39:40', '2018-06-13 22:50:05'),
(191, '3200-0010', '0028224', 'นางสาว ยุรวลี', 'กัณหาเขียว', 'oumnoyy098@gmail.com', '0985087427', '177/120 อินทราคอนโดมิเนียม เเขวงพยาไท เขตราชเทวี', '0028224.jpg', '2018-06-13 22:39:50', '2018-06-13 22:43:28'),
(192, '3200-0010', '28153', 'สหรัฐ', 'จันทราช', 'nesssdtc911@gmail.com', '0995418813', '6007/61 แฟลตขวาง1 ประชาสงเคราะห์ ซอย3 ดินแดง กรุงเทพฯ', '28153.jpg', '2018-06-13 22:39:50', '2018-06-13 22:44:18'),
(195, '3200-0010', '0028194', 'พรนภา', 'เพียงจันทร์', 'Ja.dom555@gmail.com', '0849300167', '758/148 หมู่บ้านพฤกษาวิล57(ซอย7)\nซอยพัฒนาการ38 ถนนพัฒนาการ\nแขวงสวนหลวง เขตสวนหลวง 10250', '0028194.jpg', '2018-06-13 22:40:31', '2018-06-13 22:50:05'),
(197, '3200-0010', '0028203', 'นางสาว ภัทรกันย์', 'ไพบูย์ยิ่ง', 'paiboonyingk@gmail', '0841442340', 'ประชาอุทิศ 18  บ้านเลขที่ 602  เขตห้วยขวาง', '0028203.jpg', '2018-06-13 22:40:55', '2018-06-13 22:54:23'),
(198, '3200-0010', '27894', 'ปัญญาทรัพย์', 'สัมปันนัง', 'ballrt123@gmail.com', '0970070586', '560/196 เกล้าสยามคอนโด ดินแดง ดินแดง กรุงเทพมหานคร 10400', '27894.jpg', '2018-06-13 22:41:00', '2018-06-13 22:48:37'),
(199, '3200-0010', '0027982', 'นายติณณภพ', 'พาโชคกทม', 'tinnapop.boss@gmail.com', '0618876005', 'เขต ป้อมปราบศัตรูพ่าย ถนน บำรุงเมือง แขวง เทพศิรินทร์  ซอย ยศเส 2', '0027982.jpg', '2018-06-13 22:41:06', '2018-06-13 22:42:55'),
(200, '3200-0010', '0028306', 'สมประสงค์', 'เฉียบสูงเนิน', 'gta555gta555@gmail.com', '0828657198', '', '0028306.jpg', '2018-06-13 22:41:38', '2018-06-13 22:46:17'),
(201, '3200-0010', '0028233', 'ศักรินทร์', 'สมน้อย', 'copzaza100@hotmail.com', '0926508522', '813/33 เพชรบุรี19 เขตราชเทวี แขวงพญาไท', '0028233.jpg', '2018-06-13 22:41:39', '2018-06-13 22:46:06'),
(202, '3200-0010', '0028152', 'นางสาว ปุญณิสา', 'วุฒิยา', 'poonnisa201.@gmail.com', '0983816772', '', '0028152.jpg', '2018-06-13 22:41:40', '2018-06-13 22:52:09'),
(203, '3200-0010', '0025810', 'วันชนะ', 'จุทสิงห์', 'filmza45678@gmail.com', '0969731880', '', '0025810.jpg', '2018-06-13 22:41:42', '2018-06-13 22:47:38'),
(204, '3200-0010', '0027907', 'นางสาว กัลยรัตน์', 'ชมจิตร', 'kanyarat11224@gmail.com', '0626600168', '', '0027907.jpg', '2018-06-13 22:41:45', '2018-06-13 22:46:43'),
(205, '3200-0010', '0028156', 'ภัทรพล', 'เรืองแสง', 'NP120260_@hotmail.com', '0918820406', '', '0028156.jpg', '2018-06-13 22:41:47', '2018-06-13 22:45:31'),
(206, '3200-0010', '28138', 'นาย อนุชิต', 'สุขศิลป์', 'anuchit.sooksilp@gmail.com', '0969186303', '597/53 อินทรามระ 41 เขต ดินเเดง เเขวง ดินเเดง 10400', '28138.jpg', '2018-06-13 22:41:49', '2018-06-13 22:45:24'),
(207, '3200-0010', '28139', 'ชัชวิล', 'โตเเก้ว', 'chachawintokaew@gmail.com', '0640873763', '306/23 ถนน วิภาวดีรังสิต เเขวงทุ่งสองห้อง เขต หลักสี่ กทม.10210', '28139.jpg', '2018-06-13 22:42:13', '2018-06-13 23:18:56'),
(208, '3200-0010', '0028605', 'กนกภัณฑ์', 'คงเจริญ', 'kanokphankhongcharone@gmail.com', '0616857739', '1312 แฟลตจุฬานิวาส ซ.9 แขวง วังใหม่ เขต ปทุมวัน กรุงเทพ', '0028605.jpg', '2018-06-13 22:42:50', '2018-06-13 22:50:07'),
(209, '3200-0010', '28411', 'ธิติ', 'พัฒนาภิเศรษฐ์กุล', 'tmobl76@gmail.com', '0955430251', '', '28411.jpg', '2018-06-13 22:42:58', '2018-06-13 22:49:56'),
(210, '3200-0010', '27908', 'นายวรากร', 'บุญยอด', 'zxcvbnmgon@gmail.com', '0927148194', '', '27908.jpg', '2018-06-13 22:43:27', '2018-06-13 22:50:59'),
(211, '3200-0010', '0028196', 'ฉัตราธร', 'กันบัวลา', 'wematummai@gmail.com', '0809146992', '32 ซอย เฉลิมพระเกียรติร.9 19 แขวง หนองบอน เขต ประเวศ กรุงเทพมหานครฯ 10250', '0028196.jpg', '2018-06-13 22:44:08', '2018-06-13 23:00:04'),
(212, '3200-0010', '0028182', 'กฤติเดช', 'จังมงคลกาล', 'monbernard14852@gmail.com', '0924543970', '', '0028182.jpg', '2018-06-13 22:44:20', '2018-06-13 22:47:58'),
(213, '3200-0010', '0028246', 'ปุณณวีร์', 'เฮงสมบูรณ์', 'nameminiza1@gmail.com', '0927356656', '17 ซ.ฉลองกรุง 39  แขวง ลำปลาทิว เขต ลาดกระบัง กรุงเทพมหาใคร', '0028246.jpg', '2018-06-13 22:45:06', '2018-06-13 22:59:34'),
(215, '3200-0010', '27916', 'นฤรงค์', 'คงแสนคำ', 'rajaoros34544@gmail.com', '0952143398', '', '27916.jpg', '2018-06-13 22:45:16', '2018-06-13 22:49:07'),
(216, '3200-0010', '27960', 'นายกัลชาญ', 'ศรีไพสน', 'ootpop@gmail.com', '0617745231', '', '', '2018-06-13 22:45:21', '0000-00-00 00:00:00'),
(217, '3200-0010', '27922', 'ณัชพล', 'แนวดี', 'gtapk131@gmail.com', '0948844338', '119/49 ซอยพุทธรักษา แขวง บางผึ้ง เขต พระประแดง', '27922.jpg', '2018-06-13 22:45:54', '2018-06-13 22:48:41'),
(218, '3200-0010', '0028168', 'ธนวัฒน์', 'พงษ์เมธี', 'jamefolo741@gmail.com', '0624967911', '', '0028168.jpg', '2018-06-13 22:46:04', '2018-06-13 22:55:08'),
(219, '3200-0010', '0027970', 'พละพล', 'ศรีวรรณโต', 'eartzagame115@hotmail.com', '0821974269', '', '0027970.jpg', '2018-06-13 22:48:09', '2018-06-13 22:52:05'),
(220, '3200-0010', '0027949', 'พันธณัฐ', 'เจตนเสน', 'aingaing1008@hotmail.com', '0970079641', '', '0027949.jpg', '2018-06-13 22:49:06', '2018-06-13 23:00:43'),
(221, '3200-0010', '0028227', 'นาย ชาฑโยดม ศิวิไล', 'ศิวิไล', 'jamejimmy2544@gmail.com', '0972871216', '', '', '2018-06-13 22:49:56', '0000-00-00 00:00:00'),
(222, '3200-0010', '0027834', 'พนมกร', 'ปัญญาคม', 'jobsnr@hotmail.com', '0627685757', '', '0027834.jpg', '2018-06-13 22:51:32', '2018-06-13 22:58:54'),
(223, '3200-0010', '27945', 'ณัฐกฤษณ์', 'เบ้าสาลี', 'pog123@hotmail.co.uk', '0969964709', '', '27945.jpg', '2018-06-13 22:51:33', '2018-06-13 22:55:55'),
(225, '3200-0010', '28056', 'เกียรตินิยม', 'ทบวงศ์', 'smoothty4198@gmail.com', '091670493', 'London', '28056.jpg', '2018-06-13 22:54:32', '2018-06-13 22:58:03'),
(226, '3200-0010', '28002', 'ธนาตย์', 'สนิทใน', 'Sthnaty@gmail.com', '0638806628', '', '28002.png', '2018-06-13 22:56:19', '2018-06-13 23:01:25'),
(227, '3001-2001', '29663', 'นางสาวณัฐชรินทร์', 'สมาน', 'wawa-12-121@hotmail.com', '', '', '', '2019-01-05 21:33:06', '0000-00-00 00:00:00'),
(228, '3001-2001', '', 'นางสาว สุภาพร', 'หอมดวงศรี', 'Supaporn.8899@gmail.com', '0967960581', '', '', '2019-01-05 21:36:21', '0000-00-00 00:00:00'),
(229, '3001-2001', '29661', 'กนกพร', 'พนาลัยจารุ', 'kanokpornpana592@gmail.com', '', '', '', '2019-01-05 21:36:36', '0000-00-00 00:00:00'),
(230, '3001-2001', '29644', 'รวิวรรณ', 'จันทิมา', 'rawiwan999@outlook.com', '', '', '', '2019-01-05 21:37:27', '0000-00-00 00:00:00'),
(231, '3001-2001', '29624', 'น.ส. ภาพัชร', 'สุขแก้ว', 'phaphat0836465416@gmail.com', '-', '-', '', '2019-01-05 21:39:06', '0000-00-00 00:00:00'),
(232, '3001-2001', '29634', 'น.ส.วรรณภา', 'อินต๊ะปวน', 'fern33884@gmail.com', '', '', '', '2019-01-05 21:58:09', '0000-00-00 00:00:00'),
(233, '3001-2001', '29667', 'นัจนันท์', 'นุ่มมณี', 'Mmuaynummanee21@gmail.com', '', '', '', '2019-01-05 22:00:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE IF NOT EXISTS `download` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_bin NOT NULL,
  `detail` text COLLATE utf8_bin NOT NULL,
  `source` varchar(100) COLLATE utf8_bin NOT NULL,
  `filename` varchar(20) COLLATE utf8_bin NOT NULL,
  `views` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `title`, `detail`, `source`, `filename`, `views`, `created`, `modified`) VALUES
(1, 'ss', 'sss', 'ss', '', 0, '2019-04-04 16:14:30', '0000-00-00 00:00:00'),
(2, 'ddd', 'ddd', 'ddd', '', 0, '2019-04-04 23:33:14', '0000-00-00 00:00:00'),
(3, 'Doww', 'www', 'www', '', 0, '2019-04-10 14:09:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `download_files`
--

CREATE TABLE IF NOT EXISTS `download_files` (
  `id` int(11) NOT NULL,
  `download_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `filename` varchar(250) COLLATE utf8_bin NOT NULL,
  `files` varchar(20) COLLATE utf8_bin NOT NULL,
  `views` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_bin NOT NULL,
  `detail` text COLLATE utf8_bin NOT NULL,
  `source` varchar(100) COLLATE utf8_bin NOT NULL,
  `filename` varchar(20) COLLATE utf8_bin NOT NULL,
  `views` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `detail`, `source`, `filename`, `views`, `created`, `modified`) VALUES
(1, 'aaaa', 'aaa', 'aaa', '', 0, '2019-04-02 19:56:35', '2019-04-04 23:33:27'),
(2, 'bbb', 'bbb', 'bbb', '', 0, '2019-04-04 23:33:41', '0000-00-00 00:00:00'),
(3, 'test', '', '', '', 0, '2019-04-07 15:18:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `news_files`
--

CREATE TABLE IF NOT EXISTS `news_files` (
  `id` int(11) NOT NULL,
  `news_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `filename` varchar(250) COLLATE utf8_bin NOT NULL,
  `files` varchar(20) COLLATE utf8_bin NOT NULL,
  `views` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `news_files`
--

INSERT INTO `news_files` (`id`, `news_id`, `filename`, `files`, `views`, `created`, `modified`) VALUES
(1, '1', 'IC3 Certificate.pdf', '1-1.pdf', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL,
  `year` varchar(10) COLLATE utf8_bin NOT NULL,
  `project_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `title` varchar(250) COLLATE utf8_bin NOT NULL,
  `abstract` text COLLATE utf8_bin NOT NULL,
  `keyword` text COLLATE utf8_bin NOT NULL,
  `author` varchar(250) COLLATE utf8_bin NOT NULL,
  `advisor` varchar(100) COLLATE utf8_bin NOT NULL,
  `level` varchar(50) COLLATE utf8_bin NOT NULL,
  `major` varchar(100) COLLATE utf8_bin NOT NULL,
  `faculty` varchar(30) COLLATE utf8_bin NOT NULL,
  `groups` varchar(30) COLLATE utf8_bin NOT NULL,
  `budget` varchar(5) COLLATE utf8_bin NOT NULL,
  `files` varchar(30) COLLATE utf8_bin NOT NULL,
  `views` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `year`, `project_id`, `title`, `abstract`, `keyword`, `author`, `advisor`, `level`, `major`, `faculty`, `groups`, `budget`, `files`, `views`, `created`, `modified`) VALUES
(1, '2562', '1001', 'Test', 'Test', 'ใคร', 'Test', 'สุกัญญา', 'ปวช.', 'คอมพิวเตอร์', 'เทคโนโลยีสารสนเทศ', 'สมทบ', '200', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '2562', '1002', 'test', 'test', 'test', 'สมศัก', 'อ.สมเกียรติ ใจดี', 'ปวช.', 'คอมพิวเตอร์', 'เทคโนโลยีสารสนเทศ', 'อาทิตย์', '200', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE IF NOT EXISTS `project_files` (
  `id` int(11) NOT NULL,
  `project_id` varchar(15) COLLATE utf8_bin NOT NULL,
  `filename` varchar(250) COLLATE utf8_bin NOT NULL,
  `files` varchar(30) COLLATE utf8_bin NOT NULL,
  `views` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL,
  `student_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `firstname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(50) COLLATE utf8_bin NOT NULL,
  `sex` varchar(10) COLLATE utf8_bin NOT NULL,
  `address` varchar(250) COLLATE utf8_bin NOT NULL,
  `tel` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `birthday` varchar(100) COLLATE utf8_bin NOT NULL,
  `level` varchar(50) COLLATE utf8_bin NOT NULL,
  `classroom` varchar(20) COLLATE utf8_bin NOT NULL,
  `major` varchar(100) COLLATE utf8_bin NOT NULL,
  `groups` varchar(20) COLLATE utf8_bin NOT NULL,
  `photo` varchar(20) COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `student_id`, `firstname`, `lastname`, `sex`, `address`, `tel`, `email`, `birthday`, `level`, `classroom`, `major`, `groups`, `photo`, `created`, `modified`) VALUES
(8, 'T40001', 'อ.ยุทธนา', 'ยุทธยงค์', 'ชาย', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'T36003', 'อ.สันติ', 'ทองประสูตร', 'ชาย', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'T48002', 'อ.ธนบดี', 'ศรีวิเศษ', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'T51008', 'อ.พรชิตา', 'เทือกทา', 'ชาย', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'T57002', 'อ.นิรชา', 'แตงเนื้อเหลือง', 'ชาย', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'T49004', 'อ.สมเกียรติ', 'ใจดี', 'ชาย', '', '', '', '', '', '', '', '', 'T49004.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'T59003', 'ขจรยศ', 'วรารัตน์ธนาเวช', 'ชาย', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL,
  `teacher_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `firstname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(50) COLLATE utf8_bin NOT NULL,
  `position` varchar(250) COLLATE utf8_bin NOT NULL,
  `sex` varchar(10) COLLATE utf8_bin NOT NULL,
  `address` varchar(250) COLLATE utf8_bin NOT NULL,
  `tel` varchar(20) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `photo` varchar(20) COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `teacher_id`, `firstname`, `lastname`, `position`, `sex`, `address`, `tel`, `email`, `photo`, `created`, `modified`) VALUES
(8, 'T40001', 'อ.ยุทธนา', 'ยุทธยงค์', 'อาจารย์ประจำ', 'ชาย', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'T36003', 'อ.สันติ', 'ทองประสูตร', 'หัวงานสารสนเทศ', 'ชาย', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'T48002', 'อ.ธนบดี', 'ศรีวิเศษ', 'อาจารย์ประจำ', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'T51008', 'อ.พรชิตา', 'เทือกทา', 'อาจารย์ประจำ', 'ชาย', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'T49004', 'อ.สมเกียรติ', 'ใจดี', 'หัวหน้าคณะเทคโนโลยีสารสนเทศ', 'ชาย', '', '', '', 'T49004.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `firstname` varchar(50) COLLATE utf8_bin NOT NULL,
  `lastname` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `facebook` varchar(100) COLLATE utf8_bin NOT NULL,
  `idline` varchar(20) COLLATE utf8_bin NOT NULL,
  `rule` varchar(10) COLLATE utf8_bin NOT NULL,
  `photo` varchar(20) COLLATE utf8_bin NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `email`, `facebook`, `idline`, `rule`, `photo`, `created`, `modified`) VALUES
(1, 'admin', '1234', '', '', '', '', '', 'admin', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_photo`
--
ALTER TABLE `activity_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_checktime`
--
ALTER TABLE `course_checktime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_content`
--
ALTER TABLE `course_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `download_files`
--
ALTER TABLE `download_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_files`
--
ALTER TABLE `news_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` bigint(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `activity_photo`
--
ALTER TABLE `activity_photo`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `course_checktime`
--
ALTER TABLE `course_checktime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `course_content`
--
ALTER TABLE `course_content`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `course_student`
--
ALTER TABLE `course_student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=234;
--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `download_files`
--
ALTER TABLE `download_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `news_files`
--
ALTER TABLE `news_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
