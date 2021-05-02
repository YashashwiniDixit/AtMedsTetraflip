-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 08, 2020 at 02:20 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Medicines', 'All kinds of medicines.', '2020-10-30 08:59:25', NULL),
(8, 'Medical Equipments', 'Various equipment and devices for medical use are available.', '2020-10-30 09:01:18', NULL),
(9, 'Health Care', 'All other health and well being related products.', '2020-10-30 09:02:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(13, 1, '24', 1, '2020-11-02 10:38:47', 'COD', NULL),
(14, 1, '26', 1, '2020-11-02 10:38:47', 'COD', NULL),
(16, 1, '26', 1, '2020-11-02 14:01:27', NULL, NULL),
(17, 1, '26', 1, '2020-11-02 14:22:44', NULL, NULL),
(18, 1, '28', 1, '2020-11-02 14:22:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(23, 8, 20, 'Accu-Chek', 'Roche ', 1599, 1599, '<div class=\"ui-provider a b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\"><div style=\"\"><div class=\"ui-provider a b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\"><div style=\"font-family: &quot;Segoe UI&quot;, system-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, sans-serif; font-size: 14px;\"><p style=\"margin-bottom: 0px;\"><font color=\"#000000\">Accu-Chek Active Blood Glucometer Kit (Box of 10 Test strips Free) is an easy to use system that comprises of powerful features like accurate blood glucose measurement, pre-and post-meal reminders, visual double check and two-button intuitive handling and is suitable for self-testing.<br></font></p>\r\n</div><br></div></div></div>', 'accu1.jpg', 'accu2.png', 'accu3.jpg', 0, 'In Stock', '2020-10-30 16:50:37', NULL),
(24, 9, 27, 'Dabur Amla Hair Oil', 'Dabur', 180, 180, 'Stronger, Longer, Thicker Hair<div>Comes in handy bottle</div>', 'amla1.jpg', 'amla2.jpg', 'amla3.jpg', 0, 'In Stock', '2020-10-30 16:55:42', NULL),
(25, 8, 24, 'Band-Aid', 'Johnson & Johnson', 197, 200, '<div class=\"ui-provider a b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\"><div style=\"font-family: &quot;Segoe UI&quot;, system-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, sans-serif; font-size: 14px;\"><p style=\"margin-bottom: 0px;\"><font color=\"#000000\">- The Band Aid Flexi is an adhesive bandage made of flexible fabric<br></font></p><p style=\"margin-bottom: 0px;\"><font color=\"#000000\"><br></font></p><div><p style=\"\"><font color=\"#000000\">-&nbsp;The band aid stretches to fit better to provide continuous protection to hard to bandage areas</font></p><p style=\"\"><font color=\"#000000\">-&nbsp;It has hypoallergenic adhesive which is skin friendly and helps leave no sticky residue</font></p><p style=\"\"><font color=\"#000000\">-&nbsp;It is a ready-to-use stretchable material antiseptic bandage with non stick pad</font></p></div>\r\n</div><br></div>', 'bandaid1.jpg', 'bandaid2.jpg', 'bandaid3.jpg', 0, 'In Stock', '2020-10-30 17:01:56', NULL),
(26, 7, 14, 'Beta Cap TR 40', 'Sun Pharmaceutical Industries', 36, 40, '<div>Hypertension (high blood pressure)</div><div>Anxiety</div><div>Arrhythmia</div><div>Prevention of Heart attack</div><div>Prevention of Angina (heart-related chest pain)</div><div>Prevention of Migraine</div>', 'beta1.jpg', 'beta2.jpg', 'beta3.jpg', 10, 'In Stock', '2020-10-30 17:10:11', NULL),
(27, 9, 29, 'Johnson Baby Oil', 'Johnson & Johnson', 259, 299, '<div>Johnson\'s Baby oil for massage is enriched with Vitamin E</div><br>\r\n<div>Johnson\'s baby oil is formulated to spread easily on new born baby skin</div><br>\r\n<div>Dermatologically tested for allergies</div><br>\r\n<div>No Sulfates, No Parabens, No Dyes. Fragrance : Natural Aroma</div><br>', 'boil1.jpg', 'boil2.jpg', 'boil3.jpg', 0, 'In Stock', '2020-10-30 17:14:55', NULL),
(28, 7, 30, 'Crocin', 'GSK', 30, 30, '<div style=\"box-sizing: border-box; font-family: &quot;Segoe UI&quot;, system-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, sans-serif; font-size: 14px;\">CROCIN ADVANCE 500MG is used for the relief of mild to moderate pain and feverish conditions such as headache, toothache, colds, influenza, joint pain and period pains.</div>', 'crocin1.jpg', 'crocin2.jpg', 'crocin3.jpg', 10, 'In Stock', '2020-10-30 17:18:06', NULL),
(29, 9, 18, 'Boroplus', 'Emami', 70, 70, 'Boroplus is a multipurpose cream which can be used for multiple usages like as winter cream, antiseptic cream, night cream, moisturizer, for dry lips and for cracked heels. It is popular for its deep moisturization and dryness relief in tough areas like face, hands, elbows, knees and heels. Boroplus keeps your skin healthy and glowing.<br>', 'boro1.jpg', 'boro2.jpg', 'boro3.jpg', 10, 'In Stock', '2020-10-30 17:21:48', NULL),
(30, 9, 28, 'All-Rounder Toothbrush', 'Colgate', 20, 25, '<div>Soft curved bristles gently clean between the teeth</div><div>Compact head size reaches corners of mouth</div><div>Provides gentle cleaning for sensitive teeth and gums with silky soft bristles</div><div>Colgate is Indiaâ€™s No.1 brand used and recommended by dentists</div><div>Helps minimize pressure on gums and ensures better control while you brush</div>', 'brush1.png', 'brush2.jpg', 'brush3.png', 10, 'In Stock', '2020-10-30 17:24:05', NULL),
(31, 9, 19, 'Bournvita', 'Cadbury', 400, 400, '<div>Cadbury is a delicious chocolate health drink which is enriched with vitamin (d, b2, b9, b12)</div><div>The combination of calcium, vitamins and minerals helps multiply the power of milk</div><div>It is a malted chocolate drink mix that can be enjoyed piping hot or deliciously cold</div><div>Ingredients: Malt Extract (44%), Sugar, Cocoa Solids, Milk Solids, Liquid Glucose, Emulsifiers (322, 471), Raising agent (500(ii)), Vitamins, Minerals, Salt. Contains Permitted natural color (150 c) and Added flavor (Artificial (Vanilla) flavoring Substances)</div>', 'bv1.jpg', 'bv2.png', 'bv3.jpeg', 0, 'In Stock', '2020-10-30 17:26:12', NULL),
(32, 9, 18, 'Candid Dusting Powder', 'Glenmark Pharmaceutical Ltd.', 75, 80, '<div>Helps in prevention or treatment of fungal infections resulting out of sweat and moisture accumulation</div><div>Relieves itching in intimate body parts, underarms, inner thighs, waistline and feet</div><div>Soothes prickly heat on back, neck and shoulder</div><div>Relieves skin irritation caused by redness, rashes, and swelling</div>', 'candid1.jpg', 'candid2.jpg', 'candid3.jpg', 10, 'In Stock', '2020-10-30 17:27:58', NULL),
(33, 9, 29, 'Cerelac', 'Nestle', 190, 200, '<div>The Nestle Cerelac Wheat Apple Cereal is the ideal complementary food item for babies between the age-group of 6 and 12 months. It contains 19 essential vitamins and minerals that your infant needs to grow up to be a strong individual.</div><div><br></div><div>Rich in Iron</div><div><br></div><div>This baby food provides the necessary iron that your baby needs.</div><div><br></div><div>19 Nutrients</div><div><br></div><div>This is a good source of 19 vitamins and minerals.</div><div><br></div><div>Ingredients</div><div><br></div><div>This food item contains the goodness of milk, cereal, and fruits.</div>', 'cerealac1.jpg', 'cerealac2.jpg', 'cerealac3.jpg', 0, 'In Stock', '2020-10-30 17:30:03', NULL),
(34, 9, 28, 'Strong Teeth Toothpaste', 'Colgate', 95, 100, '<div>Colgate Strong Teeth Toothpaste with Amino Shakti</div><div>Colgate-Palmolive Company</div><div>Provides the teeth with needed calcium</div><div>Has a slightly sweet taste which makes it easier to use</div>', 'colgate1.jpg', 'colgate2.jpg', 'colgate3.jpg', 10, 'In Stock', '2020-10-30 17:32:37', NULL),
(35, 8, 24, 'Cotton', 'Senico', 299, 340, 'Usage in commercial, clinical, hospital absorbent cotton wool is mainly used for medical purposes in hospitals, nursing homes, dispensaries. Hence the consumption of absorbent cotton wool increases with the increase in population. This material used 100 % absorbent cotton wool. Best to use for surgical use, first aid, spa, Saloon beauty, make up remover and baby or adult care.<br>', 'cotton1.jpg', 'cotton2.jpg', 'cotton3.jpg', 0, 'In Stock', '2020-10-30 17:34:18', NULL),
(36, 9, 18, 'Dettol Liquid', 'Dettol', 150, 150, '<div>Protection from Germs and Viruses</div><div>This antiseptic liquid protects you from up to germs and viruses that can cause up to 100 illnesses.</div><div>Multipurpose Applications</div><div>This product is effective for home and personal hygiene. This is a great addition to your first-aid kit as it is effective in cleaning cuts and wounds.</div><div>Disinfectant</div><div>This product can be used to disinfect your home and items.</div>', 'dettol1.jpg', 'dettol2.jpg', 'dettol3.jpg', 0, 'In Stock', '2020-10-30 17:36:27', NULL),
(37, 7, 30, 'Digene', 'Abbott', 18, 20, '<div>Helps to neutralize excess stomach acid</div><div>Facilitates relief in bloating, indigestion, acidity</div><div>Used in the treatment of gas and belching in the stomach</div><div>Directions For Use :</div><div>2-4 tablets as required to be chewed, or sucked after meals and at bedtime.</div>', 'digene1.png', 'digene2.jpg', 'digene3.jpg', 10, 'In Stock', '2020-10-30 17:38:04', NULL),
(38, 7, 30, 'ENO', 'GSK', 40, 40, '<div>Provides quick relief in stomach acidity and acid reflux symptoms in just 6 seconds.</div><div>Relieves acidity, heartburn, acid reflux, nausea and gastric discomfort.</div><div>Provides temporary relief in indigestion, flatulence &amp; bloated stomach.</div><div>Does not contain lactose, gluten or preservatives.</div>', 'eno1.jpg', 'eno2.png', 'eno3.jpg', 10, 'In Stock', '2020-10-30 17:40:43', NULL),
(39, 8, 24, 'Jelonet Gauze', 'Smith & Nephew Medical Ltd', 699, 700, 'JELONET is a proprietary dressing for wounds and burns consisting of an open gauze mesh impregnated with a soft paraffin base. JELONET is soothing and low-adherent and allows the wound to drain freely into an absorbent secondary dressing.<br>', 'gauze1.png', 'gauze2.jpg', 'gauze3.jpg', 0, 'In Stock', '2020-10-30 17:43:01', NULL),
(40, 9, 19, 'Glucon-D', 'Glucon-D', 100, 105, '<div>Glucon D fills you with the energy required to stay active</div><div>Kick away tiredness and feel rejuvenated with Glucon-D, the preferred choice in summer when the scorching heat drains out body glucose</div><div>Country of Origin: India</div><div>Contains Calcium for bone health</div><div>It contains Vitamin C which improves the mental alertness that helps you to concentrate better while doing various daily tasks</div><div>Available in Regular as well as Delicious Lime, Orange and Mango flavours</div>', 'glud1.jpg', 'glud2.jpg', 'glud3.jpg', 10, 'In Stock', '2020-10-30 17:45:19', NULL),
(41, 8, 20, 'Non Contact IR Infrared Thermometer 610', 'Dr Trust USA', 999, 1000, '<div>Body Temperature measurement</div><div>Fever Alarm</div><div>Accuracy</div><div>Big Screen display</div><div>Quickness</div><div>Water, Room &amp; Milk temperature measurement</div>', 'gun1.jpg', 'gun2.jpg', 'gun3.jpg', 0, 'In Stock', '2020-10-30 17:47:13', NULL),
(42, 7, 22, 'Honitus', 'Dabur', 90, 100, '<div>Helps to relieve congestion</div><div>Effectively controls cough and throat irritation</div><div>Provides relief from sore throat</div>', 'honitus1.jpg', 'honitus2.jpg', 'honitus3.jpg', 10, 'In Stock', '2020-10-30 17:48:53', NULL),
(43, 9, 18, 'Dettol Original Germ Protection Handwash Liquid Soap Pump', 'Dettol', 80, 100, '<div>Daily Protection: Dettol Sensitive Germ Protection Handwash Liquid Soap provides protection from a range of germs</div><div>Moisturizes: TTC &amp; Triclosan free formula with added Glycerin to moisturize skin</div><div>Healthy Skin: Contains more than 85% naturally derived ingredients and plant derived cleansers</div><div>Softly Fragrant: Dettol Sensitive handwash fragrance to keep your hands fresh all day long</div><div>Dermatologically Tested: Deeply cleanses and protects your skin from 100 illness-causing germs</div>', 'hw1.jpg', 'hw2.jpg', 'hw3.jpg', 0, 'In Stock', '2020-10-30 17:50:36', NULL),
(44, 9, 21, 'Inhaler', 'Vicks', 49, 50, 'Provides quick relief from blocked nose<br>', 'inhaler1.jpg', 'inhaler2.jpg', 'inhaler3.jpg', 10, 'In Stock', '2020-10-30 17:52:35', NULL),
(45, 9, 18, 'Total 10 Immunity Boosting Hand Sanitizer Bottle', 'Lifebuoy', 25, 25, '<div>Lifebuoy Antibacterial Hand Sanitizer has over 60% alcohol content and gives you instant germ protection</div><div>Lifebuoy Antibacterial Hand Sanitizer kills 99.9% bacteria and virus without water</div><div>Lifebuoy Antibacterial Hand Sanitizer has Glycerine, it leaves your skin feeling moisturised</div><div><br></div>', 'lb1.jpg', 'lb2.jpg', 'lb3.jpg', 10, 'In Stock', '2020-10-30 17:54:51', NULL),
(46, 7, 22, 'Madhunashini Vati', 'Patanjali', 200, 210, '<div>Helps in controlling sugar content in body</div><div>Contains 120 tabs</div><div>Has no side effects</div>', 'madhunisini1.jpg', 'madhunisini2.jpg', 'madhunisini3.jpg', 0, 'In Stock', '2020-10-30 18:00:53', NULL),
(47, 8, 24, 'Disposal Surgical Mask', 'Salus', 199, 200, 'Single Ply Non-Woven, Two Ply Non-Woven, Three Ply Non-Woven, PP Non-Woven<br>', 'mask1.jpg', 'mask2.jpg', 'mask3.jpg', 0, 'In Stock', '2020-10-30 18:02:51', NULL),
(48, 9, 25, 'Moov', 'Moov', 249, 250, '<div>A 100 percent ayurvedic preparation for quick pain relief</div><div>Fast and long lasting relief from muscle pain, neck and backache, inflammation, sprain, myositis, fibrositis and sciatica</div><div>Fortified \"four active ingredients\" formula helps in relaxing muscle stiffness and relieving pain effectively</div><div>The special ingredients like turpentine oil, nilgiri oil, wintergreen oil and mint extract swiftly penetrate the targeted area of pain</div>', 'moov1.jpg', 'moov2.png', 'moov3.jpeg', 0, 'In Stock', '2020-10-30 18:04:48', NULL),
(49, 7, 22, 'Divya Mukta Vati', 'Patanjali', 200, 200, '<div>- Acts as heart tonic as it provides relief from heart-related disorders and promotes normal functioning of the heart</div><div>- Cures high blood pressure or heart disease caused by the disorder of the kidneys or cholesterol, anxiety, stress or any other reason which is hereditary etc.&nbsp;</div><div>- Used for the treatment of high blood pressure</div><div>- Builds up the immune system</div>', 'mukta1.jpg', 'mukta2.jpg', 'mukta3.jpg', 0, 'In Stock', '2020-10-30 18:07:13', NULL),
(50, 8, 20, 'Omron HEM 7120 Fully Automatic Digital Blood Pressure Monitor', 'Omron', 1590, 1600, '<div>Fully Automatic.</div><div>Personalized Inflation for Maximum Comfort.</div><div>Quick Deflation Releases Valve for Speedy Measurement.</div>', 'omron1.jpg', 'omron2.jpg', 'omron3.jpg', 0, 'In Stock', '2020-10-30 18:09:10', NULL),
(51, 9, 25, 'ALTOS HERBAL PAINDON OIL', 'Altos', 550, 550, 'Paindon Oil is enriched with Ayurvedic herbs that removes the pain from joints and facilitates its healing. The oil has thin viscosity, which is absorbed by the affected joints and relieves from pain and inflammation. It strengthens nerves and ligaments around joints which facilitates the normal working of the joints. Benefits Gives quick relief from pain and inflammation of joints Reduces stiffness Effective on Arthritis and Muscular Atrophy<br>', 'paindon1.jpg', 'paindon2.jpeg', 'paindon3.jpeg', 0, 'In Stock', '2020-10-30 18:10:52', NULL),
(52, 9, 28, 'Colgate Plax Fresh Mint Splash Alcohol Free Mouth Wash', 'Colgate-Palmolive Company', 49, 50, '<div>Protect your mouth from germs and get fresh breath every morning with Colgate Plax Freshmint Splash Mouthwash. Colgate Plax Freshmint Splash Mouthwash contains a freshening flavor that gives you mouth refreshment and a boost of confidence with every use.</div><div><br></div><div>Make Colgate Plax a part of your daily oral hygiene.</div>', 'plax1.jpg', 'plax2.jpg', 'plax1.jpg', 10, 'In Stock', '2020-10-30 18:13:47', NULL),
(53, 7, 22, 'Dabur Pudin Hara Pearls', 'Dabur India', 49, 50, '<div>- Useful in the treatment of stomach ailments like acidity, gas, indigestion.</div><div>- Also, provide quick relief from stomach ache.</div><div>- The product is 100% safe and natural.</div>', 'pudin1.jpg', 'pudin2.png', 'pudin3.png', 10, 'In Stock', '2020-10-30 18:15:11', NULL),
(54, 8, 24, 'Surgical Scissors', 'PSM', 120, 120, '<div>Material</div><div>Stainless Steel</div><div>Type</div><div>Ring Scissor</div><div>Scissor Type</div><div>Straight Dissecting Scissors</div><div>Blade Type</div><div>Sharp/Sharp Blades</div>', 'scissors1.jpg', 'scissors2.jpg', 'scissors3.jpg', 0, 'In Stock', '2020-10-30 18:16:52', NULL),
(55, 9, 18, 'Stayfree Secure Extra Large Wings', 'Stayfree', 115, 120, 'Stayfree Secure XL Cottony Sanitary napkins with Wings with up to 12 hours of protection<br>', 'sf1.jpg', 'sf2.jpg', 'sf3.jpg', 0, 'In Stock', '2020-10-30 18:21:46', NULL),
(56, 9, 27, 'Sunsilk Stunning Black Shine Shampoo', 'Hindustan Unilever Ltd', 95, 100, 'Give your hair a boost of life with the Sunsilk Stunning Black Shine Shampoo, that is co-created with Jamal Hammadi, a shine expert from Hollywood. The exclusive formula incorporated in this shampoo deeply nourishes your hair, leaving your tresses looking mesmerizingly shiny and beautifully moisturised throughout the day.<br>', 'sun1.jpg', 'sun2.jpg', 'sun3.png', 10, 'In Stock', '2020-10-30 18:26:16', NULL),
(57, 9, 21, 'Vicks Vaporub', 'Vicks', 100, 110, '<div>With its unique and time-trusted formula, Vicks VapoRub gives you relief from cough and cold for 8 hours, so you and your family can sleep and dream happily</div><div>Suitable for adults and children above 2 years old</div><div>Relieves Cough, nasal congestion, body ache, headache, muscle stiffness</div>', 'vaporub1.jpg', 'vaporub2.jpg', 'vaporub3.jpg', 0, 'In Stock', '2020-10-30 18:30:29', NULL),
(58, 9, 21, 'Vicks Cough Drops ', 'Procter & Gamble Hygiene and Health Care Ltd', 185, 200, 'Vicks Cough Drops contain Karpoor, Pudinah Ke Phool, Nilgiri Tel, Ajwain Ke Phool, and Flavoured Sugar as active ingredients. It acts as a cough suppressant and comes in ginger, honey and menthol flavors.<br>', 'vicks1.jpg', 'vicks2.jpg', 'vicks1.jpg', 0, 'In Stock', '2020-10-30 18:32:33', NULL),
(59, 9, 25, 'Volini Maxx Spray ', 'Sun Pharmaceutical Industries Ltd', 120, 120, '<div>Provides effective relief from severe neck and back pain</div><div>Helps in relieving musculoskeletal and joint pain</div><div>Effective in healing pain due to strain and sprain</div>', 'volini1.jpg', 'volini2.png', 'volini3.jpg', 0, 'In Stock', '2020-10-30 18:35:29', NULL),
(60, 7, 14, 'Vomikind -MD 4 Tablet', 'Mankind Pharma Ltd', 30, 35, '<div>Nausea</div><div>Vomiting</div>', 'vomikind1.jpg', 'vomikind2.jpg', 'vomikind3.jpg', 10, 'In Stock', '2020-10-30 18:37:25', NULL),
(61, 7, 14, 'Zita-Met Plus Tablet ER', 'Glenmark Pharmaceutical Ltd.', 200, 200, 'Type 2 diabetes mellitus<br>', 'zita1.jpg', 'zita2.jpg', 'zita3.jpg', 0, 'In Stock', '2020-10-30 18:40:43', NULL),
(62, 9, 18, 'Vwash Plus', 'Glenmark Pharmaceutical Ltd.', 180, 150, 'V Wash Plus is a expert vaginal washing liquid which maintains the pH balance of Women\'s Intimate areas, keeping it healthy.<br>', 'vw1.jpg', 'vw2.jpg', 'vw3.jpg', 0, 'In Stock', '2020-10-31 18:21:46', NULL),
(66, 9, 19, 'ON (Optimum Nutrition) Gold Standard 100% Whey Protein', 'Optimum Nutrition, Inc', 3500, 3700, '<div style=\"box-sizing: border-box; font-family: &quot;Segoe UI&quot;, system-ui, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, sans-serif; font-size: 14px;\"><li>Optimum Nutrition Gold Standard 100% Whey Protein 5 lb is blended with whey protein isolate and ultra-filtered whey protein concentrate, that facilitates lean muscle growth.</li><li>ON Nutrition Gold Standard contains recommended 5.5 grams of naturally occurring BCAAs that speeds-up muscle recovery post strenuous workout sessions</li><li>It regulates and improves the metabolism of your body</li></div>', 'whey1.jpg', 'whey2.jpg', 'whey1.jpg', 0, 'In Stock', '2020-10-31 08:15:13', NULL),
(67, 9, 27, 'Dove Intense Repair Conditioner', 'Dove', 100, 120, '<div>Tired of dull and damaged hair? Fret no more, as the Dove Intense Repair Conditioner is designed to prevent multiple hair-related issues by gently nourishing and strengthening your hair.</div><div><br></div><div>Innovative Fiber Actives</div><div><br></div><div>It deeply penetrates into the hair and strengthens them, reducing damage.</div><div><br></div><div>Micro Moisture Serum</div><div><br></div><div>It locks the natural moisture in your hair, thereby giving you beautiful and lustrous hair.</div><div><br></div><div>Formulated with Keratin Actives</div><div><br></div><div>Beautiful and healthy hair is just a wash away. This conditioner gently repairs the signs of damage by penetrating deep into the hair strands and provides nourished and strong hair.</div>', 'dove1.png', 'dove2.jpg', 'dove3.jpg', 10, 'In Stock', '2020-10-31 08:28:57', NULL),
(68, 9, 29, 'Johnson Baby Powder', 'Johnson & Johnson', 225, 200, '<div>Johnson\'s baby powder absorbs excess moisture and keeps baby\'s skin comfortable and dry.</div><br>\r\n<div>Johnson\'s baby powder is dermatologist tested and hypoallergenic\r\nU.S. Pharmacopoeia grade talc to ensure it meets the highest quality and purity\r\nHighest IFRA fragrance standard</div><br>\r\n<div>No Parabens, No Sulfates, No Dye, Johnson\'s baby powder formula awakens and stimulates your baby\'s senses making your baby feel fresh and play happily with everyone</div><br>\r\n<br>', 'powder1.jpg', 'powder2.jpg', 'powder3.jpg', 0, 'In Stock', '2020-10-30 17:14:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(14, 7, 'Prescribed', '2020-10-30 09:02:46', NULL),
(18, 9, 'Personal Care and Hygiene', '2020-10-30 09:08:25', NULL),
(19, 9, 'Nutrition and Health Care', '2020-10-30 09:08:48', NULL),
(20, 8, 'Healthcare Devices', '2020-10-30 09:11:50', '30-10-2020 02:42:00 PM'),
(21, 9, 'Respiratory Care', '2020-10-30 09:12:48', NULL),
(22, 7, 'Ayurveda', '2020-10-30 09:14:23', NULL),
(24, 8, 'Surgical or other accessories', '2020-10-30 09:16:08', '02-11-2020 07:27:59 PM'),
(25, 9, 'Bone, Joint and Muscle Care', '2020-10-30 09:17:30', '30-10-2020 02:52:02 PM'),
(27, 9, 'Hair Care', '2020-10-30 09:17:53', NULL),
(28, 9, 'Oral Care', '2020-10-30 09:19:38', NULL),
(29, 9, 'Baby Care', '2020-10-30 17:13:42', NULL),
(30, 7, 'Over-the-Counter', '2020-10-30 17:15:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-30 08:17:02', NULL, 1),
(25, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-31 12:41:32', NULL, 1),
(26, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-10-31 13:07:11', '31-10-2020 08:49:06 PM', 1),
(27, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-01 17:28:41', '01-11-2020 11:13:13 PM', 1),
(28, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-02 10:34:27', '02-11-2020 04:12:03 PM', 1),
(29, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-02 13:54:33', NULL, 1),
(30, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-11-02 15:16:26', '02-11-2020 08:48:48 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `pres` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`, `pres`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', '', ' 2 Madhunashini');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 1, 26, '2020-11-02 10:36:45');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
