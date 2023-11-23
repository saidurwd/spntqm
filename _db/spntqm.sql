/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.28-MariaDB : Database - spntqm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`spntqm` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `spntqm`;

/*Table structure for table `app_version` */

DROP TABLE IF EXISTS `app_version`;

CREATE TABLE `app_version` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version_code` int(11) NOT NULL,
  `version_name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `app_version` */

insert  into `app_version`(`id`,`version_code`,`version_name`,`active`,`created_at`,`last_update`) values 
(1,1,'1',1,1484386275760,1485795959275),
(2,2,'2',1,1485795799112,1485795799112);

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `brief` varchar(100) NOT NULL,
  `color` varchar(7) NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`icon`,`draft`,`brief`,`color`,`priority`,`created_at`,`last_update`,`type`) values 
(18,'Meat','1689614119480.png',0,'fish','#5a4db1',3,1686918397042,1689614119480,5),
(19,'Fish','1689744027765.png',0,'Fish','#f5e31d',1,1688812403964,1689748149517,5),
(21,'Milk','1690131243607.png',0,'Milk','#efa20e',5,1690120713044,1690131243607,0),
(23,'Lentil (Dal)','1690125439178.png',0,'Rice and lentil','#7fc810',10,1690125439178,1690130953236,0),
(24,'Minicate Rice','1690127893200.png',0,'Rice','#4db151',10,1690127893200,1696150208734,1),
(25,'Salt & Sugar','1690131285448.png',0,'Salt and sugar','#c80632',5,1690131285448,1690131285448,0),
(27,'Spices','1690131485629.png',0,'spices','#c2e40e',5,1690131485629,1690132052231,0),
(28,'Kitchen Items','1690131747121.png',0,'kitchen items','#e6c505',5,1690131747121,1691502146424,0),
(29,'Oil','1690351732638.png',0,'Oil','#cf2004',5,1690351732638,1690351732638,0),
(30,'Atta & Moida','1690352260517.png',0,'all kinds of flour','#4db151',5,1690352260517,1690714318817,0),
(31,'Others','1690352603029.png',0,'other groceries','#9323e6',10,1690352603029,1690352603029,0),
(33,'Cleaning Items','1690736450157.png',0,'Bathroom Cleaning','#f59b0a',1,1690712318769,1691502091985,0),
(34,'Tea & Coffee','1690713221202.png',0,'Tea & Coffee','#4db151',1,1690713221202,1690713221202,0),
(35,'Nuts & Seeds','1690782599863.png',0,'Nuts & Seeds','#4db151',1,1690782599863,1690782599863,0),
(41,'Kid\'s Items','1691242753401.png',0,'kid','#02b4f0',5,1691236146588,1691587797333,0),
(44,'Noodles','1692771155266.png',0,'noodles','#068a95',5,1692771155266,1692771155266,0),
(46,'Nazairshail Rice','1696525602044.png',0,'Nazairshail Rice','#4db151',1,1696150069749,1696525602044,1),
(47,'Chinigura (Polaw) Rice','1696525584041.png',0,'Chinigura (Polaw) Rice','#4db151',1,1696150233101,1696525584041,1),
(48,'Other Rices','1696525393065.png',0,'Other Rices','#4db151',1,1696152173649,1696525393065,1),
(49,'Vegetables from market','1696525713951.png',0,'From market','#4db151',1,1696241159883,1696525713951,2),
(50,'SPN Items','1696328901367.png',0,'SPN','#4db151',1,1696328901367,1696328901367,3),
(51,'Plastic items','1696525860749.png',0,'Plastic Furniture','#4db151',1,1696410581333,1696525860749,4),
(52,'Washing items','1697009308997.png',0,'washing items','#e62919',5,1697009308997,1697009308997,0),
(53,'Weekly order','1700040880358.png',0,'WO','#4db151',1,1700040880358,1700040880358,0);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `code` varchar(50) NOT NULL,
  `grouping` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `config` */

insert  into `config`(`code`,`grouping`,`value`) values 
('EMAIL_ORDER','EMAIL','{\"bcc_receiver\":[\"your-admin1@mail.com\",\"your-admin2@mail.com\"],\"notif_order\":true,\"notif_order_process\":true,\"reply_to\":\"markeet@mail.com\"}'),
('EMAIL_SMTP','EMAIL','{\"email\":\"hamidul.haque@duncanbd.com\",\"password\":\"YourPassword\",\"host\":\"mail.your-domain.com\",\"port\":\"111\"}'),
('EMAIL_TEXT','EMAIL','{\"subject_email_new_order\":\"Market New Order\",\"title_report_new_order\":\"Market New Order\",\"subject_email_order_processed\":\"Order PROCESSED\",\"title_report_order_processed\":\"Order Status Change to PROCESSED\",\"subject_email_order_updated\":\"Order Data Updated\",\"title_report_order_updated\":\"Order Data Updated\"}'),
('GENERAL','GENERAL','{\"currency\":\"BDT\",\"tax\":0,\"featured_news\":5}'),
('NOTIF_KEY','NOTIF','{\"fcm_key\":\"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\",\"one_signal_appid\":\"XXXXXXXXXXXXXXXXXXXXXXX\",\"one_signal_rest_key\":\"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX\"}'),
('NOTIF_TITLE','NOTIF','{\"new_product\":\"New Product\",\"update_product\":\"Update Product\"}'),
('PAYMENT_BANK','PAYMENT','{\"active\":true,\"instruction\":\"<div><b>INSTRUCTION :&nbsp;</b></div><ol><li>Pay an amount of <b>[@amount]</b> to one of our bank numbers, the difference in the amount will cause the order become fail or delay payment confirmation..</li><li>Write the order code <b>[@code]</b> on the pay reference.</li><li>Confirmation by send your&nbsp;<span style=\\\"\\\\&quot;color:\\\" rgb(77,=\\\"\\\" 81,=\\\"\\\" 86);=\\\"\\\" font-family:=\\\"\\\" arial,=\\\"\\\" sans-serif;\\\\\\\"=\\\"\\\">Payment Slip</span>&nbsp;to WhatsApp number&nbsp;<b>123456789</b>&nbsp;or email <b>sample@gmail.com</b></li><li>Your order will be processed and ship immediately.</li></ol><b>BANK ACCOUNT :</b><br><ul><li>BANK XXX : <b>1234567-23671-2367</b> name aExpress Admin</li><li>BANK YYY :&nbsp;<b><b>1234567</b>-23671-2367</b> name aExpress&nbsp;Admin</li></ul>\"}'),
('PAYMENT_PAYPAL','PAYMENT','{\"active\":true,\"client_id\":\"YourPaypalClientId\",\"secret\":\"YourPaypalSecretId\",\"mode\":\"SANDBOX\"}'),
('PAYMENT_RAZORPAY','PAYMENT','{\"active\":true,\"key_id\":\"rzp_test_wc24Nhpfn6vVML\",\"key_secret\":\"hBWwa5UrVIu2UeQgemaOg3Dv\"}');

/*Table structure for table `currency` */

DROP TABLE IF EXISTS `currency`;

CREATE TABLE `currency` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `paypal` tinyint(1) NOT NULL,
  `razorpay` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `currency` */

insert  into `currency`(`id`,`code`,`name`,`paypal`,`razorpay`) values 
(1,'AFA','Afghanistan afghani',0,0),
(2,'ALL','Albanian lek',0,1),
(3,'DZD','Algerian dinar',0,1),
(4,'AOR','Angolan kwanza reajustado',0,0),
(5,'ARS','Argentine peso',0,1),
(6,'AMD','Armenian dram',0,1),
(7,'AWG','Aruban guilder',0,1),
(8,'AUD','Australian dollar',1,1),
(9,'AZN','Azerbaijanian new manat',0,0),
(10,'BSD','Bahamian dollar',0,1),
(11,'BHD','Bahraini dinar',0,0),
(12,'BDT','Bangladeshi taka',0,1),
(13,'BBD','Barbados dollar',0,1),
(14,'BYN','Belarusian ruble',0,0),
(15,'BZD','Belize dollar',0,1),
(16,'BMD','Bermudian dollar',0,1),
(17,'BTN','Bhutan ngultrum',0,0),
(18,'BOB','Bolivian boliviano',0,1),
(19,'BWP','Botswana pula',0,1),
(20,'BRL','Brazilian real',1,0),
(21,'GBP','British pound',1,1),
(22,'BND','Brunei dollar',0,1),
(23,'BGN','Bulgarian lev',0,0),
(24,'BIF','Burundi franc',0,0),
(25,'KHR','Cambodian riel',0,1),
(26,'CAD','Canadian dollar',1,1),
(27,'CVE','Cape Verde escudo',0,0),
(28,'KYD','Cayman Islands dollar',0,1),
(29,'XOF','CFA franc BCEAO',0,0),
(30,'XAF','CFA franc BEAC',0,0),
(31,'XPF','CFP franc',0,0),
(32,'CLP','Chilean peso',0,0),
(33,'CNY','Chinese yuan renminbi',1,1),
(34,'COP','Colombian peso',0,1),
(35,'KMF','Comoros franc',0,0),
(36,'CDF','Congolese franc',0,0),
(37,'CRC','Costa Rican colon',0,1),
(38,'HRK','Croatian kuna',0,1),
(39,'CUP','Cuban peso',0,1),
(40,'CZK','Czech koruna',1,1),
(41,'DKK','Danish krone',1,1),
(42,'DJF','Djibouti franc',0,0),
(43,'DOP','Dominican peso',0,1),
(44,'XCD','East Caribbean dollar',0,0),
(45,'EGP','Egyptian pound',0,1),
(46,'SVC','El Salvador colon',0,1),
(47,'ERN','Eritrean nakfa',0,0),
(48,'EEK','Estonian kroon',0,0),
(49,'ETB','Ethiopian birr',0,1),
(50,'EUR','EU euro',1,1),
(51,'FKP','Falkland Islands pound',0,0),
(52,'FJD','Fiji dollar',0,1),
(53,'GMD','Gambian dalasi',0,1),
(54,'GEL','Georgian lari',0,0),
(55,'GHS','Ghanaian new cedi',0,0),
(56,'GIP','Gibraltar pound',0,1),
(57,'XAU','Gold (ounce)',0,0),
(58,'XFO','Gold franc',0,0),
(59,'GTQ','Guatemalan quetzal',0,1),
(60,'GNF','Guinean franc',0,0),
(61,'GYD','Guyana dollar',0,1),
(62,'HTG','Haitian gourde',0,1),
(63,'HNL','Honduran lempira',0,1),
(64,'HKD','Hong Kong SAR dollar',1,1),
(65,'HUF','Hungarian forint',1,1),
(66,'ISK','Icelandic krona',0,0),
(67,'XDR','IMF special drawing right',0,0),
(68,'INR','Indian rupee',1,1),
(69,'IDR','Indonesian rupiah',0,1),
(70,'IRR','Iranian rial',0,0),
(71,'IQD','Iraqi dinar',0,0),
(72,'ILS','Israeli new shekel',1,1),
(73,'JMD','Jamaican dollar',0,1),
(74,'JPY','Japanese yen',1,0),
(75,'JOD','Jordanian dinar',0,0),
(76,'KZT','Kazakh tenge',0,1),
(77,'KES','Kenyan shilling',0,1),
(78,'KWD','Kuwaiti dinar',0,0),
(79,'KGS','Kyrgyz som',0,1),
(80,'LAK','Lao kip',0,1),
(81,'LVL','Latvian lats',0,0),
(82,'LBP','Lebanese pound',0,1),
(83,'LSL','Lesotho loti',0,1),
(84,'LRD','Liberian dollar',0,1),
(85,'LYD','Libyan dinar',0,0),
(86,'LTL','Lithuanian litas',0,0),
(87,'MOP','Macao SAR pataca',0,1),
(88,'MKD','Macedonian denar',0,1),
(89,'MGA','Malagasy ariary',0,0),
(90,'MWK','Malawi kwacha',0,1),
(91,'MYR','Malaysian ringgit',1,1),
(92,'MVR','Maldivian rufiyaa',0,1),
(93,'MRO','Mauritanian ouguiya',0,0),
(94,'MUR','Mauritius rupee',0,1),
(95,'MXN','Mexican peso',1,1),
(96,'MDL','Moldovan leu',0,1),
(97,'MNT','Mongolian tugrik',0,1),
(98,'MAD','Moroccan dirham',0,1),
(99,'MZN','Mozambique new metical',0,0),
(100,'MMK','Myanmar kyat',0,1),
(101,'NAD','Namibian dollar',0,0),
(102,'NPR','Nepalese rupee',0,1),
(103,'ANG','Netherlands Antillian guilder',0,0),
(104,'NZD','New Zealand dollar',1,1),
(105,'NIO','Nicaraguan cordoba oro',0,1),
(106,'NGN','Nigerian naira',0,0),
(107,'KPW','North Korean won',0,0),
(108,'NOK','Norwegian krone',1,1),
(109,'OMR','Omani rial',0,0),
(110,'PKR','Pakistani rupee',0,1),
(111,'XPD','Palladium (ounce)',0,0),
(112,'PAB','Panamanian balboa',0,0),
(113,'PGK','Papua New Guinea kina',0,1),
(114,'PYG','Paraguayan guarani',0,0),
(115,'PEN','Peruvian nuevo sol',0,1),
(116,'PHP','Philippine peso',1,1),
(117,'XPT','Platinum (ounce)',0,0),
(118,'PLN','Polish zloty',1,0),
(119,'QAR','Qatari rial',0,1),
(120,'RON','Romanian new leu',0,0),
(121,'RUB','Russian ruble',1,1),
(122,'RWF','Rwandan franc',0,0),
(123,'SHP','Saint Helena pound',0,0),
(124,'WST','Samoan tala',0,0),
(125,'STD','Sao Tome and Principe dobra',0,0),
(126,'SAR','Saudi riyal',0,1),
(127,'RSD','Serbian dinar',0,0),
(128,'SCR','Seychelles rupee',0,1),
(129,'SLL','Sierra Leone leone',0,1),
(130,'XAG','Silver (ounce)',0,0),
(131,'SGD','Singapore dollar',1,1),
(132,'SBD','Solomon Islands dollar',0,0),
(133,'SOS','Somali shilling',0,1),
(134,'ZAR','South African rand',0,1),
(135,'KRW','South Korean won',0,0),
(136,'LKR','Sri Lanka rupee',0,1),
(137,'SDG','Sudanese pound',0,0),
(138,'SRD','Suriname dollar',0,0),
(139,'SZL','Swaziland lilangeni',0,1),
(140,'SEK','Swedish krona',1,1),
(141,'CHF','Swiss franc',1,1),
(142,'SYP','Syrian pound',0,0),
(143,'TWD','Taiwan New dollar',1,0),
(144,'TJS','Tajik somoni',0,0),
(145,'TZS','Tanzanian shilling',0,1),
(146,'THB','Thai baht',1,1),
(147,'TOP','Tongan paanga',0,0),
(148,'TTD','Trinidad and Tobago dollar',0,1),
(149,'TND','Tunisian dinar',0,0),
(150,'TRY','Turkish lira',0,0),
(151,'TMT','Turkmen new manat',0,0),
(152,'AED','UAE dirham',0,0),
(153,'UGX','Uganda new shilling',0,0),
(154,'XFU','UIC franc',0,0),
(155,'UAH','Ukrainian hryvnia',0,0),
(156,'UYU','Uruguayan peso uruguayo',0,1),
(157,'USD','US dollar',1,1),
(158,'UZS','Uzbekistani sum',0,1),
(159,'VUV','Vanuatu vatu',0,0),
(160,'VEF','Venezuelan bolivar fuerte',0,0),
(161,'VND','Vietnamese dong',0,0),
(162,'YER','Yemeni rial',0,1),
(163,'ZMK','Zambian kwacha',0,0),
(164,'ZWL','Zimbabwe dollar',0,0);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `refphone` text NOT NULL,
  `email` text NOT NULL,
  `Address` varchar(300) NOT NULL,
  `JoiningDate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `customer` */

insert  into `customer`(`id`,`name`,`phone`,`password`,`refphone`,`email`,`Address`,`JoiningDate`) values 
(7,'Hamidul Haque','01978448822','1234','01714030237','limon@yahoo.com','','2023-07-25 09:28:20'),
(24,' Safin Ahmed Tamim','01970282233','t@MIMBuddytheMUSICIAN007','','','house-73, Block -B, pallabi, mirpur-1216','2023-07-25 09:28:20'),
(26,'wasi','01605360020','Wasispn','01943302939','','Mirpur-12,Block-B,House-208,','2023-07-25 09:28:20'),
(29,'Aoyon','01670910888','x2x2x2','+8801670910888','','Mirpur 11','2023-07-25 09:28:20'),
(30,'rishad','01878770833','rishad1255','01878770833','','royal city.diabari.mirpur-1','2023-07-25 09:28:20'),
(33,'Iqbal Khan','01911708950','1202','01714030237','','Flat -A 4, House-4, Road-9, Block- C, Section-6, Mirpur.','2023-07-25 09:28:20'),
(35,'sayem','01742412469','01742412469','','','22 KAZI nazrul Islam avenue,Dhaka -1000','2023-07-25 09:28:20'),
(36,'MD HUMAYUN Kabir','01715102662','1234','01714030237','','Duncan Brothers ','2023-07-25 09:28:20'),
(38,'Mohammed Walid','01611284410','doordie7125','','','house-208,block-b,mirpur-12,Dhaka ','2023-07-25 09:28:20'),
(40,'Tariqul Mowla','01711542079','1234','01714030237','','101/ Shanti Nagar','2023-07-25 09:28:20'),
(41,'Rashid Muhammad Mamunur','01748212020','1227','01719385948','','House# 505_507, Block# Dha,,Palllabi, Mirpur','2023-07-25 09:28:20'),
(42,'SHORIF','01886580652','tuhin123','01714030237','','section 12, House 17, Block -C, Pallabi, Dhaka 1216.','2023-07-25 09:28:20'),
(43,'Farhadul Alam','01919414017','Farhad1981','01814969175','','Duncan Brother ','2023-07-25 09:28:20'),
(44,'Muhammad Shamiullah','01712086648','samim133','01675000455','','Duncan','2023-07-25 09:28:20'),
(45,'Sanjay Paul','01711003386','Spn@86','01711003386','','Duncan Brothers, Dhaka ','2023-07-25 09:28:20'),
(46,'Ripon','01628320894','samsung668@@','01714030237','','Flat # A8, H # 121, R # 7, Block-B, Pallabi, Dhaka-1216','2023-07-25 09:28:20'),
(52,'MiR Shahadat jhantu','01833333382','1111','01714030237','','section-12 block-e line no- 03 house no-79 mirpur 12 palloby ','2023-07-25 11:11:28'),
(55,'Forid','01718666454','1234','','','Ongon','2023-07-25 11:15:33'),
(58,'Md.Faisal Bhuiyan ','01720025521','F321','1720025521','','Mirpur, Dhaka','2023-07-26 09:48:10'),
(59,'Mostaque Ahmed','01720500600','098765','01720503403','','Duncan Brothers','2023-07-29 23:29:49'),
(60,'shorif','1623321208','123','+8801623321208','','12/C, 19/17, Mirpur, Dhaka 1216','2023-07-30 00:18:04'),
(62,'Md. Tareq Hosen Mozumder','01715615066','Thm1993','+8801715615066','','Duncan Brothers Bangladesh Limited ','2023-07-30 23:57:34'),
(68,'shahriar','01779009895','2041','','','duncan','2023-08-01 01:19:02'),
(69,'Mahmudul Haq Tushar','01811003481','Tushar133','+8801811003481','','40, S A Khaleque R/A, Darussalam,  Kallayanpur, Dhaka-1216','2023-08-02 21:00:50'),
(70,' Fardin Hasan','01703013234','fardin0079','+8801703013234','','mirpur 2 Pani tanki block g house 7/9 ','2023-08-05 00:20:01'),
(71,'Sanjida ','01743751844','1234','01714030237','','Home ','2023-08-05 07:42:48'),
(72,'shamim','1815489724','Ashfi822','1815489724','','mirpur12','2023-08-05 22:52:40'),
(73,'Abul Kalam Azad','01719276100','1234','01714030237','','Green Heaven, Nambaritech, Uttar Manikdi','2023-08-06 02:23:46'),
(74,'Shimul Parveen','01881653117','1234','01714030237','','Pallabi','2023-08-11 01:43:14'),
(75,'aysha ahmed ','01739254753','l@mi@123','','','house no 512, samim sarani, west Shewrapara, mirpur','2023-08-15 02:52:51'),
(76,'Limon','01714030237','1234','','','pallabi','2023-08-15 18:23:00'),
(78,'Khondker Enayetul Kabir','01713044881','1234','','','House no.18, Road no. 17, Block- D, Section-12, Mirpur, Palllabi, Dhaka-1216','2023-08-16 02:51:28'),
(80,'Faria Siddika Moumita ','1794669858','123456789','1794669858','','1/A,free school street,sheltech,khan plaza,kathalbagan dhal.5th floor.\n','2023-08-16 11:41:51'),
(82,'Faria Siddika Moumita ','01794669858','123456789','','','1/A,free school street,sheltech,khan plaza,kathalbagan dhal.5th floor.','2023-08-16 11:44:18'),
(83,'Imtiaz Syed','1715788320','anik','+8801715788320','','Duncan Brothers','2023-08-17 01:54:05'),
(84,'Shova','01730996227','QW123456','','','Duncan','2023-08-17 03:21:17'),
(85,'Abdur Rahim','+8801755563408','Gungun@2015','','','flat 7A, House 113, Road 7, Back  B, Pallabi, Mirpur 12, Dhaka','2023-08-17 22:21:40'),
(86,'panna','01789096283','19722','','','house no73.line no4/2.block b. mirpur 12','2023-08-18 23:59:10'),
(87,'roksana parvin','01789096283','roksana','','','house-73, road-4/2, block-B','2023-08-19 08:36:11'),
(88,'mamun','01916601907','12345','01714030237','','flat 5, H-121,Road 7, Block B, Mirpur 12','2023-08-19 11:33:45'),
(90,'bula','01711436025','bula24bula','','','duncan','2023-08-20 04:41:34'),
(91,'Nahyan Ibn Yousuf','01716541094','987654','','','H.N-193/194, Block- Dha,Section-12, Pallabi, Mirpur-12','2023-08-20 11:20:23'),
(93,'Fahmida akter','01914630777','71800','','','Mirpur-12,Dhaka','2023-08-20 13:41:18'),
(94,'Afsar ','01402503040','1234','01714030237','','12/Dha, House- 348, Kalshi Road,Mirpur','2023-09-04 11:13:40'),
(95,'Ismat Parveen Nahid ','01607319306','nahid','','','Road-07, House-3, Rupnagar Abashik, Mirpur 2','2023-09-10 07:53:22'),
(96,'Sara Sheikh','01923684300','sara888','01880312206','','house-2, lane-2, road-8, block-A','2023-09-14 08:52:57'),
(97,'Kamrul Arob Sohag','01718288014','sohag2707','01718288014','','12/D-4/18 pallabi, Mirpur ','2023-09-16 09:15:32'),
(98,'Layla Arzo','01717763231','1234','01714030237','','house 14, road 11, lane 10, block C, Mirpur 11','2023-09-16 09:21:54'),
(99,'Imtiaz','01735028889','1234','01714030237','','1st floor, House 8, Road 29, Rupnagar R/A, Mirpur..','2023-09-16 09:42:28'),
(102,' Farid  Hossain ','01712750456','1234','01715654552','','12/D Av; -2, house -13, mirpur dhakas','2023-09-16 11:51:49'),
(103,'MD Ripon ','01794810103','557788','','','Daulatpur, Belkuchi, Sirajganj','2023-09-17 11:18:09'),
(104,'BKM REHAN','01726907331','shamsirehan','01819484767','','House no 190, Road no 02, Avenue-03,  DOHS Mirpur,  Dhaka - 1216.','2023-10-10 09:51:02'),
(105,'Shakib Alam','01817699996','19890808','01817699996','','Na','2023-10-11 00:31:42'),
(106,'Saharin Lisa ','1743783520','123456','+8801743783520','','\nH#5/7\nR#8 \nRupnagar, Pallabi\nMirpur, Dhaka\nR/A\n','2023-10-11 05:33:55'),
(107,'Saharin Lisa ','1743783520','123456','+8801743783520','','\nH#5/7\nR#8 \nRupnagar, Pallabi\nMirpur, Dhaka\nR/A\n','2023-10-11 05:42:49'),
(108,'tamanna sultana','01952079077','123456789','','','Mirpur 1','2023-10-12 05:56:23'),
(109,'porosh','01911272700','s1234567','','','house:1, Road:4, block:B','2023-10-14 10:22:11'),
(110,'Rumana','01732227172','rafianarvid','01970282233','','house-119, road- 07, block-B, Mirpur-12, Dhaka','2023-10-15 10:43:44'),
(111,'Rumana','01732227172','rafianarvid','01970282233','','house-119, road- 07, block-B, Mirpur-12, Dhaka','2023-10-15 10:43:47'),
(112,'Rumana','01732227172','rafianarvid','01970282233','','house-119, road- 07, block-B, Mirpur-12, Dhaka','2023-10-15 10:43:47'),
(113,'আমিনুর রহমান','1641194321','kaab1324','1641194321','','আলোব্দি, মিরপুর ক্যান্টনমেন্ট, মিরপুর ১২, পল্লবী, ঢাকা।','2023-10-16 22:56:34'),
(114,'আমিনুর রহমান','1641194321','kaab1324','1641194321','','আলোব্দি, মিরপুর ক্যান্টনমেন্ট, মিরপুর ১২, পল্লবী, ঢাকা।','2023-10-16 22:56:57'),
(115,'Shobuj','01736690707','1821','','','House- 21, Road-18,Block-D, Pallabi','2023-10-18 09:46:55');

/*Table structure for table `fcm` */

DROP TABLE IF EXISTS `fcm`;

CREATE TABLE `fcm` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device` varchar(100) NOT NULL,
  `os_version` varchar(100) NOT NULL,
  `app_version` varchar(10) NOT NULL,
  `serial` varchar(100) NOT NULL,
  `regid` text NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `fcm` */

insert  into `fcm`(`id`,`device`,`os_version`,`app_version`,`serial`,`regid`,`created_at`,`last_update`) values 
(4,'Device Name','6.0.1','1.0','GGC00C0888E426A','APA91bEj7qmlVePXUpG4UjKOtyqG5x9hpeZ4tMhPDsJgDRWL76psPGtckLK3uMtmpLFj3RSFfgaVoBMCKhg5iR8RnPZPjeuml8Llgkc',0,0),
(7,'sadasd','1','1','sad','sadasd',1645142830603,1645142830603);

/*Table structure for table `news_info` */

DROP TABLE IF EXISTS `news_info`;

CREATE TABLE `news_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `brief_content` varchar(200) NOT NULL,
  `full_content` text NOT NULL,
  `image` varchar(110) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `news_info` */

insert  into `news_info`(`id`,`title`,`brief_content`,`full_content`,`image`,`draft`,`status`,`created_at`,`last_update`) values 
(1,'Available Best Interior Stuff, Browse and Discover Now for Your Room.','Quisque efficitur diam sit amet quam porttitor, at dictum arcu viverra. Vivamus dapibus ante nunc, non malesuada enim gravida in.','<div>Aliquam sed lorem quis urna eleifend aliquam ac ut urna. Sed tempus nisl tellus, vel tempor velit rutrum ac. Ut facilisis eget augue quis pulvinar. Nam a felis eu tortor convallis dapibus efficitur vel turpis. Etiam hendrerit pulvinar leo ac venenatis. Donec non felis et massa semper convallis nec id augue. Proin sit amet mollis nisl. Sed vestibulum auctor imperdiet. Nam ut enim non lacus blandit rhoncus non at turpis. Donec vel arcu malesuada, vulputate dui a, varius leo. Proin volutpat libero ultricies est auctor, eget facilisis ligula accumsan. Sed quis sapien hendrerit, luctus augue nec, aliquam urna. Mauris vestibulum convallis malesuada. Sed et ex cursus, fringilla tellus ac, maximus ipsum.</div><div><br></div><div>Sed viverra arcu in neque pulvinar dignissim. Nunc euismod aliquam magna, non efficitur lectus vehicula quis. Suspendisse vitae consequat arcu, eget malesuada dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec quis imperdiet libero. Donec imperdiet quis lectus vitae dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam pulvinar pretium ipsum, et faucibus libero aliquet et. Quisque efficitur diam sit amet quam porttitor, at dictum arcu viverra. Vivamus dapibus ante nunc, non malesuada enim gravida in. Cras bibendum eros vitae lacus efficitur, vel pretium est rutrum.</div><div><br></div><div>Praesent id efficitur risus. Nullam dui ligula, eleifend in convallis at, porta vitae massa. Curabitur sapien lorem, congue non enim non, rutrum gravida ipsum. Duis dignissim sapien in sem finibus ultrices id nec justo. Nulla hendrerit sed eros ac rhoncus. Nullam varius tellus id venenatis cursus. Cras commodo metus mauris, eget posuere sapien blandit non. Aenean fermentum ligula a libero suscipit dictum. Nulla dictum odio ut vulputate aliquam. Suspendisse potenti. Cras pellentesque vel felis sed dignissim. Proin aliquet orci tincidunt dui convallis, facilisis accumsan urna semper.</div>','Available Best Interior Stuff Browse and Discover Now for Your Room.jpg',0,'FEATURED',1482250793274,1651891784293),
(2,'We Join Smartphone Fair  in Washington, D.C. April 7-8, 2017. Visit and Purchase our Product.','Aenean eu libero eget lorem tincidunt eleifend. Integer in diam felis. Proin sit amet mollis nisl.','<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque urna ut metus sagittis, vel congue lorem iaculis. Sed hendrerit mauris id tempor faucibus. In facilisis nibh vulputate ante porttitor, et venenatis arcu placerat. Vestibulum tempor nisi enim, eget consectetur ex accumsan fermentum. Mauris ipsum lacus, imperdiet eget purus vel, convallis euismod augue. In sed fringilla sem. Aenean ultricies ullamcorper euismod.</div><div><br></div><div>Cras non nunc est. Nunc quis dapibus lorem. Proin dignissim interdum interdum. In vitae aliquet odio. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non venenatis nunc, id molestie velit. Vestibulum sagittis dui at nibh lacinia faucibus. Curabitur auctor sem diam. Aenean eu libero eget lorem tincidunt eleifend. Integer in diam felis.</div><div><br></div><div>Aliquam sed lorem quis urna eleifend aliquam ac ut urna. Sed tempus nisl tellus, vel tempor velit rutrum ac. Ut facilisis eget augue quis pulvinar. Nam a felis eu tortor convallis dapibus efficitur vel turpis. Etiam hendrerit pulvinar leo ac venenatis. Donec non felis et massa semper convallis nec id augue. Proin sit amet mollis nisl. Sed vestibulum auctor imperdiet. Nam ut enim non lacus blandit rhoncus non at turpis. Donec vel arcu malesuada, vulputate dui a, varius leo. Proin volutpat libero ultricies est auctor, eget facilisis ligula accumsan. Sed quis sapien hendrerit, luctus augue nec, aliquam urna. Mauris vestibulum convallis malesuada. Sed et ex cursus, fringilla tellus ac, maximus ipsum.</div>','We Join Smartphone Fair  in Washington DC April 78 2017 Visit and Purchase our Product.jpg',0,'FEATURED',1485793148268,1651891897694),
(10,'Unique Women\'s Accessories Trend that Will Popular Current Season','Cras in dapibus ligula. Vestibulum elementum ante at sapien consectetur porta.','<div>Cras in dapibus ligula. Vestibulum elementum ante at sapien consectetur porta. Nulla laoreet mauris a orci posuere eleifend. Duis dictum nisl scelerisque lectus tincidunt, id tristique lorem eleifend. Curabitur nibh risus, commodo in consequat eget, consectetur vel tellus. Suspendisse dignissim, lorem ut luctus congue, mi justo lobortis ex, non suscipit est est id urna. Ut eget tortor accumsan, consectetur justo sit amet, tincidunt enim.</div><div><br></div><div>Proin efficitur justo eget tempus vulputate. Nunc viverra felis tortor, a porttitor tortor vehicula dictum. Nam quis sapien nec tellus ultricies dictum. Praesent vulputate dolor sed nisl consectetur, vel varius dui suscipit. Maecenas vulputate ligula a sem sollicitudin viverra. In a libero viverra, eleifend nisi vitae, vehicula arcu. Donec sagittis sem sit amet nulla aliquam, a convallis risus ultricies. Praesent tristique magna odio, a dictum felis hendrerit quis.</div>','Unique Womens Accessories Trend that Will Popular Current Season.jpg',0,'FEATURED',1485992959638,1651891961524),
(12,'Banner1','Test','Test','1687677409678.jpg',0,'NORMAL',1687677409678,1687677409678);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(110) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `price_discount` double NOT NULL DEFAULT 0,
  `stock` int(10) NOT NULL,
  `draft` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  `entrydate` datetime NOT NULL DEFAULT current_timestamp(),
  `Type` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_unique_name` (`name`),
  FULLTEXT KEY `product_fulltext` (`name`,`description`)
) ENGINE=InnoDB AUTO_INCREMENT=369 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`image`,`price`,`price_discount`,`stock`,`draft`,`description`,`status`,`created_at`,`last_update`,`entrydate`,`Type`) values 
(140,'Leaf N Bud Premium Tea 200gm','1691506410520.png',90.00,100,100,0,'<h1 style=\"text-align: justify;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><b>Leaf N Bud Premium Tea 200gm</b></font></h1><div><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 90 tk</b></font></div><div><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\"><b>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</b></font></div>','READY STOCK',1650597798314,1696329981468,'2023-07-26 04:27:38',5),
(142,'Broiler Chicken(with skin)','1697649663713.png',300.00,310,100,0,'<h2>Broiler Chicken(with skin)- 1kg</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 300 tk<div>Delivery&nbsp; &nbsp; &nbsp;- within 24 hours</div></div><div><br></div><div><br></div>প্রতিদিন সকালে মুরগি জবাই করে ড্রেসিং করা হয়<div><span style=\"font-family: inherit;\">( মুরগির ওজন অনুযায়ী মোট মূল্য পরিবর্তন হতে পারে )</span></div>','READY STOCK',1686918638942,1697649663713,'2023-07-26 04:27:38',4),
(143,'Teer Flour(Atta)- 2kg','1688735720766.jpg',105.00,120,100,0,'<h2>Teer Flour(Atta)- 2kg</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 105 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1688735720766,1694530417275,'2023-07-26 04:27:38',0),
(144,'Teer Soyabean Oil- 5 liter','1688811199162.jpg',860.00,873,100,0,'<h2><span class=\"ui-provider fz b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\">Teer Soyabean Oil- 5 liter</span></h2><div><span class=\"ui-provider fz b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\">Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 860 tk</span></div><div><span class=\"ui-provider fz b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\">Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</span></div>','READY STOCK',1688811199162,1691602297098,'2023-07-26 04:27:38',0),
(145,'Dano Milk Powder- 500 gm','1688811420400.jpg',350.00,380,100,0,'<h2>Dano Milk Powder- 500 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 350 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1688811420400,1694530625610,'2023-07-26 04:27:38',0),
(146,'Dano Milk Powder- 1kg','1688811685020.jpg',700.00,720,100,0,'<h2>Dano Milk Powder- 1kg</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 700 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1688811685020,1697270846980,'2023-07-26 04:27:38',0),
(147,'SPN Turmeric(Holud) Powder','1688812010229.png',100.00,150,100,0,'<h2><span class=\"ui-provider fz b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\">SPN Turmeric(Holud) Powder- 250 gm</span></h2><div><span class=\"ui-provider fz b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\">Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 100 tk</span></div><div><span class=\"ui-provider fz b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\">Delivery&nbsp; &nbsp; &nbsp; - 24 hours</span></div><div><span class=\"ui-provider fz b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\"><br></span></div><div><span class=\"ui-provider fz b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\"><br></span></div><div><span class=\"ui-provider fz b c d e f g h i j k l m n o p q r s t u v w x y z ab ac ae af ag ah ai aj ak\" dir=\"ltr\">&nbsp; &nbsp; &nbsp;</span></div>','READY STOCK',1688812010229,1697280467093,'2023-07-26 04:27:38',5),
(148,'Aair Fish 2-4 kg','1697649584979.png',650.00,699,100,0,'<h2>Aair Fish 2-4 kg</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 650 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1688812607220,1697649584979,'2023-07-26 04:27:38',4),
(150,'Fresh Refined Sugar- 1 kg','1689398118321.png',130.00,135,100,0,'<h2 style=\"text-align: start;\"><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Fresh Refined Sugar- 1 kg</span></font></h2><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Price                   - 130 tk</span></font></div><div><font color=\"#374151\" face=\"Söhne, ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Ubuntu, Cantarell, Noto Sans, sans-serif, Helvetica Neue, Arial, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji\"><span style=\"font-size: 16px; white-space-collapse: preserve; background-color: rgb(247, 247, 248);\">Delivery              - 24 hours</span></font></div><div style=\"text-align: justify;\"><br></div><div style=\"text-align: justify;\"><br></div>','READY STOCK',1689398118321,1697272085401,'2023-07-26 04:27:38',0),
(151,'Teer White Flour- 2kg','1689399753566.png',140.00,150,100,0,'<h2>Teer White Flour (Maida)- 2kg</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 140 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp; 24 hours</div>','READY STOCK',1689399753566,1697303498652,'2023-07-26 04:27:38',0),
(157,'Rupchada Soyabean Oil- 5 liter','1694093209254.png',820.00,850,100,0,'<h2>Rupchada Soyabean Oil- 5 liter</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 820 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1689407445493,1697278390981,'2023-07-26 04:27:38',0),
(158,'Teer Soyabean Oil- 2 liter','1689407762558.png',350.00,358,100,0,'<h2>Teer Soyabean Oil- 2 liter</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 350 tk</div><div>Delivery&nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1689407762558,1691602375309,'2023-07-26 04:27:38',0),
(182,'Vim  Dishwashing Liquid pouch - 250 ml','1689696590189.png',68.00,70,100,0,'<div>Price&nbsp; &nbsp; &nbsp; &nbsp; - 68 tk</div>Weight&nbsp; &nbsp; &nbsp;- 250 ml<div>Delivery&nbsp; &nbsp;- 24 hours</div>','READY STOCK',1689696590189,1691155706951,'2023-07-26 04:27:38',0),
(183,'Vim Dishwashing Liquid - 1liter','1689696831247.png',250.00,260,100,0,'<h2>Vim Dishwashing Liquid - 1liter</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; - 250 tk</div><div><span style=\"font-family: inherit;\">Delivery&nbsp; &nbsp;- 24 hours</span></div><div><br></div>','READY STOCK',1689696831247,1691318929500,'2023-07-26 04:27:38',0),
(184,'Vim Dishwashing Bar - 125 gm','1689697097492.png',14.00,15,100,0,'<h2>Vim Dishwashing Bar - 125 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 14 tk</div><div><span style=\"font-family: inherit;\">Delivery&nbsp; &nbsp; &nbsp; &nbsp; - 24 hours&nbsp;</span></div><div><div><br></div></div>','READY STOCK',1689697097492,1691318893538,'2023-07-26 04:27:38',0),
(185,'Dettol cool soap bar - 125 gm','1689697403735.png',75.00,80,100,0,'<h2>Dettol cool soap bar - 125 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; - 75 tk</div><div>Delivery&nbsp; &nbsp;- 24 hours</div>','READY STOCK',1689697403735,1697271081914,'2023-07-26 04:27:38',0),
(186,'Dettol bathing soap - 125 gm','1689697544348.png',75.00,80,100,0,'<h2>Dettol bathing soap - 125 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 75 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1689697544348,1697271050234,'2023-07-26 04:27:38',0),
(187,'Rin Detergent Powder - 500gm','1689697664466.png',90.00,95,100,0,'<h2>Rin Detergent Powder - 500gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 90 tk</div><div><span style=\"font-family: inherit;\">Delivery&nbsp; &nbsp; &nbsp; - 24 hours</span></div>','READY STOCK',1689697664466,1697009689373,'2023-07-26 04:27:38',0),
(188,'Surf Excel Fabric Solution - 1 kg','1689697964542.png',280.00,290,100,0,'<h2>Surf Excel Fabric Solution - 1 kg</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 280 tk</div><div><span style=\"font-family: inherit;\">Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours&nbsp;</span><br></div>','READY STOCK',1689697964542,1697009653502,'2023-07-26 04:27:38',0),
(189,'Wheel washing powder - 1kg','1689701876214.png',135.00,145,100,0,'<h2>Wheel washing powder - 1kg</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 135 tk</div><div><span style=\"font-family: inherit;\">Delivery&nbsp; &nbsp; &nbsp;- 24 hours</span></div>','READY STOCK',1689701876214,1697009737777,'2023-07-26 04:27:38',0),
(191,'Diploma Milk Powder- 500gm','1690120987698.png',410.00,425,100,0,'<h2>Diploma Milk Powder- 500gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 410 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690120987698,1691318475157,'2023-07-26 04:27:38',0),
(192,'Diploma Milk Powder- 1kg','1690121167456.png',800.00,840,100,0,'<h2>Diploma Milk Powder- 1kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 800 TK<div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690121167456,1691677785474,'2023-07-26 04:27:38',0),
(194,'Marks Milk Powder- 500 gm','1690121427222.png',400.00,425,100,0,'<h2>Marks Milk Powder- 500 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 400 TK<div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690121427222,1697309230908,'2023-07-26 04:27:38',0),
(195,'Marks Milk Powder- 1kg','1690121650650.png',800.00,840,100,0,'<h2>Marks Milk Powder - 1kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 800TK<div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690121650650,1697309068020,'2023-07-26 04:27:38',0),
(196,'AMA Milk Powder 500gm','1690122213961.png',390.00,415,100,0,'<h2>AMA Milk Powder 500gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 390 TK<div>Delivery&nbsp; &nbsp; &nbsp; - within 24 hours</div>','READY STOCK',1690122213961,1691677744803,'2023-07-26 04:27:38',0),
(197,'AMA Milk Powder 1kg','1690122353617.png',730.00,750,100,0,'<h2>AMA Milk Powder 1kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 730 TK<div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690122353617,1691677641200,'2023-07-26 04:27:38',0),
(198,'Lifebuoy Soap - 125 gm','1690123080672.png',68.00,70,100,0,'<h2>Lifebuoy Soap - 125 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 68 TK<div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690123080672,1697010011836,'2023-07-26 04:27:38',0),
(199,'Lux Soap(Velvet Glow)  - 150 gm','1690123291961.png',68.00,70,100,0,'<h2>Lux Soap(Velvet Glow)&nbsp; - 150 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 68TK<div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690123291961,1697010236218,'2023-07-26 04:27:38',0),
(200,'Lifebuoy Soap - 100 gm','1690123398742.png',48.00,50,100,0,'<h2>Lifebuoy Soap - 100 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp; 48 TK<div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690123398742,1697009991534,'2023-07-26 04:27:38',0),
(201,'Sandalina Soap - 125 gm','1690123621236.png',60.00,70,100,0,'<h2>Sandalina Soap - 125 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 60 TK<div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690123621236,1697010266633,'2023-07-26 04:27:38',0),
(205,'Rin Detergent Powder - 1kg','1690125136279.png',180.00,185,100,0,'<h2>Rin Detergent Powder - 1kg</h2><div><span style=\"font-family: inherit;\">Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 180 TK</span></div><div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','OUT OF STOCK',1690125136279,1697009672819,'2023-07-26 04:27:38',0),
(206,'Moshur Dal (imported) - 1kg','1690125977627.png',110.00,130,100,0,'<h2>Moshur Dal (imported) - 1kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 110 TK<div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690125977627,1691680241003,'2023-07-26 04:27:38',0),
(207,'Anchor Boot Dal - 500gm','1690126050684.png',40.00,45,100,0,'<h2>Anchor Boot Dal - 500gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 45 TK<div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690126050684,1697268737448,'2023-07-26 04:27:38',0),
(208,'Khesari Dal - 500 gm','1690126160044.png',40.00,45,100,0,'<h2>Khesari Dal - 500 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 40 TK<div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690126160044,1697275882493,'2023-07-26 04:27:38',0),
(209,'Mug Dal - 500 gm','1690126312419.png',65.00,70,100,0,'<h2>Mug Dal - 500 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 65 TK<div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690126312419,1691680477756,'2023-07-26 04:27:38',0),
(210,'Dabli Dal - 500 gm','1690126376233.png',60.00,75,100,0,'<h2>Dabli Dal - 500 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; - 60 tk<div><div>Delivery&nbsp; &nbsp;- 24 hours</div></div>','READY STOCK',1690126376233,1697270573186,'2023-07-26 04:27:38',0),
(211,'Cholar Dal - 500 gm','1690126923572.png',75.00,80,100,0,'<h2>Cholar Dal - 500 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 75 tk<div>Delivery&nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690126923572,1691680777151,'2023-07-26 04:27:38',0),
(212,'Akij Deshi Bashmoti Rice','1690354023075.png',1800.00,0,100,0,'<h2>Akij Deshi Basmoti - 25 kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 1800 tk<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- within 24 hours</div>','READY STOCK',1690127333485,1696152505347,'2023-07-26 04:27:38',2),
(213,'Akij Katari Najir Rice','1690128185548.png',1850.00,0,100,0,'<h2>Akij Katari Najir - 25 kg</h2><div><span style=\"font-family: inherit;\">Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 1850 tk</span><br></div><div>Delivery&nbsp; &nbsp; &nbsp;- within 24 hours</div>','READY STOCK',1690128185548,1698405393449,'2023-07-26 04:27:38',2),
(214,'Deshi Palki Rice','1690350032990.png',1700.00,0,100,0,'<h2>Deshi Palki - 25 kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 1700 tk<div>Delivery&nbsp; &nbsp; &nbsp;- within 24 hours</div>','READY STOCK',1690128361689,1696152425910,'2023-07-26 04:27:38',2),
(215,'PK Palki Rice','1690350141475.png',1850.00,0,100,0,'<h2>PK Palki - 25 kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 1850 tk<div>Delivery&nbsp; &nbsp; &nbsp;- within 24 hours</div>','READY STOCK',1690128625814,1696152722660,'2023-07-26 04:27:38',2),
(216,'Mojammel Minicate rice','1690350243080.png',1650.00,0,100,0,'<h2>Mojammel Minicate - 25 kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 1650 tk<div>Delivery&nbsp; &nbsp; &nbsp;- within 24 hours</div>','READY STOCK',1690128783023,1692774337748,'2023-07-26 04:27:38',2),
(217,'Roshid Minicate Rice','1690128913401.png',1570.00,0,100,0,'<h2>Roshid Minicate - 25 kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 1570 tk<div>Delivery&nbsp; &nbsp; &nbsp;- within 24 hours</div>','READY STOCK',1690128913401,1696151962301,'2023-07-26 04:27:38',2),
(218,'Golden Special Bashmoti Rice','1690350580563.png',1870.00,0,100,0,'<h2>Golden Special Bashmoti - 25 kg</h2><div><span style=\"font-family: inherit;\">Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 1870 tk</span><br></div><div><span style=\"font-family: inherit;\">Delivery&nbsp; &nbsp; &nbsp;- within 24 hours</span></div>','READY STOCK',1690129021278,1696152330294,'2023-07-26 04:27:38',2),
(219,'Teer Katari Najir Rice','1690129455541.png',1870.00,0,100,0,'<h2>Teer Katari Najir - 25 kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 1870 tk<div>Delivery&nbsp; &nbsp; &nbsp;- within 24 hours</div>','READY STOCK',1690129455541,1696151863600,'2023-07-26 04:27:38',2),
(220,'Saki Super Atash Rice','1690350326083.png',1350.00,0,100,0,'<h2>Saki Super Atash - 25 kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 1350 tk<div>Delivery&nbsp; &nbsp; &nbsp;- within 24 hours</div>','READY STOCK',1690129879844,1696152663136,'2023-07-26 04:27:38',2),
(222,'Broiler Chicken(without skin) - 1kg','1690130198885.png',330.00,340,100,0,'<h2>Broiler Chicken(without skin) - 1kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 330 tk<div>Delivery&nbsp; &nbsp; &nbsp;- within 24 hours</div>','READY STOCK',1690130198885,1697270137355,'2023-07-26 04:27:38',4),
(223,'Jamal Atash - 25 kg','1690349624980.png',1200.00,0,100,0,'<h2>Jamal Atash - 25 kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 1200 Taka<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;-&nbsp; 24 hours</div>','READY STOCK',1690349624980,1696152590476,'2023-07-26 04:27:38',0),
(225,'Teer Sugar 1 kg','1698834440363.png',138.00,140,100,0,'<h2>Teer Sugar 1 kg</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 138 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690385849236,1698834440363,'2023-07-26 10:40:29',0),
(226,'Rupchada Soyabean Oil - 2 liter','1690386113771.jpg',320.00,348,100,0,'<h2>Rupchada Soyabean Oil - 2 liter</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 320 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690386113771,1697278578438,'2023-07-26 10:44:52',0),
(227,'Surf Excel  fabric solutions - 500 gm','1690456286896.png',145.00,150,100,0,'<h2>Surf Excel&nbsp; fabric solutions - 500 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 145<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690456286896,1697009636338,'2023-07-27 06:18:17',0),
(228,'Vim  Dishwashing Liquid pouch - 500 ml','1690456773914.png',135.00,140,100,0,'<h2>Vim&nbsp; Dishwashing Liquid pouch - 500 ml</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 135 tk<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690456773914,1691317109944,'2023-07-27 06:25:48',0),
(229,'Vim Dishwashing Bar - 300 gm','1690457236628.png',38.00,40,100,0,'<h2>Vim Dishwashing Bar - 300 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 38 tk<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690457236628,1691317070251,'2023-07-27 06:32:15',0),
(230,'Lifebuoy Health Soap Total - 150 gm','1690543639584.png',58.00,60,100,0,'<h2>Lifebuoy Health Soap Total - 150 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 58 tk<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690543639584,1697009968458,'2023-07-28 06:38:01',0),
(231,'Lifebuoy Health Soap Care - 150 gm','1690544105779.png',58.00,60,100,0,'<h2>Lifebuoy Health Soap Care - 150 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 58 tk<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690544105779,1697009934573,'2023-07-28 06:40:18',0),
(233,'Lux Soap (Soft Glow) - 125 gm','1690735581362.png',58.00,60,100,0,'<h2>Lux Soap (Soft Glow) - 125 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 58 tk<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690544370107,1697010210400,'2023-07-28 06:43:50',0),
(234,'Lifebuoy Liquid Handwash Care - 200 ml','1690544753257.png',100.00,105,100,0,'<h2>Lifebuoy Liquid Handwash Care - 200 ml</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 100 tk<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690544753257,1697009909361,'2023-07-28 06:50:27',0),
(235,'Lifebuoy Liquid Handwash Total - 200 ml','1690544852428.png',100.00,105,100,0,'<h2>Lifebuoy Liquid Handwash Total - 200 ml</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 100 tk<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690544852428,1697009889297,'2023-07-28 06:51:56',0),
(236,'Lifebuoy Liquid Handwash Total - 5 litre','1690544958189.png',1250.00,1350,100,0,'<h2>Lifebuoy Liquid Handwash Total - 5 litre</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 1250 tk<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690544958189,1697009865469,'2023-07-28 06:54:55',0),
(237,'Lifebuoy Liquid (Lemon Fresh) - 200 ml','1690545340593.png',100.00,105,100,0,'<h2>Lifebuoy Liquid (Lemon Fresh) - 200 ml</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 100 tk<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690545340593,1697009844139,'2023-07-28 07:00:01',0),
(238,'Lifebuoy Liquid Handwash Total - 187 ml','1690548502177.png',65.00,70,100,0,'<h2>Lifebuoy Liquid Handwash Total - 187 ml</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 65 tk<div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690548502177,1697276176285,'2023-07-28 07:53:36',0),
(239,'Lifebuoy Liquid Handwash Care - 187 ml','1690548642292.png',65.00,70,100,0,'<h2>Lifebuoy Liquid Handwash Care - 187 ml</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 65 tk<div><span style=\"font-family: inherit;\">Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</span><br></div>','READY STOCK',1690548642292,1697276148016,'2023-07-28 07:55:09',0),
(240,'Moshur Dal (Deshi) - 1kg','1690551092087.png',145.00,159,100,0,'<h2>Moshur Dal (Deshi) - 1kg</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 145 tk<div>Delivery&nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690551092087,1691680172477,'2023-07-28 08:36:19',0),
(241,'Lux Soap (Soft Glow) - 150 gm','1690735349256.png',68.00,70,100,0,'<h2>Lux Soap (Soft Glow) - 150 gm</h2>Price&nbsp; &nbsp; &nbsp; &nbsp; - 68 tk<div>Delivery&nbsp; &nbsp;- 24 hours</div><div><br></div>','READY STOCK',1690552818430,1697010192720,'2023-07-28 09:07:01',0),
(242,'Lux Soap (Soft Glow) - 75 gm','1690735521680.png',43.00,45,100,0,'<h2>Lux Soap (Soft Glow) - 75 gm</h2><div><span style=\"font-family: inherit;\">Price&nbsp; &nbsp; &nbsp; &nbsp; - 43 tk</span><br></div><div>Delivery&nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690553190159,1697010174797,'2023-07-28 09:12:36',0),
(243,'Dove bar (pink) - 90 gm','1690553452139.png',140.00,145,100,0,'<h2>Dove bar (pink) - 90 gm</h2><div><span style=\"font-family: inherit;\">Price&nbsp; &nbsp; &nbsp; &nbsp; - 140 tk</span><br></div><div>Delivery&nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690553452139,1697010144707,'2023-07-28 09:17:49',0),
(244,'Dove bar (pink) - 135 gm','1690553694569.png',190.00,210,100,0,'<h2>Dove bar (pink) - 135 gm</h2><div><span style=\"font-family: inherit;\">Price&nbsp; &nbsp; &nbsp; &nbsp; - 190 tk</span><br></div><div>Delivery&nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690553694569,1697271903892,'2023-07-28 09:19:17',0),
(245,'Dove bar  - 100 gm','1690553826516.png',145.00,160,100,0,'<h2>Dove bar&nbsp; - 100 gm</h2><div><span style=\"font-family: inherit;\">Price&nbsp; &nbsp; &nbsp; &nbsp; - 145 tk</span><br></div><div>Delivery&nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690553826516,1697010100196,'2023-07-28 09:21:55',0),
(247,'Harpic Total - 400 gm','1690736770769.png',80.00,85,100,0,'<h2>Harpic Total - 400 gm</h2><div><span style=\"font-family: inherit;\">Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 80 tk</span><br></div><div>Delivery&nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1690712688662,1697272806989,'2023-07-30 05:26:18',0),
(248,'Ispahani Mirzapore Tea 200 gm','1698834842972.png',110.00,0,100,0,'<h1 itemprop=\"name\" data-reactid=\".2epqsxq7ubc.b.2.0.0.0.0.2.5.1.0:$2258_Grocery.0.6.0.1.0.1.0.0\" style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 30px 10px 0px; padding: 0px; font-size: 2.2em; font-weight: 400; overflow-wrap: break-word; color: rgb(0, 0, 0); line-height: 30px; font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Ispahani Mirzapore Tea 200 gm</h1><div><br></div><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 110 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690713344915,1698834842972,'2023-07-30 05:37:17',0),
(249,'Brooke Bond Taaza Black Tea 200 gm','1698834715955.png',100.00,100,100,0,'<h2 style=\"box-sizing: border-box; -webkit-tap-highlight-color: transparent; margin: 0px 30px 10px 0px; padding: 0px; font-size: 2.2em; font-weight: 400; overflow-wrap: break-word; color: rgb(0, 0, 0); line-height: 30px; font-family: &quot;segoe ui&quot;, Helvetica, &quot;droid sans&quot;, Arial, &quot;lucida grande&quot;, tahoma, verdana, arial, sans-serif;\">Brooke Bond Taaza Black Tea 200 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 115 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1690713895802,1698834715955,'2023-07-30 05:45:23',0),
(250,'Ahmed Baking Powder - 150 gm','1691154772879.png',58.00,60,100,0,'<h2>Ahmed Baking Powder- 150 gm</h2><div><span style=\"font-family: inherit;\">Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 58 tk</span><br></div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691154772879,1691316322480,'2023-08-04 08:19:13',0),
(251,'Wheel washing powder - 500gm','1691155966353.png',70.00,75,100,0,'<h2>Wheel washing powder- 500gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 75 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691155966353,1697009613659,'2023-08-04 08:37:32',0),
(252,'Pepsodent - 200 gm','1691233831804.png',155.00,160,100,0,'<h2><b>Pepsodent Toothpaste - 200 gm</b></h2><div><b>Price&nbsp; &nbsp; &nbsp; - 155 tk</b></div><div><b>Delivery - 24 hours</b></div>','READY STOCK',1691233831804,1691233831804,'2023-08-05 06:18:53',0),
(253,'Colgate Active Salt','1691234174869.png',200.00,220,100,0,'<h2>Colgate Active Salt - 200gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; - 200 tk</div><div>Delivery&nbsp; &nbsp;- 24 hours</div><div><br></div>','READY STOCK',1691234174869,1697270420752,'2023-08-05 06:31:46',0),
(254,'Closeup Menthol Fresh','1691234942305.png',145.00,150,100,0,'<h2>Closeup Menthol Fresh - 160 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 145 tk</div><div>Delivery&nbsp; &nbsp; &nbsp;- 150 tk</div>','READY STOCK',1691234942305,1691234942305,'2023-08-05 06:37:25',0),
(255,'Colgate Maxfresh 150 gm','1691235287219.png',180.00,190,100,0,'<h2>Colgate Maxfresh - 150 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 180 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691235287219,1691235287219,'2023-08-05 06:41:47',0),
(256,'Colgate Maxfresh (Blue)','1691235523953.png',180.00,190,100,0,'<h2>Colgate Maxfresh (Blue) - 150 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 180 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691235523953,1691235523953,'2023-08-05 06:44:48',0),
(257,'Mediplus DS - 140 gm','1691235738778.png',130.00,135,100,0,'<h2>Mediplus DS - 140 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 130 tk</div><div>Delivery&nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691235738778,1691235738778,'2023-08-05 06:48:07',0),
(258,'Mediplus Gel - 100 gm','1691235966105.png',95.00,100,100,0,'<h2>Mediplus Gel - 100 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 95 tk</div><div>Delivery&nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691235966105,1691235966105,'2023-08-05 06:51:54',0),
(259,'Kodomo Baby Powder','1691236313547.png',350.00,360,100,0,'<h2>Kodomo Baby Powder - 200 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; - 350 tk</div><div>Delivery&nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691236313547,1691236313547,'2023-08-05 07:00:16',0),
(260,'Kodomo  Baby Bath','1691236638107.png',230.00,240,100,0,'<h2>Kodomo Baby Bath - 200 ml</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 230 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691236638107,1691236638107,'2023-08-05 07:05:06',0),
(261,'Meril Baby Toothpaste','1691236922456.png',85.00,90,100,0,'<h2>Meril Baby Toothpaste - 45 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 85 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691236922456,1691236922456,'2023-08-05 07:08:46',0),
(271,'Molla Salt-1 kg','1691319774177.png',38.00,42,100,0,'<h2>Molla Salt - 1 kg</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 38 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691319774177,1691319774177,'2023-08-06 06:07:13',0),
(275,'Lizol- 500 ml','1691503317091.png',140.00,160,100,0,'<h2>Lizol- 500 ml</h2><div>Pice&nbsp; &nbsp; &nbsp; &nbsp; - 140 tk</div><div>Delivery&nbsp; -&nbsp; 24 hours</div>','READY STOCK',1691503317091,1697276300759,'2023-08-08 09:07:53',0),
(276,'Lizol- 1000 ml','1691504037994.png',260.00,275,100,0,'<h2 style=\"text-align: justify; \">Lizol- 1000 ml</h2><div style=\"text-align: justify; \">Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 260 tk</div><div style=\"text-align: justify; \">Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691504037994,1697276271183,'2023-08-08 09:19:09',0),
(277,'Keya Laundry Soap','1691679538495.png',30.00,0,100,0,'<h2>Keya Laundry Soap</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 30 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691504164777,1697009578370,'2023-08-08 09:23:50',0),
(278,'Harpic- 750 ml','1691504571670.png',140.00,160,100,0,'<h2>Harpic- 750 ml</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 140 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','OUT OF STOCK',1691504571670,1697272864008,'2023-08-08 09:29:18',0),
(279,'Nido - 500gm','1691506595912.png',350.00,360,100,0,'<h2>Nido - 500gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 350 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691506595912,1691677276630,'2023-08-08 10:00:48',0),
(280,'Nido - 1kg','1691506888927.png',1350.00,1400,100,0,'<h2>Nido - 1kg</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 1350 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691506888927,1691677184942,'2023-08-08 10:08:22',0),
(281,'ACI Salt - 1kg','1691507119300.png',38.00,42,100,0,'<h2><b>ACI Salt - 1kg</b></h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; - 38 tk</div><div>Delivery&nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691507119300,1691507119300,'2023-08-08 10:13:59',0),
(282,'SPN Cia Seed- 250gm','1691507499306.png',180.00,300,100,0,'<h2>&nbsp;SPN Cia Seed Jar - 250 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 180 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div><div><br></div>','READY STOCK',1691507499306,1691589782080,'2023-08-08 10:20:51',0),
(283,'Isubgul Vushi- 100 gm','1691508135871.png',150.00,250,100,0,'<h2>Isubgul Vushi- 100 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 250 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691507879559,1691589611763,'2023-08-08 10:23:38',0),
(290,'Nescafe Original- 210gm','1691519055712.png',860.00,875,100,0,'<h2>Nescafe Original Jar- 210gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 860</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691519055712,1691675530837,'2023-08-08 13:29:07',0),
(291,'Nescafe Classic- 100gm','1691519176629.png',350.00,395,100,0,'<h2>Nescafe Classic Jar- 100gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 350 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691519176629,1697277493054,'2023-08-08 13:34:15',0),
(292,'Nescafe Classic- 300gm','1691519483010.png',485.00,495,100,0,'<h2>Nescafe Classic Jar- 300gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 485 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691519483010,1691675577652,'2023-08-08 13:35:55',0),
(293,'Nescafe Classic- 200gm','1691519626190.png',550.00,560,100,0,'<h2>Nescafe Classic Jar- 200gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 560 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691519626190,1691675207098,'2023-08-08 13:38:17',0),
(294,'Nescafe Original- 200gm','1691519818928.png',735.00,750,100,0,'<h2>Nescafe Original Jar- 200gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 735 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691519818928,1691676646042,'2023-08-08 13:41:49',0),
(295,'Nescafe Classic Pack','1691676230738.png',415.00,425,100,0,'<h2>Nescafe Classic Pack- 200gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 415 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691520448976,1691676608041,'2023-08-08 13:52:35',0),
(296,'Almond -100gm','1691587855835.png',90.00,100,100,0,'<h2>Almond (Kath Badam) -100gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 90 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691587855835,1691587855835,'2023-08-09 08:40:59',0),
(297,'Cashew Nut- 100gm','1691588325037.png',150.00,175,100,0,'<h2>Cashew Nut ( A grade )- 100gm</h2><div>&nbsp;(Whole)</div><div><br></div><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 150 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691588325037,1691588325037,'2023-08-09 08:48:26',0),
(300,'Raisins (Kishmish)','1691589160694.png',50.00,60,100,0,'<h2>Raisins (Kishmish)- 100gm</h2><div>(Without seed inside)</div><div><br></div><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 50 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691589160694,1691589160694,'2023-08-09 08:59:44',0),
(302,'Quaker Oats- 900 gm','1691590131756.png',480.00,600,100,0,'<h2>Quaker Oats Jar- 900 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 480 tk</div><div>Delivery&nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691590131756,1694530587848,'2023-08-09 09:20:24',0),
(303,'SPN Jira Powder','1691591041533.png',280.00,400,100,0,'<h2>SPN Jira Powder- 250gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 280 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691591041533,1697280326988,'2023-08-09 09:32:35',5),
(304,'Jira (whole)- 100gm','1691592177704.png',120.00,140,100,0,'<h2>Jira (Whole)- 100gm</h2><div>(গোটা জিরা)</div><div><br></div><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 120 tk</div><div>Delivery&nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691592177704,1691593333278,'2023-08-09 09:49:24',0),
(305,'SPN Coriandar Powder','1691592414090.png',80.00,110,100,0,'<h2>&nbsp;SPN Coriander(Dhonia) Powder Jar- 200gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 80 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691592414090,1697280285422,'2023-08-09 09:59:15',5),
(306,'Dhonia- 200gm','1691593063232.png',75.00,90,100,0,'<h2>Dhonia- 200gm<br></h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 75 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691593063232,1697271352784,'2023-08-09 10:04:48',0),
(307,'Shahi Jira- 100gm','1691599267999.png',160.00,200,100,0,'<h2>Shahi Jira- 100gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 160 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691599267999,1691599267999,'2023-08-09 11:53:46',0),
(308,'Elachi-100 gm','1691599842225.png',200.00,340,100,0,'<h2>Elachi-100 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 200 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691599842225,1697271562408,'2023-08-09 12:02:36',0),
(309,'Daruchini- 100gm','1691600370620.png',50.00,65,100,0,'<h2>Daruchini- 100gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 50 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691600370620,1697270951941,'2023-08-09 12:05:26',0),
(310,'Clove(Lobongo)- 100gm','1691600617634.png',155.00,180,100,0,'<h2>Clove (Lobongo)- 100gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 155 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691600617634,1691601021490,'2023-08-09 12:09:53',0),
(311,'Teer White Flour- 1kg','1691601570597.png',45.00,48,100,0,'<h2>Teer White Flour(Maida)- 1kg</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 45 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691601570597,1691601570597,'2023-08-09 12:26:36',0),
(312,'Teer Suji- 500gm','1691601863891.png',45.00,50,100,0,'<h2>Teer Suji- 500gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 45 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691601863891,1691603156363,'2023-08-09 12:30:00',0),
(313,'Teer Soyabean Oil- 1 liter','1691602459068.png',195.00,210,100,0,'<h2>Teer Soyabean Oil- 1 liter</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 195 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1691602459068,1691602459068,'2023-08-09 12:41:55',0),
(314,'Teer Soyabean Oil- 3 liter','1691602729409.png',550.00,560,100,0,'<h2>Teer Soyabean Oil- 3 liter</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 550 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691602729409,1691680886364,'2023-08-09 12:44:38',0),
(315,'Cashew nut(Broken)','1691603277417.png',119.00,135,100,0,'<h2>Cashew nut(Broken)- 100 gm</h2><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 119 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1691603277417,1691676459970,'2023-08-09 12:54:39',0),
(317,'Nestle Maggi Noodles- 496 gm','1692771416710.png',160.00,175,100,0,'<h1>Nestle Maggi Noodles- 496 gm</h1><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 160 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div><div><br></div>','READY STOCK',1692771416710,1697304783418,'2023-08-23 01:22:00',0),
(318,'Nestle Maggi Noodles- 744 gm','1692771584553.png',250.00,265,100,0,'<h1>Nestle Maggi Noodles- 744 gm</h1><h1><span style=\"font-family: inherit; font-size: 14px;\">Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 250 tk</span><br></h1><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1692771584553,1697304754655,'2023-08-23 01:25:59',0),
(319,'Mojammel Special Nazirshail Rice- 5kg','1692771867354.png',520.00,550,100,0,'<h1><b>Mojammel Special Rice- 5kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 520 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</b></div>','READY STOCK',1692771867354,1696151719691,'2023-08-23 01:35:54',2),
(321,'Wheel Laundry soap- 125 gm','1692773724176.png',28.00,30,100,0,'<h1>Wheel Laundry soap- 125 gm</h1><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 28 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1692773724176,1697009549774,'2023-08-23 02:00:11',0),
(322,'Bagda Chingri- 1 kg','1694530202563.png',790.00,800,100,0,'<h1>Bagda Chingri- 1 kg</h1><div>(30-35 pieces)</div><div><br></div><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 760 tk</div><div>Delivery&nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</div>','READY STOCK',1694530202563,1695728004425,'2023-09-12 09:56:28',4),
(347,'Farmland Milk Powder- 500 gm','1697309314074.png',390.00,400,100,0,'<h1><b>Farmland Milk Powder- 500 gm</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 390 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697309314074,1697309314074,'2023-10-14 13:54:05',0),
(348,'Farmland Milk Powder- 1 kg','1697309535961.png',800.00,825,100,0,'<h1><b>Farmland Milk Powder- 1 kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 800 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697309535961,1697309535961,'2023-10-14 14:03:23',0),
(349,'Potol(Pointed Gourd)- 1kg','1697365085962.png',75.00,80,100,0,'<h1><b>Potol(Pointed Gourd)- 1kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 75 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</b></div>','READY STOCK',1697365085962,1697365085962,'2023-10-15 05:23:44',3),
(350,'Kochur Loti- 1kg','1697365257432.png',80.00,90,100,0,'<h1><span style=\"font-family: inherit;\">Kochur Loti(Stolon of Taro)- 1 KG</span></h1><div>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 80 tk</div><div>Delivery&nbsp; &nbsp; &nbsp;- 24 hours</div>','READY STOCK',1697365257432,1697365257432,'2023-10-15 05:27:12',3),
(351,'Chichinga- 1 kg','1697365423455.png',80.00,90,100,0,'<h1><b>Chichinga(Snake Gourd)- 1 kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 80 tk</b></div><div><b>Delivery&nbsp; &nbsp; - 24 hours</b></div>','READY STOCK',1697365423455,1697365423455,'2023-10-15 05:29:21',3),
(352,'Borboti- 1 kg','1697365521796.png',90.00,110,100,0,'<h1><b>Borboti(Long Bean)- 1 kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 90 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 24 hours</b></div>','READY STOCK',1697365521796,1697365521796,'2023-10-15 05:32:32',3),
(353,'Lau(Bottle Gourd)- 1 kg','1697365715776.png',60.00,80,100,0,'<h1><b>Lau(Bottle Gourd)- 1 kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 60 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697365715776,1697365715776,'2023-10-15 05:35:23',3),
(354,'Sheem(Flat bean)- 1kg','1697365882340.png',170.00,200,100,0,'<h1><b>Sheem(Flat bean)- 1kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 170 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697365882340,1697365882340,'2023-10-15 05:39:44',3),
(355,'Sobuj Gol Begun- 1kg','1697366181741.png',100.00,120,100,0,'<h1><b>Sobuj Gol Begun(Round Green Brinjals)- 1kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 100 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697366181741,1697366181741,'2023-10-15 05:42:53',3),
(356,'Lomba Kalo Begun- 1 kg','1697366334726.png',100.00,110,100,0,'<h1><b>Lomba Kalo Begun- 1 kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 100 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697366334726,1697366510534,'2023-10-15 05:45:23',3),
(357,'Mula(Radish)- 1kg','1697366522998.png',80.00,90,100,0,'<h1><b>Mula(Radish)- 1kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 80 tk</b></div><div><b>Delivery&nbsp; &nbsp; - 24 hours</b></div>','READY STOCK',1697366522998,1697366522998,'2023-10-15 05:48:30',3),
(358,'Korola(Bitter Gourd)- 1kg','1697366673737.png',100.00,110,100,0,'<h1><b>Korola(Bitter Gourd)- 1kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 100 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697366673737,1697366673737,'2023-10-15 05:50:51',3),
(359,'Dheros(Ladies Finger)- 1kg','1697366817937.png',75.00,80,100,0,'<h1><b>Dheros(Ladies Finger)- 1 kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 75 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697366817937,1697367544291,'2023-10-15 05:52:56',3),
(360,'Kacha Pepe- 1kg','1697367403437.png',40.00,45,100,0,'<h1><b>Kacha Pepe(Green Papaya)- 1kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 40 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</b></div>','READY STOCK',1697367403437,1697367403437,'2023-10-15 06:02:58',3),
(361,'Misti Kumra- 1kg','1697367596607.png',50.00,55,100,0,'<h1><b>Misti Kumra(Sweet pumpkin)- 1kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- 50 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; - 24 hours</b></div>','READY STOCK',1697367596607,1697367596607,'2023-10-15 06:07:06',3),
(362,'Kakrol- 1kg','1697367787586.png',80.00,90,100,0,'<h1><b>Kakrol(Sweet Bitter Gourd)- 1kg</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 80 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697367787586,1697367787586,'2023-10-15 06:09:52',3),
(363,'Gol Lebu- 4cs','1697367955037.png',25.00,30,100,0,'<h1><b>Gol Lebu(Round Lemon)- 4cs</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 25 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697367955037,1697367955037,'2023-10-15 06:12:16',3),
(364,'Kacha Kola- 4pcs','1697368096437.png',40.00,45,100,0,'<h1><b>Kacha Kola(Banana Green)- 4pcs</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 40 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697368096437,1697368096437,'2023-10-15 06:14:49',3),
(365,'Dhonia Pata- 100 gm','1697368307916.png',20.00,30,100,0,'<h1><b>Dhonia Pata- 100 gm</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 20 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697368307916,1697368307916,'2023-10-15 06:17:40',3),
(366,'Kacha Morich- 250 gm','1697368420995.png',40.00,50,100,0,'<h1><b>Kacha Morich- 250 gm</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - 40 tk</b></div><div><b>Delivery&nbsp; &nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1697368420995,1697368420995,'2023-10-15 06:21:55',3),
(367,'Aair Fish- 3kg+','1698928707832.png',1300.00,1350,100,0,'<h1><b>Aair Fish- 3kg+</b></h1><div><b>Price&nbsp; &nbsp; &nbsp; &nbsp; - 1300 tk</b></div><div><b>Delivery&nbsp; &nbsp;- 24 hours</b></div>','READY STOCK',1698928707832,1698928707832,'2023-11-02 07:44:37',4),
(368,'Onion (Deshi) 5 KG','1700041863031.jpg',600.00,650,100,0,'<b>Note Please:</b><div>The price can be changed&nbsp;</div>','READY STOCK',1700041049426,1700041863031,'2023-11-15 03:41:52',6);

/*Table structure for table `product_category` */

DROP TABLE IF EXISTS `product_category`;

CREATE TABLE `product_category` (
  `product_id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  KEY `fk_product_category_1` (`product_id`),
  KEY `fk_product_category_2` (`category_id`),
  CONSTRAINT `fk_product_category_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_product_category_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `product_category` */

insert  into `product_category`(`product_id`,`category_id`) values 
(182,28),
(259,41),
(260,41),
(261,41),
(250,31),
(229,28),
(228,28),
(191,21),
(184,28),
(183,28),
(271,25),
(281,25),
(296,35),
(297,35),
(300,35),
(283,35),
(282,35),
(304,27),
(307,27),
(310,27),
(311,30),
(144,29),
(158,29),
(313,29),
(312,30),
(293,34),
(290,34),
(292,34),
(315,35),
(295,34),
(294,34),
(280,21),
(279,21),
(197,21),
(196,21),
(192,21),
(240,23),
(206,23),
(209,23),
(211,23),
(314,29),
(216,24),
(143,30),
(302,31),
(145,21),
(322,19),
(319,46),
(219,46),
(217,24),
(218,48),
(214,48),
(212,48),
(223,48),
(220,48),
(215,48),
(140,34),
(140,50),
(321,52),
(277,52),
(251,52),
(227,52),
(188,52),
(205,52),
(187,52),
(189,52),
(237,52),
(236,52),
(235,52),
(234,52),
(231,52),
(230,52),
(200,52),
(198,52),
(245,52),
(243,52),
(242,52),
(241,52),
(233,52),
(199,52),
(201,52),
(207,23),
(222,18),
(210,23),
(146,21),
(309,27),
(186,52),
(185,52),
(306,27),
(308,27),
(244,52),
(150,25),
(247,33),
(278,33),
(208,23),
(239,52),
(238,52),
(276,33),
(275,33),
(291,34),
(157,29),
(226,29),
(305,27),
(305,50),
(303,27),
(303,50),
(147,27),
(147,50),
(151,30),
(318,44),
(317,44),
(195,21),
(194,21),
(347,21),
(348,21),
(349,49),
(350,49),
(351,49),
(352,49),
(353,49),
(354,49),
(355,49),
(356,49),
(357,49),
(358,49),
(360,49),
(359,49),
(361,49),
(362,49),
(363,49),
(364,49),
(365,49),
(366,49),
(148,19),
(142,18),
(213,46),
(225,25),
(249,34),
(248,34),
(367,19),
(368,53);

/*Table structure for table `product_image` */

DROP TABLE IF EXISTS `product_image`;

CREATE TABLE `product_image` (
  `product_id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  KEY `fk_table_images` (`product_id`),
  CONSTRAINT `fk_table_images` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `product_image` */

insert  into `product_image`(`product_id`,`name`) values 
(140,'0_1686640848936.jpg');

/*Table structure for table `product_order` */

DROP TABLE IF EXISTS `product_order`;

CREATE TABLE `product_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL,
  `buyer` varchar(50) NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `shipping` varchar(20) NOT NULL,
  `shipping_location` varchar(50) NOT NULL,
  `shipping_rate` decimal(12,2) NOT NULL DEFAULT 0.00,
  `date_ship` bigint(20) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `payment` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL,
  `payment_data` text NOT NULL,
  `total_fees` decimal(12,2) NOT NULL,
  `tax` decimal(12,2) NOT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  `OrderDate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `product_order` */

insert  into `product_order`(`id`,`code`,`buyer`,`address`,`email`,`shipping`,`shipping_location`,`shipping_rate`,`date_ship`,`phone`,`comment`,`status`,`payment`,`payment_status`,`payment_data`,`total_fees`,`tax`,`serial`,`created_at`,`last_update`,`OrderDate`) values 
(82,'IQ31123AN','','','','','',0.00,1690268243579,'01628320894','','PROCESSED','BY ADMIN','PAID','',1078.00,11.00,'cab8c1a4e4421a3b',1690268243579,1690547716758,'2023-07-25 01:57:24'),
(83,'RK80335UR','','','','','',0.00,1690388464790,'01748212020','','CANCEL','','','',640.00,11.00,'cab8c1a4e4421a3b',1690388464790,1690547692242,'2023-07-26 11:21:06'),
(84,'IP19101UQ','','','','','',0.00,1690564908009,'01748212020','','PROCESSED','BY ADMIN','PAID','',1332.00,11.00,'cab8c1a4e4421a3b',1690564908009,1690878897703,'2023-07-28 12:21:49'),
(85,'HX29848SG','','','','','',0.00,1690736798634,'01748212020','','PROCESSED','BY ADMIN','PAID','',235.00,11.00,'cab8c1a4e4421a3b',1690736798634,1690878953073,'2023-07-30 12:06:39'),
(86,'ZW44880UG','','','','','',0.00,1690789674820,'01628320894','','WAITING','','','',693.00,11.00,'cab8c1a4e4421a3b',1690789674820,1690789674820,'2023-07-31 02:47:55'),
(89,'GP05374IQ','','','','','',0.00,1690989025576,'1623321208','','WAITING','','','',1458.00,11.00,'cab8c1a4e4421a3b',1690989025576,1690989025576,'2023-08-02 10:10:26'),
(95,'WR12092XI','','','','','',0.00,1691515871232,'01970282233','','PROCESSED','BY ADMIN','PAID','',230.00,11.00,'cab8c1a4e4421a3b',1691515871232,1691674267664,'2023-08-08 12:31:12'),
(96,'BT43473BS','','','','','',0.00,1691560574338,'01743751844','','CANCEL','','','',200.00,11.00,'cab8c1a4e4421a3b',1691560574338,1691674213806,'2023-08-09 00:56:16'),
(97,'DU72502BV','','','','','',0.00,1691560655892,'01743751844','','PROCESSED','BY ADMIN','PAID','',200.00,11.00,'cab8c1a4e4421a3b',1691560655892,1691674179813,'2023-08-09 00:57:37'),
(105,'UL32465SR','','','','','',0.00,1691911113081,'01911708950','','WAITING','','','',1912.00,11.00,'SPN1',1691911113081,1691911113081,'2023-08-13 02:18:32'),
(106,'CM17653TJ','','','','','',0.00,1692012645592,'01743751844','','WAITING','','','',273.00,11.00,'SPN1',1692012645592,1692012645592,'2023-08-14 06:30:47'),
(113,'BL23211UQ','','','','','',0.00,1692360911337,'01970282233','','WAITING','','','',169.00,11.00,'SPN1',1692360911337,1692360911337,'2023-08-18 07:15:11'),
(116,'BC94421KQ','','','','','',0.00,1692363752419,'01748212020','','WAITING','','','',460.00,11.00,'SPN1',1692363752419,1692363752419,'2023-08-18 08:02:34'),
(117,'WY32346NM','','','','','',0.00,1692363936910,'01748212020','','WAITING','','','',140.00,11.00,'SPN1',1692363936909,1692363936910,'2023-08-18 08:05:39'),
(120,'DU86762LK','','','','','',0.00,1692985802600,'01978448822','','WAITING','','','',88.00,11.00,'SPN1',1692985802600,1692985802600,'2023-08-25 12:50:04'),
(121,'PU10756NQ','','','','','',0.00,1692986895705,'01978448822','','WAITING','','','',88.00,11.00,'SPN1',1692986895704,1692986895705,'2023-08-25 13:08:19'),
(122,'WB15099AQ','','','','','',0.00,1692987097533,'01978448822','','WAITING','','','',88.00,11.00,'SPN1',1692987097529,1692987097533,'2023-08-25 13:11:38'),
(123,'FR47237UQ','','','','','',0.00,1693032786085,'01748212020','','WAITING','','','',1918.00,11.00,'SPN1',1693032786085,1693032786085,'2023-08-26 01:53:05'),
(124,'JV25934BW','','','','','',0.00,1693202932666,'01794669858','','WAITING','','','',520.00,11.00,'SPN1',1693202932666,1693202932666,'2023-08-28 01:08:55'),
(125,'AJ74876FH','','','','','',0.00,1693203129510,'01720500600','','WAITING','','','',340.00,11.00,'SPN1',1693203129510,1693203129510,'2023-08-28 01:12:24'),
(126,'FR79018OA','','','','','',0.00,1694076080605,'01402503040','','WAITING','','','',2540.00,11.00,'SPN1',1694076080605,1694076080605,'2023-09-07 03:41:22'),
(127,'CT68815WT','','','','','',0.00,1694076346478,'01402503040','','WAITING','','','',233.00,11.00,'SPN1',1694076346478,1694076346478,'2023-09-07 03:45:47'),
(128,'KJ19374RV','','','','','',0.00,1694076757210,'01402503040','','WAITING','','','',195.00,11.00,'SPN1',1694076757210,1694076757210,'2023-09-07 03:52:38'),
(129,'EM98845IO','','','','','',0.00,1694239690157,'01748212020','','WAITING','','','',230.00,11.00,'SPN1',1694239690157,1694239690157,'2023-09-09 01:08:10'),
(131,'JL39865JP','','','','','',0.00,1695301764167,'01628320894','','WAITING','','','',1053.00,11.00,'SPN1',1695301764167,1695301764167,'2023-09-21 08:09:25'),
(132,'MY58041HY','','','','','',0.00,1695911863436,'01714030237','','WAITING','','','',570.00,11.00,'SPN1',1695911863436,1695911863436,'2023-09-28 09:37:43'),
(133,'VZ48966XO','','','','','',0.00,1695960103249,'01720500600','','WAITING','','','',459.00,11.00,'SPN1',1695960103249,1695960103249,'2023-09-28 23:01:59'),
(134,'CR00944QJ','','','','','',0.00,1695975307345,'01978448822','','WAITING','','','',1181.00,11.00,'SPN1',1695975307345,1695975307345,'2023-09-29 03:15:25'),
(135,'VG65572DB','','','','','',0.00,1696091030438,'01720500600','','WAITING','','','',569.00,11.00,'SPN1',1696091030438,1696091030438,'2023-09-30 11:23:52'),
(142,'KV79527CW','','','','','',0.00,1697617782470,'01628320894','','WAITING','','','',1230.00,11.00,'SPN1',1697617782470,1697617782470,'2023-10-18 03:29:43'),
(147,'IH23383CK','','','','','',0.00,1697628287156,'01978448822','','WAITING','','','',1680.00,11.00,'SPN1',1697628287156,1697628287156,'2023-10-18 06:24:49'),
(148,'IT94150XL','','','','','',0.00,1697640722413,'01736690707','','WAITING','','','',1865.00,11.00,'SPN1',1697640722412,1697640722413,'2023-10-18 09:52:19'),
(149,'KH28882VO','','','','','',0.00,1698504892277,'01748212020','','WAITING','','','',1940.00,11.00,'SPN1',1698504892277,1698504892277,'2023-10-28 09:54:54'),
(150,'FF11166QQ','','','','','',0.00,1699013000683,'01732227172','','WAITING','','','',1168.00,11.00,'SPN1',1699013000683,1699013000683,'2023-11-03 07:03:22'),
(151,'WT27796ZU','','','','','',0.00,1700128511630,'01978448822','','WAITING','','','',650.00,11.00,'SPN1',1700128511630,1700128511630,'2023-11-16 03:55:13'),
(154,'MI13846PP','','','','','',0.00,1700128680687,'01978448822','','WAITING','','','',140.00,11.00,'SPN1',1700128680687,1700128680687,'2023-11-16 03:58:03'),
(157,'WS32950AH','','','','','',0.00,1700128797124,'01978448822','','WAITING','','','',140.00,11.00,'SPN1',1700128797124,1700128797124,'2023-11-16 03:59:59'),
(158,'MR06508HG','','','','','',0.00,1700203679059,'01720500600','','WAITING','','','',610.00,11.00,'SPN1',1700203679059,1700203679059,'2023-11-17 00:47:54');

/*Table structure for table `product_order_detail` */

DROP TABLE IF EXISTS `product_order_detail`;

CREATE TABLE `product_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `price_item` decimal(12,2) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  `last_update` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_table_orders_item` (`order_id`),
  CONSTRAINT `fk_table_orders_item` FOREIGN KEY (`order_id`) REFERENCES `product_order` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `product_order_detail` */

insert  into `product_order_detail`(`id`,`order_id`,`product_id`,`product_name`,`amount`,`price_item`,`created_at`,`last_update`) values 
(115,82,196,'AMA Milk Powder 500gm',1,310.00,1690268244416,1690268244416),
(116,82,149,'Molla Salt 1 kg',1,38.00,1690268244416,1690268244416),
(117,82,150,'Fresh Refined Sugar (1kg)',1,0.00,1690268244416,1690268244416),
(118,82,187,'Rin Detergent Powder - 500gm',2,90.00,1690268244416,1690268244416),
(119,82,140,'Leaf N Bud Premium Tea 200gm',5,100.00,1690268244416,1690268244416),
(120,82,158,'Teer Fortified Soyabean Oil',1,0.00,1690268244416,1690268244416),
(121,83,204,'Fiama Soap - 125 gm',1,120.00,1690388466559,1690388466559),
(122,83,187,'Rin Detergent Powder - 500gm',1,90.00,1690388466559,1690388466559),
(123,83,202,'Palmolive Soap - 170gm',1,190.00,1690388466559,1690388466559),
(124,83,203,'Imperial Leather Soap - 200 gm',1,190.00,1690388466559,1690388466559),
(125,84,238,'Lifebuoy Liquid Handwash Total - 187 ml',1,70.00,1690564909806,1690564909806),
(126,84,238,'Lifebuoy Liquid Handwash Total - 187 ml',1,70.00,1690564909806,1690564909806),
(127,84,184,'Vim Dishwashing Bar - 125 gm',5,14.00,1690564909806,1690564909806),
(128,84,182,'Vim  Dishwashing Liquid pouch - 250 ml',4,68.00,1690564909806,1690564909806),
(129,84,192,'Diploma Full Cream 1kg',1,800.00,1690564909806,1690564909806),
(130,85,205,'Rin Detergent Powder - 1kg',1,185.00,1690736799843,1690736799843),
(131,86,240,'Moshur Dal (Deshi) - 1kg',1,140.00,1690789675785,1690789675785),
(132,86,187,'Rin Detergent Powder - 500gm',2,90.00,1690789675785,1690789675785),
(133,86,241,'Lux Soap (Soft Glow) - 150 gm',1,65.00,1690789675785,1690789675785),
(134,86,143,'Teer Atta 2kg',1,120.00,1690789675785,1690789675785),
(135,86,225,'Teer Sugar 1 kg',1,138.00,1690789675785,1690789675785),
(137,89,239,'Lifebuoy Liquid Handwash Care - 187 ml',2,70.00,1690989026086,1690989026086),
(138,89,143,'Teer Atta 2kg',1,120.00,1690989026086,1690989026086),
(139,89,247,'Harpic Total - 200 gm',2,88.00,1690989026086,1690989026086),
(140,89,149,'Molla Salt 1 kg',1,38.00,1690989026086,1690989026086),
(141,89,191,'Diploma Full Cream 500gm',1,400.00,1690989026086,1690989026086),
(142,89,225,'Teer Sugar 1 kg',1,138.00,1690989026086,1690989026086),
(143,89,229,'Vim Dishwashing Bar - 300 gm',2,38.00,1690989026086,1690989026086),
(144,89,240,'Moshur Dal (Deshi) - 1kg',1,140.00,1690989026086,1690989026086),
(145,89,187,'Rin Detergent Powder - 500gm',2,90.00,1690989026086,1690989026086),
(146,89,158,'Teer Fortified Soyabean Oil 2kg',1,0.00,1690989026086,1690989026086),
(150,95,205,'Rin Detergent Powder - 1kg',1,180.00,1691515872505,1691515872505),
(151,96,278,'Harpic- 750 ml',1,150.00,1691560576104,1691560576104),
(152,97,278,'Harpic- 750 ml',1,150.00,1691560657567,1691560657567),
(161,105,209,'Mug Dal - 500 gm',1,65.00,1691911112261,1691911112261),
(162,105,256,'Colgate Maxfresh (Blue)',1,180.00,1691911112261,1691911112261),
(163,105,240,'Moshur Dal (Deshi) - 1kg',1,145.00,1691911112261,1691911112261),
(164,105,227,'Surf Excel  fabric solutions - 500 gm',1,145.00,1691911112261,1691911112261),
(165,105,157,'Rupchada Soyabean Oil- 5 liter',1,860.00,1691911112261,1691911112261),
(166,105,309,'Daruchini- 100gm',1,49.00,1691911112261,1691911112261),
(167,105,300,'Raisins (Kishmish)',1,50.00,1691911112261,1691911112261),
(168,105,205,'Rin Detergent Powder - 1kg',1,180.00,1691911112261,1691911112261),
(169,105,278,'Harpic- 750 ml',1,150.00,1691911112261,1691911112261),
(170,105,281,'ACI Salt - 1kg',1,38.00,1691911112261,1691911112261),
(171,106,261,'Meril Baby Toothpaste',1,85.00,1692012647027,1692012647027),
(172,106,225,'Teer Sugar 1 kg',1,138.00,1692012647027,1692012647027),
(177,113,315,'Cashew nut(Broken)',1,119.00,1692360911578,1692360911578),
(178,116,191,'Diploma Milk Powder- 500gm',1,410.00,1692363754438,1692363754438),
(179,117,187,'Rin Detergent Powder - 500gm',1,90.00,1692363939113,1692363939113),
(182,120,229,'Vim Dishwashing Bar - 300 gm',1,38.00,1692985804039,1692985804039),
(183,121,229,'Vim Dishwashing Bar - 300 gm',1,38.00,1692986899781,1692986899781),
(184,122,229,'Vim Dishwashing Bar - 300 gm',1,38.00,1692987098515,1692987098515),
(185,123,182,'Vim  Dishwashing Liquid pouch - 250 ml',3,68.00,1693032785800,1693032785800),
(186,123,247,'Harpic Total - 400 gm',1,88.00,1693032785800,1693032785800),
(187,123,205,'Rin Detergent Powder - 1kg',4,180.00,1693032785800,1693032785800),
(188,123,192,'Diploma Milk Powder- 1kg',1,800.00,1693032785800,1693032785800),
(189,123,321,'Wheel Laundry soap- 125 gm',2,28.00,1693032785800,1693032785800),
(190,124,297,'Cashew Nut- 100gm',1,150.00,1693202935045,1693202935045),
(191,124,282,'SPN Cia Seed- 250gm',1,180.00,1693202935045,1693202935045),
(192,124,296,'Almond -100gm',1,90.00,1693202935045,1693202935045),
(193,124,300,'Raisins (Kishmish)',1,50.00,1693202935045,1693202935045),
(194,125,296,'Almond -100gm',1,90.00,1693203144592,1693203144592),
(195,125,300,'Raisins (Kishmish)',1,50.00,1693203144592,1693203144592),
(196,125,297,'Cashew Nut- 100gm',1,150.00,1693203144592,1693203144592),
(197,126,219,'Teer Katari Najir rice',1,1870.00,1694076082676,1694076082676),
(198,126,188,'Surf Excel Fabric Solution - 1 kg',1,280.00,1694076082676,1694076082676),
(199,126,186,'Dettol bathing soap - 125 gm',1,80.00,1694076082676,1694076082676),
(200,126,320,'ACI Gold Sugar- 958 gm',2,130.00,1694076082676,1694076082676),
(201,127,240,'Moshur Dal (Deshi) - 1kg',1,145.00,1694076347758,1694076347758),
(202,127,229,'Vim Dishwashing Bar - 300 gm',1,38.00,1694076347758,1694076347758),
(203,128,245,'Dove bar  - 100 gm',1,145.00,1694076758289,1694076758289),
(204,129,255,'Colgate Maxfresh 150 gm',1,180.00,1694239690738,1694239690738),
(205,131,281,'ACI Salt - 1kg',1,38.00,1695301765441,1695301765441),
(206,131,140,'Leaf N Bud Premium Tea 200gm',1,90.00,1695301765441,1695301765441),
(207,131,194,'Marks Milk Powder- 500 gm',1,395.00,1695301765441,1695301765441),
(208,131,158,'Teer Soyabean Oil- 2 liter',1,350.00,1695301765441,1695301765441),
(209,131,150,'Fresh Refined Sugar- 1 kg',1,130.00,1695301765441,1695301765441),
(210,132,319,'Mojammel Special Rice- 5kg',1,520.00,1695911863181,1695911863181),
(211,133,300,'Raisins (Kishmish)',1,50.00,1695960119162,1695960119162),
(212,133,296,'Almond -100gm',1,90.00,1695960119162,1695960119162),
(213,133,315,'Cashew nut(Broken)',1,119.00,1695960119162,1695960119162),
(214,133,297,'Cashew Nut- 100gm',1,150.00,1695960119162,1695960119162),
(215,134,240,'Moshur Dal (Deshi) - 1kg',1,145.00,1695975325345,1695975325345),
(216,134,158,'Teer Soyabean Oil- 2 liter',1,350.00,1695975325345,1695975325345),
(217,134,230,'Lifebuoy Health Soap Total - 150 gm',2,58.00,1695975325345,1695975325345),
(218,134,319,'Mojammel Special Rice- 5kg',1,520.00,1695975325345,1695975325345),
(219,135,315,'Cashew nut(Broken)',1,119.00,1696091032118,1696091032118),
(220,135,300,'Raisins (Kishmish)',1,50.00,1696091032118,1696091032118),
(221,135,300,'Raisins (Kishmish)',1,50.00,1696091032118,1696091032118),
(222,135,283,'Isubgul Vushi- 100 gm',1,150.00,1696091032118,1696091032118),
(223,135,297,'Cashew Nut- 100gm',1,150.00,1696091032118,1696091032118),
(229,142,194,'Marks Milk Powder- 500 gm',1,400.00,1697617783632,1697617783632),
(230,142,205,'Rin Detergent Powder - 1kg',1,180.00,1697617783632,1697617783632),
(231,142,183,'Vim Dishwashing Liquid - 1liter',1,250.00,1697617783632,1697617783632),
(232,142,158,'Teer Soyabean Oil- 2 liter',1,350.00,1697617783632,1697617783632),
(233,147,148,'Aair Fish 2-4 kg',2,650.00,1697628289118,1697628289118),
(234,147,222,'Broiler Chicken(without skin) - 1kg',1,330.00,1697628289118,1697628289118),
(235,148,332,'Radhuni mustard oil- 250 ml',1,95.00,1697640739310,1697640739310),
(236,148,144,'Teer Soyabean Oil- 5 liter',2,860.00,1697640739310,1697640739310),
(237,149,205,'Rin Detergent Powder - 1kg',1,180.00,1698504894206,1698504894206),
(238,149,182,'Vim  Dishwashing Liquid pouch - 250 ml',1,68.00,1698504894206,1698504894206),
(239,149,192,'Diploma Milk Powder- 1kg',1,800.00,1698504894206,1698504894206),
(240,149,184,'Vim Dishwashing Bar - 125 gm',3,14.00,1698504894206,1698504894206),
(241,149,192,'Diploma Milk Powder- 1kg',1,800.00,1698504894206,1698504894206),
(242,150,312,'Teer Suji- 500gm',1,45.00,1699013002003,1699013002003),
(243,150,251,'Wheel washing powder - 500gm',1,70.00,1699013002003,1699013002003),
(244,150,222,'Broiler Chicken(without skin) - 1kg',1,330.00,1699013002003,1699013002003),
(245,150,335,'Fresh Soyabean Oil- 3 liter',1,550.00,1699013002003,1699013002003),
(246,150,200,'Lifebuoy Soap - 100 gm',1,48.00,1699013002003,1699013002003),
(247,150,363,'Gol Lebu- 4cs',1,25.00,1699013002003,1699013002003),
(248,150,309,'Daruchini- 100gm',1,50.00,1699013002003,1699013002003),
(249,151,368,'Onion (Deshi) 5 KG',1,600.00,1700128513416,1700128513416),
(250,154,140,'Leaf N Bud Premium Tea 200gm',1,90.00,1700128683040,1700128683040),
(251,157,140,'Leaf N Bud Premium Tea 200gm',1,90.00,1700128799522,1700128799522),
(252,158,282,'SPN Cia Seed- 250gm',1,180.00,1700203674833,1700203674833),
(253,158,296,'Almond -100gm',1,90.00,1700203674833,1700203674833),
(254,158,297,'Cashew Nut- 100gm',1,150.00,1700203674833,1700203674833),
(255,158,296,'Almond -100gm',1,90.00,1700203674833,1700203674833),
(256,158,300,'Raisins (Kishmish)',1,50.00,1700203674833,1700203674833);

/*Table structure for table `shipping` */

DROP TABLE IF EXISTS `shipping`;

CREATE TABLE `shipping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `location` varchar(50) NOT NULL,
  `location_id` varchar(50) NOT NULL,
  `rate_economy` decimal(12,2) NOT NULL,
  `rate_regular` decimal(12,2) NOT NULL,
  `rate_express` decimal(12,2) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `active_eco` tinyint(1) NOT NULL,
  `active_reg` tinyint(1) NOT NULL,
  `active_exp` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `shipping` */

insert  into `shipping`(`id`,`location`,`location_id`,`rate_economy`,`rate_regular`,`rate_express`,`active`,`active_eco`,`active_reg`,`active_exp`) values 
(106,'Oklahoma, US','',5.00,10.00,20.00,1,1,1,1),
(107,'Texas, US','',5.00,10.00,20.00,1,1,1,1),
(108,'Virginia, US','',5.00,10.00,20.00,0,1,1,1),
(109,'Washington, US','',5.00,10.00,20.00,1,0,0,0);

/*Table structure for table `tables` */

DROP TABLE IF EXISTS `tables`;

CREATE TABLE `tables` (
  `Tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tables` */

insert  into `tables`(`Tables`) values 
('product'),
('product');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_username` (`username`),
  UNIQUE KEY `unique_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`username`,`email`,`password`) values 
(1,'Hamidul Haque','hamid','hamidul.haque@duncanbd.com','c22e3bfe3761e8efe39ea6af42f1230a');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
