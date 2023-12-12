CREATE DATABASE  IF NOT EXISTS `sa_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `sa_test`;
-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: sa_test
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_manager`
--

DROP TABLE IF EXISTS `tbl_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_manager` (
  `manager_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_manager`
--

LOCK TABLES `tbl_manager` WRITE;
/*!40000 ALTER TABLE `tbl_manager` DISABLE KEYS */;
INSERT INTO `tbl_manager` VALUES (1,'root管理','root@gmail.com','01020102a');
/*!40000 ALTER TABLE `tbl_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_member` (
  `member_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `modified` datetime NOT NULL,
  `created` datetime NOT NULL,
  `points` int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_member`
--

LOCK TABLES `tbl_member` WRITE;
/*!40000 ALTER TABLE `tbl_member` DISABLE KEYS */;
INSERT INTO `tbl_member` VALUES (4,'test0102','0102@gmail.com','01020102a','2023-01-02 11:46:59','2023-01-02 11:46:59',0),(5,'test0105','0105@gmail.com','01050105a','2023-01-05 16:04:23','2023-01-05 16:04:23',0),(7,'郎文伶','0520@gmail.com','13579246810ya','2023-01-05 21:47:09','2023-01-05 21:47:09',0),(8,'吳宇哲','john@gmail.com','a123321123','2023-01-05 22:05:25','2023-01-05 22:05:25',0);
/*!40000 ALTER TABLE `tbl_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_order` (
  `order_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `pay_method` varchar(16) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (7,'郎文伶','哈哈','0912-345-678','1111','2023-01-05 21:52:15','2023-01-05 21:52:15'),(8,'吳宇哲','新北市土城區','0933-908-333','3333','2023-01-05 22:04:26','2023-01-05 22:04:26');
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_orderitem`
--

DROP TABLE IF EXISTS `tbl_orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_orderitem` (
  `order_product_id` int(100) NOT NULL AUTO_INCREMENT,
  `order_id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `subtotal` int(100) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_orderitem`
--

LOCK TABLES `tbl_orderitem` WRITE;
/*!40000 ALTER TABLE `tbl_orderitem` DISABLE KEYS */;
INSERT INTO `tbl_orderitem` VALUES (1,1,1,159,3,477),(2,1,2,125,2,250),(12,2,2,125,1,125),(13,2,3,85,10,850),(14,3,1,159,99999,15899841),(15,4,4,70,5,350),(16,5,3,85,20,1700),(17,5,4,70,11,770),(18,7,2,125,1,125),(19,7,6,179,1,179),(20,7,7,620,1,620),(21,7,10,299,1,299),(22,8,2,125,1,125),(23,8,1,159,1,159);
/*!40000 ALTER TABLE `tbl_orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product`
--

DROP TABLE IF EXISTS `tbl_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_product` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `stock` int(100) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product`
--

LOCK TABLES `tbl_product` WRITE;
/*!40000 ALTER TABLE `tbl_product` DISABLE KEYS */;
INSERT INTO `tbl_product` VALUES (1,'發燒','小林退熱貼(未滅菌)成人用',159,'fever.jpg','貼上後立即冷卻，效果可持續8小時（冷卻持續時間會因環境狀況及溫度有所影響）\r\n貼片內含大量水分可以吸收熱度，將熱氣蒸散，降低肌膚溫度2度(※)，可持續效果\r\n※由日本小林製藥所做的測試\r\n※只要貼片仍然濕潤，即使感覺到貼片溫度變了，冷卻效果不受影響，繼續持久作用\r\n添加涼感顆粒。逐漸釋放出冰涼感覺\r\n採用安全性高的成分，皮膚不易過敏\r\n本產品專為成人設計，尺寸適合額頭大小，能緊密貼合肌膚、不易脫落',7000),(2,'痠痛','撒隆巴斯 直貼腰背用(4入/盒)',125,'musclesore.jpg','隨身暖男 給你溫暖的呵護\r\n持續6小時 提供40℃ 溫熱效果 \r\n發熱體2個 熱度擴散更平均\r\n安心溫度設計 可直接貼於皮膚上',7000),(3,'外傷','3M Nexcare舒適繃(綜合型) 30片入',85,'bandage.jpg','柔軟的天鵝絨材質製成，透氣舒適，適合全家人使用。\r\n30片包 (1.5 x 5.7公分 12 片, 1.9 x 7.5公分 12片, 2.5 x 7.5公分 6 片)',7000),(4,'外傷','CSD中衛 酒精棉片 (100入/盒) ',70,'alcoholpad.jpg','中衡酒精棉片內含75%酒精溶液,使用於注射、針灸、血糖檢                                                              驗·等醫療行為前之局部皮膚清潔與消毒 ; 亦可使用於器械及儀表板擦拭,以降低細菌感染之機率。\r\n使用方法 : 取出酒精棉片直接擦拭於皮膚、手部或器械即可達到清潔、殺菌之效果。請避免用於眼睛、嘴唇等黏膜部位。',7000),(5,'外傷','日炎 未滅菌紗布墊3x3吋(10片/包)',17,'pad.jpg','商品規格:\r\n• 成  份：100%純棉\r\n• 特  性：無螢光、無漿料、完全脫棉，展現純天然棉的吸收力與絕佳的透氣性。\r\n• 用  法：覆蓋傷口\r\n• 效  能：吸收傷口分泌物\r\n• 禁  忌：禁止重複使用。\r\n• 保存方法:：陰涼、乾燥環境。\r\n注意事項：\r\n1. 傷口應常保持乾淨，如沾汙或浸濕，建議您立即更換。\r\n2. 紗布墊未經滅菌處理。若有特殊需要請自行滅菌或另購買已滅菌產品。',7000),(6,'保健','【好立善】維他命C口含錠（60錠/盒）',179,'vitaminC.jpg','適用對象與族群：12歲以上\r\n風味：無\r\n成分：D-山梨醇、維生素C、硬脂酸鎂、柳橙香料、阿斯巴甜(甜味劑)、醋磺內酯鉀(甜味劑)。\r\n規格：60錠/盒\r\n使用方法：一日請勿超過4錠，口含、咀嚼或配水吞食，空腹時吸收較佳。\r\n保存期限：3年\r\n保存方式：請存放於陰涼乾燥處、避免日光直射與受潮。\r\n產地：台灣',7000),(7,'保健','【安怡】長青高鈣奶粉（1.5kg）',620,'milk.jpg','對象與族群：男、女、成年、銀髮族\r\n類型：粉劑，不可管灌\r\n．風味：原味\r\n．成分：全脂奶粉、大豆卵磷脂、維生素C、維生素D3及維生素A等\r\n．容量：1.5kg\r\n．使用方法：沖泡\r\n．保存期限：3年\r\n．原產地（國）：台灣',7000),(8,'外傷','【Hartmann赫曼】抗敏極透氣溫和膠帶／2.5cm*5m',80,'tape.jpg','商品規格：2.5cmx5m/盒\r\n產地：西班牙\r\n注意事項:\r\n1.請勿重複使用。\r\n2.並非所有使用者皆不會產生過敏現象，使用本產品若有不適，請勿繼續使用並諮詢醫師。',7000),(9,'扭傷','【KOWA萬特力】肢體護具／手腕（M）',499,'wrist.jpg','．入數：護腕一入\r\n．材質：尼龍、聚氨酯\r\n．測量部位：尺寸M手腕圍：15-17 cm．包裝尺寸：寬11 x 厚2.7 x 長18 cm\r\n．重量：39 g\r\n．保存期限：5年\r\n．產地：日本',7000),(10,'防疫','【LAITEST萊潔】醫療防護口罩／成人 雪花白（50入／盒',299,'mask.jpg','外部材質：外層-防潑水不織布 | 中層-靜電熔噴過濾不織布 | 內層-柔膚不織布\r\n款式：三層過濾耳掛式口罩\r\n尺寸：17.5 x 9.5cm(±0.5cm 成人用)\r\n顏色：雪花白 \r\n入數：50片入／盒\r\n製造生產：台灣製造\r\n\r\n注意事項\r\n．本產品為一次性使用，使用完畢請丟棄，勿重覆使用。\r\n．口罩如有發現破損，切勿繼續使用，請立即更換。\r\n．使用過程中如需取下，請避免口罩外部碰觸口鼻導致感染。\r\n．戴上口罩後，請避免接近火源處，可能導致材質燃燒或變形。\r\n．產品請存放於陰涼乾燥處，請勿讓陽光直射。',7000),(11,'扭傷','【撒隆巴斯】肢體護具／膝蓋用（S）',680,'knee.jpg','• 纖維成分：\r\n【前面部分材質】尼龍65%，聚氨酯35%\r\n【後方網布質】尼龍81%，聚氨酯19%\r\n【支撐構造】尼龍100%\r\n【橡膠(上下口)】聚酯纖維70%，聚氨酯30%\r\n• 入數：單入\r\n• 適戴範圍：膝蓋周圍\r\n• 尺寸規格：S：30-34公分\r\n• 使用方法：\r\n• 1. 請將「Salonpas」的標籤朝向自己。\r\n2.將護具穿過腳部。如同穿襪子般用手掌將護具往上拉。\r\n3.請調整護具上的鈦合金支撐構造，維持固定在膝蓋骨上下周邊的位置。\r\n4.將護具拉平，使之服貼。',7000),(12,'鼻塞','【珮夫人】鼻爽貼迪士尼聯名特別版（7片入）X3盒',1047,'nosepatch.jpg','成分：天然尤加利、百里香、山松及檸檬精油。\r\n使用方法：外貼於胸口位置的衣服上，無須接觸皮膚。每片有效8小時。建議於睡前開始使用，效果更佳\r\n保存方法：儲存於室溫(攝氏25度)及陰涼乾燥處。避免陽光直射，否則精油味道易受影響。\r\n入數：5片+2片/盒\r\n保存期限：3年\r\n有效日期：標示於外盒\r\n製造生產：義大利製造',7000),(13,'防疫','【戴維爵士】長效抗菌護膜液（50ml）',179,'spray.jpg','．品名：長效抗菌護膜液\r\n．風味：抗菌\r\n．成分：UC-B、純水、辛乙二醇、苯甲酸鈉\r\n．容量：50ml/罐\r\n．使用方法:詳見包裝說明。\r\n．保存期限 : 36個月\r\n．有效日期：如包裝上所示\r\n．原產地(國)：台灣',7000);
/*!40000 ALTER TABLE `tbl_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sa_test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-06  7:49:58
