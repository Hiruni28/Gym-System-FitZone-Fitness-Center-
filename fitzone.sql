-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 01:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fitzone`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(25) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `email`, `position`, `password`) VALUES
(1, 'Lakshi Sewwandi', 'lakshi', 'lakshi@gmail.com', 'manager', 'e9a517298d41595db5f37e899c4f92bf'),
(2, 'Manoj Prasanka', 'manoj', 'manoj@gmail.com', 'manager', 'f34a2cb9be9840cee355c3fe81c028cc'),
(5, 'Nisal Perera', 'nisal', 'nisal@gmail.com', 'staff', '96e7a05769302ac63d9c14885dd8c1ee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`id`, `title`, `content`, `image`, `created_at`) VALUES
(3, 'Effective Workout Routines for Every Fitness levels', 'Whether you\'re a beginner just starting out on your fitness journey, an intermediate looking to up your game, or an advanced athlete aiming to break through plateaus, finding the right workout routine is crucial for achieving your goals. Here, we explore tailored workout plans for all fitness levels:\r\n\r\n**Beginner Routine:**\r\nIf you\'re new to working out, the key is to start slowly and focus on building a strong foundation. Incorporate 20-30 minutes of light cardio exercises such as brisk walking, cycling, or using the elliptical. Complement your routine with bodyweight exercises like squats, lunges, push-ups, and planks. The focus is on developing strength, flexibility, and endurance while avoiding injury.\r\n\r\n**Intermediate Routine:**\r\nFor those with some experience, it’s time to step up. Combine moderate cardio with resistance training. Focus on targeting different muscle groups on specific days (e.g., leg day, upper body day). Include exercises such as deadlifts, bench presses, and rows. Don’t forget to integrate core exercises and always allow time for a proper cool-down.\r\n\r\n**Advanced Routine:**\r\nFor seasoned athletes, advanced workouts revolve around high-intensity interval training (HIIT) and heavier weightlifting. Incorporate compound movements like squats, deadlifts, and clean-and-jerk, and ensure progressive overload to challenge your muscles. Remember, rest and recovery are essential for long-term success and avoiding overtraining.\r\n\r\nNo matter what your fitness level is, consistency and dedication are key to making progress. Adjust your workouts based on how your body feels, and remember to consult a fitness professional if you\'re unsure about proper techniques or need personalized guidance.\r\n\r\nStay active, stay consistent, and enjoy the process!', 'Blog_5034.jpg', '2024-10-20 11:57:51'),
(5, '10-Minute Full Body Workouts for Busy Schedules', 'If you’re short on time but want to stay fit, a quick 10-minute workout can be just what you need. These workouts can help you maintain your fitness goals even on your busiest days. Try this routine:\r\n\r\nJumping Jacks – 1 minute\r\nPush-Ups – 1 minute\r\nSquats – 1 minute\r\nPlank – 1 minute\r\nLunges – 1 minute (switch legs halfway)\r\nBurpees – 1 minute\r\nMountain Climbers – 1 minute\r\nBicycle Crunches – 1 minute\r\nHigh Knees – 1 minute\r\nCool Down Stretching – 1 minute\r\nThis short routine engages your entire body and gets your heart pumping. Remember, consistency is key, so try to squeeze in these short but effective workouts whenever you can!', 'Blog_2856.webp', '2024-10-20 12:05:52'),
(6, 'Top 5 Benefits of Strength Training for Women', 'Strength training isn’t just for bodybuilders; it’s an essential component of a healthy lifestyle, especially for women. Here are the top five benefits:\r\n* Increased Muscle Mass: Strength training helps build lean muscle, which boosts metabolism and helps burn more calories, even when you’re at rest.\r\n\r\n* Improved Bone Health: Lifting weights strengthens bones and reduces the risk of osteoporosis.\r\n\r\n* Boosted Confidence: Achieving fitness goals through strength training can significantly boost self-esteem and confidence.\r\n\r\n* Enhanced Flexibility and Mobility: Regular strength workouts improve joint flexibility and overall mobility.\r\n\r\n* Better Mental Health: Strength training releases endorphins, which can help reduce anxiety, stress, and depression.\r\n\r\nIncorporate strength training into your routine and see the physical and mental benefits!\r\n\r\n', 'Blog_6795.jpg', '2024-10-20 12:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `reply_message` text NOT NULL,
  `status` enum('Pending','Replied') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `full_name`, `email`, `mobile`, `message`, `reply_message`, `status`) VALUES
(5, 'Lakshi Sewwandi', 'lakshi89@gmail.com', '0778998888', 'Hi, I would like to know more about the special offers on membership.', 'Hello Lakshi, thank you for reaching out! We are offering a 20% discount on standard membership plans. Please let us know if you’d like to proceed with the registration.', 'Replied'),
(6, 'Dulmi Madhusika', 'dulmi@gmail.com', '0785467874', 'Hi. Can I know about the promotion that display on the web side. how can I get the yoga class offer', 'Hi Dulmi, yes you can call us and know about more details and if you close us come to the fitness center.', 'Replied'),
(7, 'Manoj Prasanka', 'manoj@gmail.com', '0773276789', 'Hi, Do you have any personal trainers.', 'yes, There rea several type of persona trainers in our gym. please check our program section otherwise contact us through out mobile number', 'Replied'),
(11, 'Nimal perera', 'nimal@gmail.com', '0778988989', 'I need to know about the membership packages', '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `tel_no` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `full_name`, `username`, `tel_no`, `email`, `password`) VALUES
(1, 'Haritha Dilshan', 'haritha', '077456782', 'harith@gmail.com', 'aec45b6d38882f44fc96b90c2824880d'),
(2, 'Malki Apsara', 'malki', '0778964289', 'malki@gmail.com', '21df8c649c84b69e9509000194641baf'),
(3, 'Kavee Silva', 'kavee', '0775678998', 'kavee@gmail.com', '835a199b2d229b57cf18aa2aaa17e106'),
(4, 'Nimal perera', 'nimal', '078998867', 'nimal@gmail.com', 'bf7ebeeda2200877ad04dca6b54302cc');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) UNSIGNED NOT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `event_datetime` datetime DEFAULT NULL,
  `gifts` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` enum('Yes','No') DEFAULT 'Yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`id`, `event_name`, `event_datetime`, `gifts`, `description`, `image_name`, `created_at`, `active`) VALUES
(1, ' New Year’s Resolution Challenge', '2024-11-22 09:00:00', 'Free Gym Membership for the Winner', 'Kickstart your New Year’s fitness goals with our 30-day resolution challenge. Participants with the most significant progress win a free 6-month membership!', 'Event_9238.png', '2024-10-20 04:18:35', 'Yes'),
(2, 'Nutrition & Fitness Expo', '2024-11-05 08:00:00', 'Free Meal Plan for Attendees', 'Learn the secrets to combining nutrition and fitness for optimal health. Our nutritionists and trainers will give you the insights you need to transform your fitness journey.', 'Event_9667.jpg', '2024-10-20 04:24:24', 'Yes'),
(3, 'Zumba Party', '2024-11-12 11:00:00', 'Zumba T-Shirts for the First 30 Attendees', 'Dance your way to fitness with our exciting Zumba party! An evening of fun and energy that’s perfect for all levels.', 'Event_7568.jpg', '2024-10-20 04:26:14', 'Yes'),
(5, 'Personal Training Demo Day', '2024-11-06 09:00:00', ' Free Training Session for Attendees', 'Meet our personal trainers and get a free demo of our personal training programs. Book a session and receive a discount!', 'Event_8767.webp', '2024-10-20 04:37:57', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `customer_name`, `email`, `feedback`, `created_at`) VALUES
(1, 'Sewwandi Apsara', 'sewwandi@gmail.com', 'The trainers at this gym are fantastic! I’ve been able to achieve my fitness goals thanks to the personalized training programs. The atmosphere is so motivating and the equipment is top-notch. Highly recommend!', '2024-10-20 09:18:16'),
(2, 'Naveen Nimsara', 'naveen@gmail.com', 'FitZone has changed my life! I joined three months ago and have already lost 15 pounds. The nutrition counseling was especially helpful, and I love the group classes. The staff is always friendly and supportive', '2024-10-20 09:19:01'),
(3, 'James Carter', 'james@gmail.com', 'What an amazing place! FitZone helped me transform not just my body, but also my confidence. The staff are always so welcoming, and the personalized programs make it easy to stay on track. A great place to work out!', '2024-10-20 09:19:52'),
(4, 'Tharu Silva', 'tharu@gmail.com', 'This is by far the best gym I’ve been to. The facilities are always clean, and the trainers are very knowledgeable. The variety of fitness programs ensures there’s something for everyone, no matter your level of experience.', '2024-10-20 09:20:29'),
(5, 'Fawaz Mohomad', 'fawaz@gmail.com', 'I\'ve been a member for over a year now, and I couldn’t be happier. The group classes are fun and challenging, and the instructors really push you to do your best. FitZone offers an amazing community vibe!', '2024-10-20 09:21:15'),
(6, ' Michael Brown', 'michael@gmail.com', 'The best gym experience I’ve ever had! The variety of equipment, the friendly staff, and the personalized attention from the trainers make FitZone stand out. I highly recommend it to anyone looking to take their fitness seriously.', '2024-10-20 09:21:53'),
(7, 'Jessica White', 'jessica@gmail.com', 'FitZone is an excellent place for both beginners and experienced fitness enthusiasts. The trainers are so approachable and the environment is very encouraging. Their events and promotions also make it fun to be a member!', '2024-10-20 09:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `image_name`) VALUES
(3, 'Gallery_Image_2216.jpg'),
(4, 'Gallery_Image_3598.jpg'),
(6, 'Gallery_Image_5309.jpg'),
(7, 'Gallery_Image_1656.jpeg'),
(9, 'Gallery_Image_5390.jpg'),
(10, 'Gallery_Image_5377.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_membershipbookings`
--

CREATE TABLE `tbl_membershipbookings` (
  `id` int(15) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tel_no` varchar(255) NOT NULL,
  `package` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` enum('Pending','Confirmed','Cancelled') DEFAULT 'Pending',
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_membershipbookings`
--

INSERT INTO `tbl_membershipbookings` (`id`, `full_name`, `email`, `tel_no`, `package`, `message`, `status`, `booking_date`) VALUES
(1, 'Kavini Malsha', 'ishugamage420@gmail.com', '0773278999', 'Standard Package', 'please how i addedn the  gym contact me soon', 'Cancelled', '2024-10-18 08:12:19'),
(2, 'haritha sampath', 'harith@gmail.com', '0773278988', 'sasd', 'please contact me soon', 'Confirmed', '2024-10-18 08:35:53'),
(3, 'Nuwan Sanjeewa', 'nuwan@gmail.com', '0773278998', 'Standard Package', 'I can join to the gym next week. please contact me.', 'Confirmed', '2024-10-19 15:50:06'),
(4, 'nimash kumara', 'nimash@gmsil.com', '077546784', 'Basic Membership', 'hi i need to join with this center', 'Confirmed', '2024-10-21 04:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_packages`
--

CREATE TABLE `tbl_packages` (
  `id` int(15) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `price_local` decimal(10,2) NOT NULL,
  `price_foreigner` decimal(10,2) NOT NULL,
  `access` text NOT NULL,
  `features` text NOT NULL,
  `active` enum('Yes','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_packages`
--

INSERT INTO `tbl_packages` (`id`, `title`, `image_name`, `price_local`, `price_foreigner`, `access`, `features`, `active`) VALUES
(1, 'Basic Membership', 'Package_9223.jpg', 3000.00, 15.00, '[\"Gym Floor Access\",\"Cardio Equipment\",\"Locker Room Access\"]', '[\"Group Fitness Classes (limited to 2\\/week)\",\"Access during non-peak hours\",\"Personal Trainer (optional)\"]', 'Yes'),
(2, 'Standard Membership', 'Package_7573.jpeg', 6000.00, 20.00, '[\"Gym Floor Access\",\"Cardio Equipment\",\"Locker Room Access\"]', '[\"Access during all hours\",\"Group Fitness Classes (unlimited)\",\"Personal Trainer (optional)\"]', 'Yes'),
(3, 'Premium Membership', 'Package_1354.webp', 8000.00, 30.00, '[\"Gym Floor Access\",\"Cardio Equipment\",\"Locker Room Access\",\"spa Access\",\"\"]', '[\"Free Nutrition Consultation\",\"Yoga and Pilates Access\",\"Personal Trainer (1 session\\/week)\"]', 'Yes'),
(5, 'VIP Membership', 'Package_5469.jpg', 12000.00, 40.00, '[\"Gym Floor Access\",\"Cardio Equipment\",\"Locker Room Access\",\"VIP Lounge\",\"Spa Access\"]', '[\"Personal Trainer (2 sessions\\/week)\",\"Group Fitness Classes (unlimited)\",\"Massage Therapy\"]', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_programbooking`
--

CREATE TABLE `tbl_programbooking` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel_no` varchar(20) DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `program_id` int(10) UNSIGNED NOT NULL,
  `weight` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` enum('Pending','Confirmed','Cancelled') DEFAULT 'Pending',
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_programbooking`
--

INSERT INTO `tbl_programbooking` (`id`, `customer_id`, `full_name`, `email`, `tel_no`, `category_id`, `program_id`, `weight`, `message`, `status`, `booking_date`) VALUES
(1, 1, 'Lakshi Sewwandi', 'lak@gmail.com', '0773278999', 1, 11, '46kg', 'I need to gain the weight and be healthy', 'Confirmed', '2024-10-19 17:30:17'),
(2, 1, 'Haritha Perera', 'haritha@gmail.com', '0773278985', 2, 8, '58kg', 'I need to build mussel and gain weight. please help me to achieve that. ', 'Confirmed', '2024-10-19 17:35:36'),
(3, 1, 'Dulmi Madhushika', 'dulmi@gmail.com', '0773278985', 1, 12, '43kg', 'I need to join this class. can I know about this class more.', 'Confirmed', '2024-10-19 17:59:04'),
(4, 1, 'Manoj prasanka', 'manoj@gmail.com', '0775689589', 2, 13, '60kg', 'I would like to join with this trainer to achieve my dream body.I think you will contact me soon. ', 'Confirmed', '2024-10-20 08:32:10'),
(5, 1, 'Kasun Kalhara', 'kasun@gmail.com', '0776758989', 4, 15, '60kg', 'I need to lose the weight and make my dream figure', 'Cancelled', '2024-10-21 04:37:57'),
(6, 1, 'Nishu Gamage', 'nishu@gmail.com', '0775678990', 1, 12, '75kg', 'I need to lose my fat .please help me.', 'Cancelled', '2024-10-24 05:00:15'),
(7, 1, 'Niluka Herath', 'niluka@gmail.com', '0776899868', 1, 12, '80', 'I need to lose my fat and after.', 'Cancelled', '2024-10-25 05:21:14'),
(8, 1, 'Himash Perera', 'hima@gmail.com', '07785689889', 1, 12, '80kg', 'I need to lose my fat.please help me.', 'Confirmed', '2024-10-25 06:19:34'),
(9, 1, 'Nimal perera', 'nimal@gmail.com', '0778988688', 1, 12, '85kg', 'I need to weight loss please help me.', 'Pending', '2024-11-04 13:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_programcategories`
--

CREATE TABLE `tbl_programcategories` (
  `id` int(15) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `active` enum('Yes','No') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_programcategories`
--

INSERT INTO `tbl_programcategories` (`id`, `title`, `image_name`, `active`, `created_at`) VALUES
(1, 'Group Classes', 'Category_3579.jpg', 'Yes', '2024-10-18 11:07:46'),
(2, 'Personalized training programs', 'Category_1846.jpg', 'Yes', '2024-10-18 11:13:33'),
(4, 'Nutrition Counselling', 'Program_Category_4003.jpg', 'Yes', '2024-10-18 11:46:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_programs`
--

CREATE TABLE `tbl_programs` (
  `id` int(15) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `trainer_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `price_local` decimal(10,2) NOT NULL,
  `price_foreign` decimal(10,2) NOT NULL,
  `schedule` text NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `features` text NOT NULL,
  `active` varchar(3) DEFAULT 'No',
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_programs`
--

INSERT INTO `tbl_programs` (`id`, `category_id`, `trainer_id`, `title`, `description`, `price_local`, `price_foreign`, `schedule`, `image_name`, `features`, `active`, `created_at`) VALUES
(6, 4, NULL, 'Custom Diet plan', 'asdxcv vwertyuiknbvcdxsasdfghnbvcxzASDERTHJNBVCXAERTHBVC', 2000.00, 10.00, '[\"Monday, Wednesday, and Friday: 9:00 AM - 11:00 AM\",\"Tuesday and Thursday: 3:00 PM - 5:00 PM\",\"Saturday: 1:00 PM - 4:00 PM\"]', 'Program_Image_6011.jpeg', '[\"Personalized diet plan tailored to your specific need\",\"Expert guidance from certified nutritionists\",\"Improve overall health and energy levels\"]', 'Yes', 0),
(8, 2, 9, 'Couple Trainer', 'Join us and experience the expertise of our highly qualified personal trainers, dedicated to helping you achieve your fitness goals. With their guidance and commitment, you\'ll be on your way to a healthier, stronger you. Let us support you in your journey to better health and well-being!', 6000.00, 25.00, '[\"Monday, Wednesday, and Friday: 6:00 PM - 9:00 PM\",\"Tuesday and Thursday: 8:00 AM - 11:00 AM\",\"Saturday: 2:00 PM - 5:00 PM\"]', 'Program_Image_9300.jpg', '[\"Led by certified and experienced instructor\",\"Focus on improving strength, flexibility, and teamwork\",\"Expert guidance on effective exercises for both partners\"]', 'Yes', 0),
(10, 0, NULL, 'Yoga', 'Our yoga class is designed to help you find balance, flexibility, and inner peace. Through guided poses and mindful breathing techniques, you will enhance both physical and mental well-being.', 2500.00, 50.00, '[\"Monday - (6.00pm -8.00pm)\",\"Tuesday-(6.00pm-8.00pm)\",\"\",\"\"]', 'Program_Image_2523.jpeg', '[\"Led by certified and experienced yoga instructors\",\"Suitable for all fitness levels, from beginners to advanced practitioners\",\"Peaceful environment to promote mental clarity\",\"Yoga mats and props provided\",\"\"]', 'Yes', 0),
(11, 1, NULL, 'Cardio Kickboxing', 'Cardio kickboxing is a high-energy group fitness class that combines elements of boxing, martial arts, and cardio exercises to provide an effective full-body workout.', 6000.00, 35.00, '[\"Saturday: (10:00 AM - 12:00 AM)\",\"Monday, Wednesday, and Friday: (6:00 PM - 7:00 PM)\"]', 'Program_Image_2109.jpg', '[\"Led by certified and experienced instructors\",\"Suitable for all fitness levels, from beginners to advanced\",\"Equipment provided, including gloves and pads\",\"\"]', 'Yes', 0),
(12, 1, NULL, 'Zumba', 'Zumba is an energetic dance fitness program that combines Latin and international music with dance moves. This class provides an excellent cardio workout while making sure you have fun moving to the beat.', 8000.00, 30.00, '[\"Monday - (8.00AM -11.00AM)\",\"Saturday: (10:00 AM - 12:00 AM)\"]', 'Program_Image_9443.jpg', '[\"Led by certified and experienced Zumba instructors\",\"High-energy music to keep you motivated\",\"No dance experience required\",\"\"]', 'Yes', 0),
(13, 2, 5, 'Individual Trainer', 'We have certified trainer, and clients receive personalized workout plans, guidance, and support tailored to their unique needs. Whether the goal is weight loss, muscle building, or injury recovery, one-on-one training ensures a structured, motivating, and safe approach to fitness.', 40.00, 130.00, '[\"Monday, Wednesday, and Friday: 7:00 AM - 10:00 AM\",\"Tuesday and Thursday: 5:00 PM - 8:00 PM\",\"Saturday: 9:00 AM - 12:00 PM\"]', 'Program_Image_1241.jpg', '[\"Customized training programs tailored to individual needs\",\"Expert guidance on nutrition and fitness\",\"Motivational and supportive coaching style\",\"Focus on both physical and mental well-being\"]', 'Yes', 0),
(14, 2, 10, 'Muscle Trainer', 'Our Special Needs Trainer has highly specialized and requires additional skills and sensitivity compared to a regular personal trainer.', 12000.00, 50.00, '[\"Monday - (8.00AM -10.00AM)\",\"Saturday: (10:00 AM - 11:00 AM)\",\"Wednesday, and Friday: 6:00 PM - 9:00 PM\"]', 'Program_Image_7155.jpeg', '[\"create customized training programs tailored to suit a client\\u2019s specific disability\",\"often work closely with medical professionals\",\"monitor progress and adjust fitness plans\"]', 'Yes', 0),
(15, 4, NULL, 'Special Needs Counseling', 'Our Special Needs Counseling service is tailored specifically for individuals with unique physical, emotional, or cognitive needs. This program offers customized guidance and support to help clients achieve their fitness and wellness goals in a safe and inclusive environment.', 8000.00, 25.00, '[\"Tuesday and Thursday: 2:00 PM - 4:00 PM\",\"Monday, Wednesday, and Friday: 10:00 AM - 12:00 PM\"]', 'Program_Image_8482.jpeg', '[\"Individualized counseling sessions designed to meet specific needs and abilities\",\"Certified specialists with expertise in working with diverse populations\",\"Holistic approach that integrates physical, emotional, and mental well-being\"]', 'Yes', 0),
(16, 4, NULL, 'Spa Facilities', 'Our Spa Facilities provide a relaxing and rejuvenating environment designed to help you unwind, de-stress, and refresh your mind and body. Whether you\'re looking for a deep tissue massage, a refreshing facial, or a luxurious body treatment, our certified spa therapists offer a variety of services tailored to your needs. ', 8000.00, 40.00, '[\"Monday, Wednesday, and Friday: 10:00 AM - 12:30 PM\",\"Tuesday and Thursday: 2:00 PM - 5:00 PM\"]', 'Program_Image_9167.jpg', '[\"Personalized treatments for relaxation and rejuvenation\",\"Expert services from certified spa therapists\",\"Relieve muscle tension, reduce stress, and improve circulation\"]', 'Yes', 0),
(21, 1, NULL, 'Yoga ', 'Yoga for Flexibility and Stress Relief is a calming yoga class focused on increasing flexibility, reducing stress, and improving mental clarity through a series of gentle postures and deep breathing exercises.', 4000.00, 15.00, '[\"Monday and Wednesday: (5:00 PM - 6:30 PM)\",\"Saturday: (9:00 AM - 10:30 AM)\"]', 'Program_Image_6361.jpeg', '[\"Certified yoga instructors\",\"Yoga mats and props provided\",\"Relaxing atmosphere with soft lighting and calming music\"]', 'Yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_promotions`
--

CREATE TABLE `tbl_promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `program_name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_rate` decimal(5,2) NOT NULL,
  `discounted_price` decimal(10,2) NOT NULL,
  `description` text NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `active` enum('Yes','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_promotions`
--

INSERT INTO `tbl_promotions` (`id`, `title`, `program_name`, `price`, `discount_rate`, `discounted_price`, `description`, `image_name`, `active`) VALUES
(1, 'Special Day(World Health Day)', 'Yoga Program', 2500.00, 30.00, 1750.00, 'Our gym is excited to announce a special promotion in celebration of World Health Day! To encourage everyone to prioritize their health and fitness.', 'Promotion_Image_7111.jpg', 'Yes'),
(2, '4th Anniversary of the our gym', 'Standard Membership package ', 3000.00, 40.00, 1800.00, 'Valid for only one month. please grab your opportunity and share with others. also join with us can make life forward.', 'Promotion_Image_4963.jpg', 'Yes'),
(7, 'Yoga for Beginners - 20% Off', 'Yoga Classes', 2500.00, 20.00, 2000.00, 'Discover the benefits of yoga with our beginner-friendly classes. Perfect for those new to yoga or looking to refresh their practice. Get 15% off for a limited time.', 'Promotion_Image_4265.jpg', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_success_stories`
--

CREATE TABLE `tbl_success_stories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_success_stories`
--

INSERT INTO `tbl_success_stories` (`id`, `title`, `description`, `email`, `image_name`) VALUES
(2, 'Nish\'s Journey to Health and Confidence', 'Nish joined FitZone Fitness Center seeking a way to improve both her physical fitness and mental well-being. After years of feeling overwhelmed by stress and fatigue, Emma decided it was time to take control of her health. Through a combination of yoga classes, strength training, and personal coaching, she not only achieved her fitness goals but also found peace of mind. Emma’s story is a shining example of how regular exercise can positively affect both body and mind. Today, she feels stronger, more confident, and ready to take on whatever life throws her way.', 'nish@gmail.com', 'Success_Story_9051.jpeg'),
(3, 'Mike\'s Muscle Gain and Strength Journey', 'Mike was determined to transform his body after years of inactivity and low muscle mass. When he joined FitZone Fitness Center, he worked closely with our personal trainers to develop a strength training and nutrition plan. After a year of dedication, Mike gained 20 pounds of muscle, improved his overall strength, and saw dramatic improvements in his endurance. His dedication to the process and commitment to proper nutrition helped him surpass his goals. Today, Mike is stronger than ever and continues to push his limits in the gym.', 'mikegainz@example.com', 'Success_Story_5037.jpg'),
(4, ' Hirusha\'s Weight Loss and Energy Boost', 'hirusha,a 40-year-old professional, came to FitZone Fitness Center looking for a way to shed excess weight and increase his energy levels. Through consistent cardio sessions, strength training, and a personalized meal plan, John managed to lose 35 pounds in just 10 months. With the help of our trainers, he found ways to stay motivated, even when progress seemed slow. Now, John not only feels physically lighter but also more energetic and focused in his day-to-day life. His journey serves as a reminder that dedication and support can lead to life-changing results.', 'hirusha@gmail.com', 'Success_Story_6925.webp'),
(5, 'Kasuni\'s Mental and Physical Transformation', 'Kasuni joined FitZone Fitness Center seeking a way to improve both her physical fitness and mental well-being. After years of feeling overwhelmed by stress and fatigue, Emma decided it was time to take control of her health. Through a combination of yoga classes, strength training, and personal coaching, she not only achieved her fitness goals but also found peace of mind. Emma’s story is a shining example of how regular exercise can positively affect both body and mind. Today, she feels stronger, more confident, and ready to take on whatever life throws her way.', 'kasuni@gmail.com', 'Success_Story_6220.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trainer`
--

CREATE TABLE `tbl_trainer` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `qualifications` text NOT NULL,
  `about_trainer` text NOT NULL,
  `active` enum('Yes','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_trainer`
--

INSERT INTO `tbl_trainer` (`id`, `category_id`, `name`, `qualifications`, `about_trainer`, `active`) VALUES
(5, 2, 'Dulanji Hewasiri', 'Certified Personal Trainer (CPT), Nutrition Specialist', 'Dulanji Hewasiri is a dedicated personal trainer who specializes in helping individuals achieve their fitness goals through personalized training programs and nutrition guidance. With 5 years of experience, Dulanji has worked with clients of all fitness levels and has a deep understanding of how to tailor workouts to meet individual needs. Her passion for fitness and positive attitude create a motivating atmosphere for her clients.', 'Yes'),
(6, 0, 'supun sanjeew', 'qulified trainer ', 'jhgfdszxcvgbhjmkmnb', 'Yes'),
(7, 0, 'supun sanjeew', 'qulified trainer ', 'asdfghjkl,mknjhbvgfcdxsz', 'Yes'),
(9, 2, 'Sampath Supun', 'Certified Couple Training Specialist, Strength and Conditioning Coac', 'Certified Couple Training Specialist, Strength and Conditioning Coach.and 7 years of experience in couple training, strength, and conditioning ', 'Yes'),
(10, 2, 'Himsara Prageeth', '8 years of experience training, strength, and conditioning', 'himsara is work closely with medical professionals, such as physical therapists or occupational therapists, to ensure the program is safe and beneficial for the client and conduct thorough assessments to understand the client\'s physical limitations, abilities, and needs.', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_membershipbookings`
--
ALTER TABLE `tbl_membershipbookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_packages`
--
ALTER TABLE `tbl_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_programbooking`
--
ALTER TABLE `tbl_programbooking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `tbl_programcategories`
--
ALTER TABLE `tbl_programcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_programs`
--
ALTER TABLE `tbl_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_promotions`
--
ALTER TABLE `tbl_promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_success_stories`
--
ALTER TABLE `tbl_success_stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_trainer`
--
ALTER TABLE `tbl_trainer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(25) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_membershipbookings`
--
ALTER TABLE `tbl_membershipbookings`
  MODIFY `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_packages`
--
ALTER TABLE `tbl_packages`
  MODIFY `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_programbooking`
--
ALTER TABLE `tbl_programbooking`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_programcategories`
--
ALTER TABLE `tbl_programcategories`
  MODIFY `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_programs`
--
ALTER TABLE `tbl_programs`
  MODIFY `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_promotions`
--
ALTER TABLE `tbl_promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_success_stories`
--
ALTER TABLE `tbl_success_stories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_trainer`
--
ALTER TABLE `tbl_trainer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_programbooking`
--
ALTER TABLE `tbl_programbooking`
  ADD CONSTRAINT `tbl_programbooking_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`),
  ADD CONSTRAINT `tbl_programbooking_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tbl_programcategories` (`id`),
  ADD CONSTRAINT `tbl_programbooking_ibfk_3` FOREIGN KEY (`program_id`) REFERENCES `tbl_programs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
