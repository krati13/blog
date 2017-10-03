-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2017 at 02:41 AM
-- Server version: 5.5.55-cll
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ankiosco_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `Id` bigint(20) NOT NULL,
  `commentText` longtext NOT NULL,
  `dateTime` datetime NOT NULL,
  `deleted` bit(1) NOT NULL,
  `modifiedDateTime` datetime DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`Id`, `commentText`, `dateTime`, `deleted`, `modifiedDateTime`, `parent_id`, `post_id`, `user_id`) VALUES
(1, 'Yeah..Its working', '2017-07-26 19:50:16', b'0', NULL, NULL, 3, 2),
(2, 'Yeah ..working fine', '2017-07-26 20:14:41', b'0', NULL, NULL, 4, 2),
(3, 'wawoo..Its working', '2017-08-15 03:36:51', b'0', NULL, NULL, 9, 2),
(4, 'Thanks..Its working fine.', '2017-08-15 03:37:32', b'0', NULL, NULL, 8, 2),
(5, 'it works.', '2017-08-21 03:21:50', b'0', NULL, NULL, 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `comment_ratings`
--

CREATE TABLE `comment_ratings` (
  `Id` bigint(20) NOT NULL,
  `value` smallint(6) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `comment_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `persistent_logins`
--

CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persistent_logins`
--

INSERT INTO `persistent_logins` (`username`, `series`, `token`, `last_used`) VALUES
('admin', 'vztNql6fvBLLiFRVv3oKZA==', 'Gsal4UGH8P99tXOnew0biQ==', '2017-08-26 07:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `Id` bigint(20) NOT NULL,
  `dateTime` datetime NOT NULL,
  `fullPostText` longtext,
  `hidden` bit(1) NOT NULL,
  `shortTextPart` longtext,
  `title` varchar(250) NOT NULL,
  `category` varchar(45) NOT NULL DEFAULT 'promo'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`Id`, `dateTime`, `fullPostText`, `hidden`, `shortTextPart`, `title`, `category`) VALUES
(1, '2015-03-10 06:23:31', 'Are you installing OLA cab apps? Wait use this Ola cabs referral code for new user and you can also use this ola coupon code for first ride and get your first Ola ride for free. If you are using the Ola app for first time, then there is an OLA referral offer through which you can get Rs 300 OLA money. But to get this OLA cab offer, make sure you use this referral code for ola cab. **Referral code : Q66GAQ**\r\n', b'0', NULL, 'OLA Cabs Referral Coupon Code (Q66GAQ) for New User', 'promo'),
(2, '2017-07-26 16:48:42', 'Are you installing Yumist app? Wait use this Yumist referral code for new user and you can also use this Yumist coupon code for first order and get 250 yum cash. If you are using this app for first time, then there is an Yumist referral offer through which you can get Rs 300 yum cash. But to get this Yumist offer, make sure you use this referral code for Yumist.\r\n**Referral code : 7042955025**\r\n', b'0', NULL, 'Yumist Referral Coupon Code (7042955025) for New User', 'promo'),
(3, '2017-07-26 18:48:53', 'Are you installing Uber app? Wait use this Uber referral code for new user and you can also use this Uber coupon code for first order and get **free ride**. If you are using this app for first time, then there is an Uber referral offer through which you can get free ride. But to get this Uber offer, make sure you use this referral code for Uber. **Referral code : kratim92ue**', b'0', NULL, 'Uber Referral Coupon Code (kratim92ue) for New User', 'promo'),
(4, '2017-07-26 20:01:07', '\r\nAre you installing Mobikwik app? Wait use this Mobikwik referral code for new user. You get **50** when you add ? 20.0 to your wallet. If you are using this app for first time, then there is an Mobikwik referral offer through which you can get Rs 50. But to get this Mobikwik offer, make sure you use this referral code for Mobikwik. Referral code : **ZSMZQT**\r\n\r\nSign up with MobiKwik, use my referral code **ZSMZQT**. You get ? 50.0 when you add ? 20.0 to your wallet. http://bit.ly/ReferMk', b'0', NULL, 'Mobikwik Referral Coupon Code (ZSMZQT) for New User', 'promo'),
(5, '2017-07-27 10:00:12', 'Are you installing Bigbasket app? Wait use this Bigbasket referral code for new user and get **100** rs. If you are using this app for first time, then there is an Bigbasket referral offer through which you can get 100. But to get this Bigbasket offer, make sure you use this referral code for Bigbasket. **Referral code : bigbunj**', b'0', NULL, 'Bigbasket Referral Coupon Code (bigbunj) for New User', 'promo'),
(6, '2017-07-27 10:30:15', 'Are you installing Goibibo app? Wait use this Goibibo referral code for new user and get **1000** go cash. If you are using this app for first time, then there is an Goibibo referral offer through which you can get 1000. But to get this Goibibo offer, make sure you use this referral code for Goibibo. **Referral code : KRATIM6**', b'0', NULL, 'Goibibo Referral Coupon Code (KRATIM6) for New User', 'promo'),
(7, '2017-07-27 10:32:38', 'Are you installing Make My Trip app? Wait use this Make My Trip referral code for new user and get 1000. If you are using this app for first time, then there is an Make My Trip referral offer through which you can get 1000. But to get this Make My Trip offer, make sure you use this referral code for Make My Trip. **Referral code : c745b**', b'0', NULL, 'Make My Trip Referral Coupon Code (c745b) for New User', 'promo'),
(8, '2017-07-27 10:35:33', 'Are you installing OYO Rooms app? Wait use this OYO Rooms referral code for new user and get **1000**. If you are using this app for first time, then there is an OYO Rooms referral offer through which you can get 1000. But to get this OYO Rooms offer, make sure you use this referral code for OYO Rooms. **Referral code : KRATKO797**', b'0', NULL, 'OYO Rooms Referral Coupon Code (KRATKO797) for New User', 'promo'),
(9, '2017-07-27 10:37:39', 'Are you installing **Jugnoo** app? Wait use this Jugnoo referral code for new user and get **50**. If you are using this app for first time, then there is an Jugnoo referral offer through which you can get 50. But to get this Jugnoo offer, make sure you use this referral code for Jugnoo. \r\n**Referral code : 7042955025**', b'0', NULL, 'Jugnoo Referral Coupon Code (7042955025) for New User', 'promo'),
(13, '2017-08-19 00:07:47', 'Hey! I\'ve been using CouponDunia to get paid for my online shopping. They pay Cashback for big online stores like Flipkart, Snapdeal, MakeMyTrip, Paytm and others. It\'s free to become a member and very easy to use. It\'s helped me save and you should try it out too. https://www.coupondunia.in/referral/522V7I\r\n\r\nYou will purchase from your site but just go through it and you will earn cashback on every purchase.', b'0', NULL, 'Coupondunia', 'promo'),
(14, '2017-08-19 00:10:58', 'https://phon.pe/ru_ajee1bqsl\r\nUse this link to sign up and to first UPI transaction and earn money.\r\nAlso you will get many offer on the app', b'0', NULL, 'PhonePay referral code', 'promo'),
(15, '2017-08-19 11:54:00', 'Hey, I', b'0', NULL, 'PhonePe referral', 'promo'),
(17, '2017-08-20 07:18:33', 'I\'m giving you ?50 off each of your first 3 Uber rides. To accept, use code \'z7vmk8xwue\' to sign up. Enjoy! Details: https://www.uber.com/invite/z7vmk8xwue', b'0', NULL, 'Uber referral code', 'promo'),
(19, '2017-08-21 03:25:10', 'Check out this Flat Rs.150 Off on first 3 orders when you pay using Paytm at UberEATS on Paytm!\r\n\r\nhttps://paytm.com/shop/p/use-code-eatspaytm-to-get-rs-150-off-on-first-3-orders-when-you-pay-with-paytm-wallet-ubereats-DEAUSE-CODE-EATPAYT42C807ACF', b'0', NULL, 'Ubereats promocde - 50% off upto 150Rs, valid till 31 August 2017', 'promo'),
(20, '2017-08-21 12:57:15', 'Facebook: 2.02 years\r\nGoogle: 1.90 years\r\nOracle: 1.89 years\r\nApple: 1.85 years\r\nAmazon: 1.84 years\r\nTwitter: 1.83 years\r\nMicrosoft: 1.81 years\r\nAirbnb: 1.64 years\r\nSnap Inc.: 1.62 years\r\nUber: 1.23 years\r\n\r\nhttp://www.businessinsider.com/employee-retention-rate-top-tech-companies-2017-8', b'0', NULL, 'How much employees spend on average in Tech companies.', 'other'),
(24, '2017-08-25 12:49:28', 'चश्मा/ आशीर्वाद  एक लघुकथा✍?\n\nजल्दी जल्दी घर के सारे काम निपटा, बेटे को स्कूल छोड़ते हुए ऑफिस जाने का सोच, घर से निकल ही रही थी कि... फिर पिताजी की आवाज़ आ गई, -\"बहू, ज़रा मेरा चश्मा तो साफ़ कर दो।\" \n\nऔर बहु झल्लाती हुई....\nसॉल्वेंट ला, चश्मा साफ करने लगी। इसी चक्कर में आज फिर ऑफिस देर से पहुंची।\n\nपति की सलाह पर अब वो सुबह उठते ही पिताजी का चश्मा साफ़ कर के रख देती लेकिन फिर भी घर से निकलते समय पिताजी का बहु को बुलाना बन्द नही हुआ।\n\nसमय से खींचातानी के चलते अब बहु ने पिताजी की पुकार को अनसुना करना शुरू कर दिया।\n\nआज ऑफिस की छुट्टी थी तो बहु ने सोचा -\"घर की साफ सफाई कर लूँ। अचानक ...\n\nपिताजी की डायरी हाथ लग गई। एक पन्ने पर लिखा था-\n\nदिनांक  7 मई 15\n\nआज की इस भागदौड़ भरी ज़िंदगी में, घर से निकलते समय, बच्चे अक्सर बड़ों का आशीर्वाद लेना भूल जाते हैं। बस इसी लिए जब तुम चश्मा साफ कर मुझे देने के लिए झुकती तो मैं मन ही मन, अपना हाथ तुम्हारे सर पर रख देता........ वैसे मेरा आशीष सदा तुम्हारे साथ है बेटा...।\n\nआज पिताजी को गुजरे ठीक 2 साल बीत चुके हैं। अब मैं रोज घर से बाहर निकलते समय पिताजी का चश्मा साफ़ कर, उन के टेबल पर रख दिया करती हूँ। उन के अन देखे हाथ से मिले आशीष की लालसा में......', b'0', NULL, 'Specs - Short Story', 'other'),
(25, '2017-08-25 13:22:48', 'गणपती क्यों बिठाते हैं ?\n\nहम सभी हर साल गणपती की स्थापना करते हैं, साधारण भाषा में गणपती को बैठाते हैं।\nलेकिन क्यों ???\nकिसी को मालूम है क्या ??\nहमारे धर्म ग्रंथों के अनुसार, महर्षि वेद व्यास ने महाभारत की रचना की है।\nलेकिन लिखना उनके वश का नहीं था।\nअतः उन्होंने श्री गणेश जी की आराधना की और गणपती जी से महाभारत लिखने की प्रार्थना की।\nगणपती जी ने सहमति दी और दिन-रात लेखन कार्य प्रारम्भ हुआ और इस कारण गणेश जी को थकान तो होनी ही थी, लेकिन उन्हें पानी पीना भी वर्जित था।\nअतः गणपती जी के शरीर का तापमान बढ़े नहीं, इसलिए वेदव्यास ने उनके शरीर पर मिट्टी का लेप किया और भाद्रपद शुक्ल चतुर्थी को गणेश जी की पूजा की।\nमिट्टी का लेप सूखने पर गणेश जी के शरीर में अकड़न आ गई, इसी कारण गणेश जी का एक नाम पर्थिव गणेश भी पड़ा।\nमहाभारत का लेखन कार्य 10 दिनों तक चला।\nअनंत चतुर्दशी को लेखन कार्य संपन्न हुआ।\nवेदव्यास ने देखा कि, गणपती का शारीरिक तापमान फिर भी बहुत बढ़ा हुआ है और उनके शरीर पर लेप की गई मिट्टी सूखकर झड़ रही है, तो वेदव्यास ने उन्हें पानी में डाल दिया।\nइन दस दिनों में वेदव्यास ने गणेश जी को खाने के लिए विभिन्न पदार्थ दिए।\nतभी से गणपती बैठाने की प्रथा चल पड़ी।\nइन दस दिनों में इसीलिए गणेश जी को पसंद विभिन्न भोजन अर्पित किए जाते हैं।।\n\n?गणपती बाप्पा मोरया?', b'0', NULL, 'Ganesh Chaturath Celebration', 'other'),
(26, '2017-08-25 13:35:09', 'LKS in the course of its public welfare journey, spread its social services to rural areas as well.\r\n\r\nThe medical facility at the chakkarpur centre offers almost all specialties OPD like ENT, Gynaecologist, Pediatrics, Orthopedics, Dermatology, General Physician, Dental, Eye Care OPD, Homeopathy, etc. It also provides laboratory testing procedures, X-Ray diagnosis and has a minor OT for carrying out minor surgical and other procedures.\r\n\r\nI went there for orthopedic problem and it was nice experience. Charges are very nominal here.\r\n\r\nFees: First time they made card for patient : 60 /-\r\nSecond time onwards only 40/- got charged.\r\nX-ray charges : 180/-\r\n\r\nAddress: Sahara Mall, Mehrauli-Gurgaon Rd, A Block, Chakkarpur, Sector 28, Gurugram, Haryana 122001\r\n\r\nPhone: 0124 235 0790', b'0', NULL, 'Gurgaon Hospital - lok kalyan samiti chakkarpur', 'hospital'),
(27, '2017-08-26 02:04:25', 'बर्तनों की आवाज़ देर रात तक आ रही थी...\nरसोई का नल चल रहा है\nमाँ रसोई में है....\n\nतीनों बहुऐं अपने-अपने कमरे में सोने जा चुकी....\nमाँ रसोई में है...\n\nमाँ का काम बकाया रह गया था\nपर काम तो सबका था\nपर माँ तो अब भी सबका काम अपना ही मानती है....\n\nदूध गर्म करके\nठण्ड़ा करके\nजावण देना है...\nताकि सुबह बेटों को ताजा दही मिल सके...\n\nसिंक में रखे बर्तन माँ को कचोटते हैं\nचाहे तारीख बदल जाये, सिंक साफ होना चाहिये....\n\nबर्तनों की आवाज़ से \nबहू-बेटों की नींद खराब हो रही है\nबड़ी बहू ने बड़े बेटे से कहा \n\"तुम्हारी माँ को नींद नहीं आती क्या? ना खुद सोती है और ना ही हमें सोने देती है\"\n\nमंझली ने मंझले बेटे से कहा \" अब देखना सुबह चार बजे फिर खटर-पटर चालू हो जायेगी, तुम्हारी माँ को चैन नहीं है क्या?\"\n\nछोटी ने छोटे बेटे से कहा \" प्लीज़ जाकर ये ढ़ोंग बन्द करवाओ कि रात को सिंक खाली रहना चाहिये\"\n\nमाँ अब तक बर्तन माँज चुकी थी ।\nझुकी कमर\nकठोर हथेलियां\nलटकी सी त्वचा\nजोड़ों में तकलीफ\nआँख में पका मोतियाबिन्द\nमाथे पर टपकता पसीना\nपैरों में उम्र की लड़खडाहट\nमगर....\nदूध का गर्म पतीला\nवो आज भी अपने पल्लू  से उठा लेती है\nऔर...\nउसकी अंगुलियां जलती नहीं है, क्यों कि\nवो माँ है ।\n\nदूध ठण्ड़ा हो चुका...\nजावण भी लग चुका...\nघड़ी की सुईयां थक गई...\nमगर...\nमाँ ने फ्रिज में से भिण्ड़ी निकाल ली\nऔर...\nकाटने लगी\nउसको नींद नहीं आती है, क्यों कि\nवो माँ है ।\n\nकभी-कभी सोचता हूं कि माँ जैसे विषय पर लिखना, बोलना, बनाना, बताना, जताना क़ानूनन  बन्द होना चाहिये....\nक्यों कि यह विषय निर्विवाद है\nक्यों कि यह रिश्ता स्वयं कसौटी है ।\n\nरात के बारह बजे सुबह की भिण्ड़ी कट गई...\nअचानक याद आया कि गोली तो ली ही नहीं...\nबिस्तर पर तकिये के नीचे रखी थैली निकाली..\nमूनलाईट की रोशनी में \nगोली के रंग के हिसाब से मुंह में रखी और \nगटक कर पानी पी लिया...\n\nबगल में एक नींद ले चुके बाबूजी ने कहा \" आ गई\"\n\"हाँ, आज तो कोई काम ही नहीं था\" \nमाँ ने जवाब दिया ।\n\nऔर... \nलेट गई, कल की चिन्ता में\nपता नहीं नींद आती होगी या नहीं पर सुबह वो थकान रहित होती हैं, क्यों कि\nवो माँ है ।\n\nसुबह का अलार्म बाद में बजता है\nमाँ की नींद पहले खुलती है \nयाद नहीं कि कभी भरी सर्दियों में भी\nमाँ गर्म पानी से नहायी हो\nउन्हे सर्दी नहीं लगती, क्यों कि\nवो माँ है ।\n\nअखबार पढ़ती नहीं, मगर उठा कर लाती है\nचाय पीती नहीं, मगर बना कर लाती है\nजल्दी खाना खाती नहीं, मगर बना देती है....\nक्यों कि वो माँ है ।\n\nमाँ पर बात जीवनभर खत्म ना होगी..\nशेष अगली बार...\n\nऔर हाँ, अगर पढ़ते पढ़ते आँखों में आँसु आ जाये तो कृपया खुलकर रोइये और आंसू पोछ कर एक बार अपनी माँ को जादू की झप्पी जरूर दीजिये,\nक्योंकि वो किसी और की नही आपकी ही माँ है?? माँ।', b'0', NULL, 'Maa - Ek Kavita | Maa - The Poem', 'other'),
(28, '2017-08-26 02:11:22', 'Technical Questions mainly asked in Amazon interview for JAVA profile :\r\n\r\nArray Related :\r\n1. Write a program to remove duplicates from array of prime numbers.\r\n2. Given an array which contains N-2 numbers in unsorted order, find two missing numbers?\r\n3. Write a program to find top 10 elements on an array of integers.\r\n4. How to rotate an array by K?\r\n\r\nTree Related:\r\n1. Write a program to check if a binary tree is BST or not?\r\n2. Write a program to return nearest elements from a binary search tree for input element.\r\n\r\nLinked List:\r\n1. How to find if linked list has a loop?\r\n2. How to find 3rd element from end in a linked list in one pass\r\n3. Function to check if a singly linked list is palindrome\r\n\r\nOthers:\r\nWrite code to implement an LRU cache?\r\n\r\n\r\nPlease share your feedback or ask questions through comments. So that I can help you to crack the interview.', b'0', NULL, 'amazon interview questions - java developer | JAVA profile', 'study');

-- --------------------------------------------------------

--
-- Table structure for table `posts_tags`
--

CREATE TABLE `posts_tags` (
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts_tags`
--

INSERT INTO `posts_tags` (`post_id`, `tag_id`) VALUES
(1, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(4, 11),
(4, 12),
(4, 13),
(4, 14),
(7, 21),
(7, 22),
(7, 23),
(7, 24),
(7, 25),
(6, 18),
(6, 20),
(6, 19),
(5, 15),
(5, 17),
(5, 16),
(8, 26),
(8, 27),
(8, 28),
(9, 29),
(9, 30),
(9, 31),
(9, 32),
(13, 50),
(14, 51),
(15, 52),
(15, 53),
(15, 54),
(17, 6),
(17, 7),
(19, 59),
(19, 60),
(20, 61),
(20, 62),
(24, 65),
(24, 64),
(24, 66),
(25, 68),
(25, 69),
(25, 70),
(25, 71),
(26, 72),
(26, 73),
(26, 74),
(26, 75),
(26, 76),
(27, 77),
(27, 78),
(27, 79),
(27, 80),
(27, 81),
(27, 82),
(27, 83),
(28, 84),
(28, 85),
(28, 86),
(28, 87),
(28, 88);

-- --------------------------------------------------------

--
-- Table structure for table `post_ratings`
--

CREATE TABLE `post_ratings` (
  `Id` bigint(20) NOT NULL,
  `value` smallint(6) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_ratings`
--

INSERT INTO `post_ratings` (`Id`, `value`, `user_id`, `post_id`) VALUES
(1, 1, 2, 8),
(2, 1, 2, 6),
(3, 1, 2, 5),
(4, 1, 2, 4),
(5, 1, 2, 3),
(6, 1, 2, 2),
(7, 1, 2, 1),
(8, 1, 4, 15),
(9, 1, 4, 14),
(10, 1, 4, 13),
(11, 1, 4, 9),
(12, 1, 4, 8),
(13, 1, 4, 7),
(14, 1, 4, 5),
(15, 1, 4, 6),
(16, 1, 4, 17),
(17, 1, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `Id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`Id`, `name`) VALUES
(2, 'ROLE_ADMIN'),
(1, 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `Id` bigint(20) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`Id`, `name`) VALUES
(46, '44'),
(40, 'admin'),
(84, 'amazon'),
(85, 'amazon interview'),
(86, 'amazon interview questions'),
(87, 'amazon java interview'),
(57, 'astrology'),
(62, 'Average work years'),
(45, 'bb'),
(15, 'Bigbasket'),
(17, 'Bigbasket offer'),
(16, 'Bigbasket referral'),
(54, 'cashback'),
(76, 'chakkarpur hospital'),
(48, 'code'),
(50, 'Coupondunia cashback'),
(47, 'ff'),
(10, 'free ride'),
(68, 'Ganesh Chaturathi'),
(71, 'Ganesha'),
(18, 'Goibibo'),
(20, 'Goibibo offer'),
(19, 'Goibibo referral'),
(74, 'Gurgaon Hospital'),
(41, 'hellooooo'),
(36, 'hhhh'),
(44, 'hi'),
(33, 'hide'),
(34, 'hide1'),
(35, 'hide111'),
(42, 'hii'),
(58, 'hindi'),
(75, 'hospital'),
(29, 'Jugnoo'),
(31, 'Jugnoo coupon code'),
(30, 'Jugnoo offer'),
(32, 'Jugnoo referral'),
(39, 'kk'),
(37, 'kkkkk'),
(43, 'kkkkkaaa'),
(73, 'LKS'),
(72, 'lok kalyan samiti chakkarpur'),
(70, 'Lord Ganesh'),
(77, 'maa'),
(79, 'maa poem'),
(21, 'Make My Trip'),
(23, 'Make My Trip offer'),
(22, 'Make My Trip referral'),
(24, 'MMT'),
(25, 'MMT coupon'),
(11, 'mobikwik'),
(13, 'mobikwik coupon code'),
(12, 'mobikwik offer'),
(14, 'mobikwik referral code'),
(78, 'mom'),
(55, 'NDWKLNKL'),
(49, 'nlkjoj'),
(1, 'ola'),
(65, 'other'),
(69, 'others'),
(28, 'OYO coupon code'),
(26, 'OYO Rooms'),
(27, 'OYO Rooms referral'),
(51, 'PhonePay'),
(52, 'Phonepe'),
(80, 'poem'),
(53, 'referral'),
(61, 'Retention'),
(64, 'short story'),
(67, 'short strory'),
(56, 'Sleeping tips'),
(66, 'specs'),
(63, 'specs short story'),
(38, 'string'),
(88, 'study'),
(6, 'uber'),
(9, 'uber discount'),
(8, 'uber offer'),
(7, 'uber referral code'),
(59, 'Ubereats'),
(60, 'ubereats promocode'),
(82, 'whatsapp hindi message'),
(81, 'whatsapp hindi poem'),
(83, 'whatsapp msg'),
(2, 'Yumist'),
(4, 'Yumist coupon code'),
(3, 'Yumist offer'),
(5, 'Yumist Referral');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Id` bigint(20) NOT NULL,
  `aboutText` varchar(1000) DEFAULT NULL,
  `bigAvatarLink` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(80) NOT NULL,
  `registrationDate` datetime NOT NULL,
  `smallAvatarLink` varchar(255) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `websiteLink` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Id`, `aboutText`, `bigAvatarLink`, `email`, `enabled`, `password`, `registrationDate`, `smallAvatarLink`, `username`, `websiteLink`) VALUES
(1, NULL, NULL, 'krati.mittal36@gmail.com', b'1', '$2a$10$SEft8WfZHAz3Dvb7ODelc.i6yQH39mK9yOr8pk2Ht1XgnzqI3dBG6', '2015-01-01 00:00:01', NULL, 'admin', NULL),
(2, NULL, NULL, 'arjun.01234@gmail.com', b'1', '$2a$10$akSwwYCFG1eOBDr0DSrr7.D5GNzpYQzHiZe8r./ltBxhDk6SjEVLa', '2017-07-26 19:50:03', NULL, 'arjun', NULL),
(3, NULL, NULL, 'ajeet.singh@mytrusteddr.com', b'1', '$2a$10$UqbTVF.NUIfS8WFrsw6J2OWXjfG47BfmZ54MSTBAwPTsxZQ040DKK', '2017-08-18 03:13:20', NULL, 'Ajeet', NULL),
(4, NULL, NULL, 'arjun.agarwal@mytrusteddr.com', b'1', '$2a$10$yUFya8EncFxXPnYHjoIcIelR5mt63eCi/S5k6Oo.mwWRfqtBtHN4G', '2017-08-18 03:16:28', NULL, 'Arjun Agarwal', NULL),
(5, NULL, NULL, 'shobhitmittal96@gmail.com', b'1', '$2a$10$KiZt4N9VBHSHnqetlUi5F.tnJqpO6g6el4uatB6VdTLDDo3bCwd9y', '2017-08-20 05:21:30', NULL, 'Shobhit', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_29ieo90ejocayoeb49npnud06` (`parent_id`);

--
-- Indexes for table `comment_ratings`
--
ALTER TABLE `comment_ratings`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UK_ajnq68hlfg61859csx9w4cpf3` (`comment_id`,`user_id`),
  ADD KEY `FK_onw2y4m1c1vaqw5du9xmqnfti` (`user_id`);

--
-- Indexes for table `persistent_logins`
--
ALTER TABLE `persistent_logins`
  ADD PRIMARY KEY (`series`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `post_ratings`
--
ALTER TABLE `post_ratings`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UK_lnj3k5iveutdd7pjjoxpgqchi` (`post_id`,`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UK_ofx66keruapi6vyqpv6f2or37` (`name`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UK_t48xdq560gs3gap9g7jg36kgc` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`),
  ADD UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comment_ratings`
--
ALTER TABLE `comment_ratings`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `post_ratings`
--
ALTER TABLE `post_ratings`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `FK_29ieo90ejocayoeb49npnud06` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`Id`);

--
-- Constraints for table `comment_ratings`
--
ALTER TABLE `comment_ratings`
  ADD CONSTRAINT `FK_8i5n7vq6vqlnp4p1outbfb5p0` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`Id`),
  ADD CONSTRAINT `FK_onw2y4m1c1vaqw5du9xmqnfti` FOREIGN KEY (`user_id`) REFERENCES `users` (`Id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
