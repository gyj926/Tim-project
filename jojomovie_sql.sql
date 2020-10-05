-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: moviedb
-- ------------------------------------------------------
-- Server version	5.7.30-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attach`
--

DROP TABLE IF EXISTS `attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attach` (
  `uuid` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploadpath` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `movie_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attach`
--

LOCK TABLES `attach` WRITE;
/*!40000 ALTER TABLE `attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachposter`
--

DROP TABLE IF EXISTS `attachposter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachposter` (
  `uuid` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uploadpath` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bno` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachposter`
--

LOCK TABLES `attachposter` WRITE;
/*!40000 ALTER TABLE `attachposter` DISABLE KEYS */;
INSERT INTO `attachposter` VALUES ('0ab9d3b5-2075-4a47-b653-7723f74bd518','BB95AB15410346DCACF6EC8697B731A9.jpg','C:/Users/admin/Desktop/jojomovie/jojomovie/src/main/webapp/upload/2020/09/16','I',2),('18f9ca9c-b455-4680-929f-23e3d14e4154','이미지 006.jpg','C:/Users/admin/Desktop/jojomovie/jojomovie/src/main/webapp/upload/2020/09/16','I',7),('6569e1a7-6967-4c20-8278-5b49aaef7b5e','111111.jpg','C:/Users/admin/Desktop/jojomovie/jojomovie/src/main/webapp/upload/2020/09/16','I',1),('f8b409aa-0c7e-402e-9bec-0773c87eaf23','캡처8.PNG','C:/devtools/workspace-sts/jojomovie/src/main/webapp/upload/2020/09/16','I',8);
/*!40000 ALTER TABLE `attachposter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmt`
--

DROP TABLE IF EXISTS `cmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cmt` (
  `cmt_number` int(11) NOT NULL,
  `user_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cmt_star` int(11) DEFAULT NULL COMMENT '평점',
  `cmt_content` mediumtext COLLATE utf8_unicode_ci COMMENT '내용',
  `movie_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '영화제목',
  `cmt_reg_date` datetime DEFAULT NULL,
  `movie_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cmt_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmt`
--

LOCK TABLES `cmt` WRITE;
/*!40000 ALTER TABLE `cmt` DISABLE KEYS */;
INSERT INTO `cmt` VALUES (1,'babi2959',10,'좋은 영화 오랜만에 감동이 눈물이 가족과 함께하는 소중한 추억','1','2020-09-11 16:52:07','다만 악에서 구하소서'),(2,'babi2959',5,'킬링 타임으로 좋은 영화 정말 딱.','2','2020-09-11 16:52:07','반교'),(3,'babi2959',6,'맛있어 보인다... 먹방 영화였다면 더 흥행했을 텐데','3','2020-09-11 16:52:07','시크릿 가든'),(4,'babi2959',7,'생각외로 괜찮은 소재...괜찬게 풀어 나간 스토리','4','2020-09-11 16:52:07','오케이 마담'),(5,'babi2959',8,'대작은 아니지만 수작이다.... 이런 영화를 볼 수 있어서 간만에 좋았다','5','2020-09-11 16:52:07','존윅'),(6,'babi2959',9,'역시..! 실망시키지 않는 감독! 보면 볼수록, 회차를 더해갈수록 소름이 끼친다.','6','2020-09-11 16:52:07','해리 포터와 마법사의 돌'),(7,'babi2959',10,'우리 나라에는 이런 천재가 없나? 탄식만 나올뿐이다. 어서 빨리 우리 나라도 영화 산업에 힘을 실으면 좋겠다.','7','2020-09-11 16:52:07','해리 포터와 비밀의 방'),(8,'eiwuj1',1,'영화를 본 내 시간이 아깝다 퉷','8','2020-09-11 16:52:07','해리 포터와 아즈카반의 죄수'),(9,'eiwuj1',2,'이 영화...도대체 무슨 정신으로 만든걸까? 감독이 약빨고 만든건가?','9','2020-09-11 16:52:07','해리 포터와 불의 잔'),(10,'eiwuj1',3,'12000원 주고 잠 잘 자고 나왔습니다^^ ','10','2020-09-11 16:52:07','해리 포터와 불사조 기사단'),(11,'eiwuj1',4,'하아아아 명작이네요 저만 보기 싫어서 주위 사람에게 권합니다. 저만 당할순 없죠','11','2020-09-11 16:52:07','해리 포터와 혼혈 왕자'),(12,'eiwuj1',5,'5점...전문가 평점을 신뢰하지 않는 편인데 이건 참 적절하게도 평점을 줬다 싶다','12','2020-09-11 16:52:07','해리 포터와 죽음의 성물 - 1부'),(13,'firigh20',6,'흠 괜찮은 수준. 기대보단 못 미치지만 그럭저럭?','13','2020-09-11 16:52:07','해리 포터와 죽음의 성물 - 2부'),(14,'firigh20',7,'이벤트 포인트 준다고 해서 평점 매깁니다^^ 꼭 포인트 주세요','14','2020-09-11 16:52:07','테넷'),(15,'firigh20',8,'나는 점수에 후한 편인 걸 감안하고 봐주세요 저는 8점 정도 줍니다. 무엇보다 영상미가 죽여주거든요 액션은 특히 감칠맛 납니다. 액션 좋아하시는 분들은 추천','1','2020-09-11 16:52:07','다만 악에서 구하소서'),(16,'firigh20',9,'와...이 사나이 눈물 잘 흘리지 않는 남자인데...! 눈물에 영화관이 잠겨부렸어....','2','2020-09-11 16:52:07','반교'),(17,'firigh20',10,'10점줍니다. 그러나 저는 아직 이 영화를 이해하지 못했습니다. 저라는 그릇이 담기엔 벅찬...영화네요','3','2020-09-11 16:52:07','시크릿 가든'),(18,'firigh20',1,'개똥같은 영화','4','2020-09-11 16:52:07','오케이 마담'),(19,'hongv',2,'퉷','5','2020-09-11 16:52:07','존윅'),(20,'hongv',3,'우웩','6','2020-09-11 16:52:07','해리 포터와 마법사의 돌'),(21,'hongv',4,'내 취향아님','7','2020-09-11 16:52:07','해리 포터와 비밀의 방'),(22,'hongv',5,'흠','8','2020-09-11 16:52:07','해리 포터와 아즈카반의 죄수'),(23,'hongv',6,'음?','9','2020-09-11 16:52:07','해리 포터와 불의 잔'),(24,'hongv',7,'오!','10','2020-09-11 16:52:07','해리 포터와 불사조 기사단'),(25,'phe90',8,'괜찮네','11','2020-09-11 16:52:07','해리 포터와 혼혈 왕자'),(26,'phe90',9,'좋다','12','2020-09-11 16:52:07','해리 포터와 죽음의 성물 - 1부'),(27,'phe90',10,'감동','13','2020-09-11 16:52:07','해리 포터와 죽음의 성물 - 2부'),(28,'phe90',1,'핵별로','14','2020-09-11 16:52:07','테넷'),(29,'phe90',2,'진짜 쓰레기','1','2020-09-11 16:52:07','다만 악에서 구하소서'),(30,'sssn34',3,'보지마세요 여러분들!!!!!!!!!!!!!','2','2020-09-11 16:52:07','반교'),(31,'sssn34',4,'안돼요 보지마요','3','2020-09-11 16:52:07','시크릿 가든'),(32,'sssn34',5,'돈 쓰고 싶은 사람 보세요','4','2020-09-11 16:52:07','오케이 마담'),(33,'sssn34',6,'어우 이건 나름?','5','2020-09-11 16:52:07','존윅'),(34,'sssn34',7,'어우어우 괜찮ㅇ느데?','6','2020-09-11 16:52:07','해리 포터와 마법사의 돌'),(35,'ohseH',8,'딱 8점 짜리 영화임','7','2020-09-11 16:52:07','해리 포터와 비밀의 방'),(36,'ohseH',9,'명작인데?','8','2020-09-11 16:52:07','해리 포터와 아즈카반의 죄수'),(37,'ohseH',10,'대작인데?','9','2020-09-11 16:52:07','해리 포터와 불의 잔'),(38,'gong',1,'님들 이거 보지마삼','10','2020-09-11 16:52:07','해리 포터와 불사조 기사단'),(39,'gong',2,'이런 개 쓰레기 같은 영화가 있나?','11','2020-09-11 16:52:07','해리 포터와 혼혈 왕자'),(40,'gong',3,'영화사는 뭐하냐 이런 영화 올리고 책임져라','12','2020-09-11 16:52:07','해리 포터와 죽음의 성물 - 1부'),(41,'exo194',4,'영화가 뭐 같아요','13','2020-09-11 16:52:07','해리 포터와 죽음의 성물 - 2부'),(42,'exo194',5,'제가 발로 만들어도 이 정돈느?','14','2020-09-11 16:52:07','테넷'),(43,'exo194',6,'하 이제 좀 볼만한 영화가 나온듯','1','2020-09-11 16:52:07','다만 악에서 구하소서'),(44,'exo194',7,'아니 이게 뭡니까 좀?','2','2020-09-11 16:52:07','반교'),(45,'eiwuj1',8,'위 댓글들은 테스트를 위한 댓글이므로 현실 영화와 평점이 확연히 다를 수 있습니다.','3','2020-09-11 16:52:07','시크릿 가든'),(46,'eiwuj1',9,'어.........영화 끝나고 아무 생각도 안들었어요 많은 생각이 들게하는 옇와','4','2020-09-11 16:52:07','오케이 마담'),(47,'eiwuj1',10,'명작 대작 오스카상으로','5','2020-09-11 16:52:07','존윅'),(48,'sssn34',1,'어휴','6','2020-09-11 16:52:07','해리 포터와 마법사의 돌'),(49,'sssn34',2,'이런데에 투자를 해준다고?','7','2020-09-11 16:52:07','해리 포터와 비밀의 방'),(50,'sssn34',3,'김수현 리얼에 비견된다','8','2020-09-11 16:52:07','해리 포터와 아즈카반의 죄수'),(51,'psj94',4,'어우 진짜 이감독 또 그러네','9','2020-09-11 16:52:07','해리 포터와 불의 잔'),(52,'psj94',5,'시리즈 시르지 애국가도 4절까지만 있ㄴ느데','10','2020-09-11 16:52:07','해리 포터와 불사조 기사단'),(53,'psj94',6,'어유 볼만함','11','2020-09-11 16:52:07','해리 포터와 혼혈 왕자'),(54,'ohseH',7,'흠 좀 그렇네','12','2020-09-11 16:52:07','해리 포터와 죽음의 성물 - 1부'),(55,'admin',10,'좋은 영화입니다^^','10','2020-09-16 11:12:24','해리 포터와 불사조 기사단'),(56,'choi111',1,'뭐 같습니다','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(57,'choi111',2,'꽃 같네요','2','2020-09-16 11:12:24','반교'),(58,'choi111',3,'별별 같잖은','3','2020-09-16 11:12:24','시크릿 가든'),(59,'choi111',4,'어휴','4','2020-09-16 11:12:24','오케이 마담'),(60,'choi111',5,'이런걸 영화라고','5','2020-09-16 11:12:24','존윅'),(61,'choi111',6,'나름 괜찮','6','2020-09-16 11:12:24','해리 포터와 마법사의 돌'),(62,'choi111',7,'ㅇㅇ굿','7','2020-09-16 11:12:24','해리 포터와 비밀의 방'),(63,'choi111',8,'명작','8','2020-09-16 11:12:24','해리 포터와 아즈카반의 죄수'),(64,'choi111',9,'어 좋음','9','2020-09-16 11:12:24','해리 포터와 불의 잔'),(65,'choi111',10,'개꿀잼','10','2020-09-16 11:12:24','해리 포터와 불사조 기사단'),(66,'dbal2949',1,'아우 지루함','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(67,'dbal2949',2,'진짜 영화 업체는 무슨생각','2','2020-09-16 11:12:24','반교'),(68,'dbal2949',3,'돈이 남아도나','3','2020-09-16 11:12:24','시크릿 가든'),(69,'dbal2949',4,'어휴 진짜 욕도 안나와','4','2020-09-16 11:12:24','오케이 마담'),(70,'dbal2949',5,'질린다','5','2020-09-16 11:12:24','존윅'),(71,'dbal2949',6,'흐음','6','2020-09-16 11:12:24','해리 포터와 마법사의 돌'),(72,'dbal2949',7,'볼만함','7','2020-09-16 11:12:24','해리 포터와 비밀의 방'),(73,'dbal2949',8,'즐기삼','8','2020-09-16 11:12:24','해리 포터와 아즈카반의 죄수'),(74,'dbal2949',9,'재밌음','9','2020-09-16 11:12:24','해리 포터와 불의 잔'),(75,'dbal2949',10,'꿀잼인듯','10','2020-09-16 11:12:24','해리 포터와 불사조 기사단'),(76,'dongbang',1,'다른의미로 희대의 역작','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(77,'dongbang',2,'어휴','2','2020-09-16 11:12:24','반교'),(78,'dongbang',3,'무서워라','3','2020-09-16 11:12:24','시크릿 가든'),(79,'dongbang',4,'감독 이름 외워둔다','4','2020-09-16 11:12:24','오케이 마담'),(80,'dongbang',5,'어휴','5','2020-09-16 11:12:24','존윅'),(81,'dongbang',6,'나는 이 감독 거른다','6','2020-09-16 11:12:24','해리 포터와 마법사의 돌'),(82,'dongbang',7,'이 감독 주의 깊게 본다','7','2020-09-16 11:12:24','해리 포터와 비밀의 방'),(83,'dongbang',8,'이 감독 맘에 든다','8','2020-09-16 11:12:24','해리 포터와 아즈카반의 죄수'),(84,'dongbang',9,'감독님 사랑해요','9','2020-09-16 11:12:24','해리 포터와 불의 잔'),(85,'dongbang',10,'이런 천재가 있다니','10','2020-09-16 11:12:24','해리 포터와 불사조 기사단'),(86,'nct299',1,'어휴','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(87,'nct299',2,'어휴','2','2020-09-16 11:12:24','반교'),(88,'nct299',3,'에휴','3','2020-09-16 11:12:24','시크릿 가든'),(89,'nct299',4,'저런','4','2020-09-16 11:12:24','오케이 마담'),(90,'nct299',5,'어휴유','5','2020-09-16 11:12:24','존윅'),(91,'nct299',6,'이런걸','6','2020-09-16 11:12:24','해리 포터와 마법사의 돌'),(92,'nct299',7,'영화는 이래야지','7','2020-09-16 11:12:24','해리 포터와 비밀의 방'),(93,'nct299',8,'좋네','8','2020-09-16 11:12:24','해리 포터와 아즈카반의 죄수'),(94,'nct299',9,'굿이다','9','2020-09-16 11:12:24','해리 포터와 불의 잔'),(95,'xoxo300',10,'정말루','10','2020-09-16 11:12:24','해리 포터와 불사조 기사단'),(96,'xoxo300',1,'진짜 별로','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(97,'xoxo300',2,'어휴임','2','2020-09-16 11:12:24','반교'),(98,'xoxo300',3,'에휴','3','2020-09-16 11:12:24','시크릿 가든'),(99,'xoxo300',4,'이런걸','4','2020-09-16 11:12:24','오케이 마담'),(100,'xoxo300',5,'내 돈 아까워','5','2020-09-16 11:12:24','존윅'),(101,'xoxo300',6,'내돈내산 리뷰 별로임','6','2020-09-16 11:12:24','해리 포터와 마법사의 돌'),(102,'xoxo300',7,'볼만한 영화인듯','7','2020-09-16 11:12:24','해리 포터와 비밀의 방'),(103,'xoxo300',8,'명작인데 생각보다?','8','2020-09-16 11:12:24','해리 포터와 아즈카반의 죄수'),(104,'xoxo300',9,'조조로 생각없이 봤다가 조조로 본게 너무 미안해졌다','9','2020-09-16 11:12:24','해리 포터와 불의 잔'),(105,'xoxo300',10,'와..............','10','2020-09-16 11:12:24','해리 포터와 불사조 기사단'),(106,'shine',1,'울었어요 하품이 나와서','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(107,'shine',2,'토했어요 역겨워서','2','2020-09-16 11:12:24','반교'),(108,'shine',3,'짜증났어요 재미없어서','3','2020-09-16 11:12:24','시크릿 가든'),(109,'shine',4,'화가나더라구요 이런걸...','4','2020-09-16 11:12:24','오케이 마담'),(110,'shine',5,'그냥 무의미합니다','5','2020-09-16 11:12:24','존윅'),(111,'wnal395',5,'우리나라에 나름?','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(112,'war294',4,'어우 강아지 떄문에 그래?','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(113,'sssn34',5,'나는 강아지를 사랑합니다','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(114,'sefjoio12',6,'황정민 술톤 굿','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(115,'rsu10',7,'나름 명작아닌가?','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(116,'psj94',5,'시리즈 치고는 재밌네','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(117,'nct299',7,'이거는 1편이 명작이지','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(118,'maple',5,'이런 액션..족윈을 보는게 낫지','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(119,'ko0hun',4,'사랑해요 오빠','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(120,'kkomkkom294',2,'아니...이건..뭔..','1','2020-09-16 11:12:24','다만 악에서 구하소서'),(121,'jostar',4,'시원한 액션은 존ㄱ위ㅣㄱ 이건 ㄴㄴ','1','2020-09-17 11:12:24','다만 악에서 구하소서'),(122,'infi2949',5,'우울할떄 보러옴','1','2020-09-17 11:12:24','다만 악에서 구하소서'),(123,'hseoig94',6,'사상 머리 치고 싶을 때 보면 좋음','1','2020-09-17 11:12:24','다만 악에서 구하소서'),(124,'hongv',4,'하드보일러...귀뚜라미 보일러','1','2020-09-17 11:12:24','다만 악에서 구하소서'),(125,'hoho203',4,'나름 볼만한듯','1','2020-09-17 11:12:24','다만 악에서 구하소서'),(126,'ham534',4,'시간 킬링용임','1','2020-09-17 11:12:24','다만 악에서 구하소서'),(127,'gpgpg89',3,'이거 좀 그만 나와라','1','2020-09-17 11:12:24','다만 악에서 구하소서'),(128,'gong',4,'내 돈주고 봤는데...흠 ','1','2020-09-17 11:12:24','다만 악에서 구하소서'),(129,'dfaji24',8,'어휴 좋아','1','2020-09-19 11:12:24','다만 악에서 구하소서'),(130,'choi111',7,'너무 좋음','1','2020-09-19 11:12:24','다만 악에서 구하소서');
/*!40000 ALTER TABLE `cmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquire`
--

DROP TABLE IF EXISTS `inquire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inquire` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci,
  `ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `re_ref` int(11) DEFAULT NULL,
  `re_lev` int(11) DEFAULT NULL,
  `re_comp` int(11) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquire`
--

LOCK TABLES `inquire` WRITE;
/*!40000 ALTER TABLE `inquire` DISABLE KEYS */;
INSERT INTO `inquire` VALUES (32,'ohseH','asd','asdasdadasd','0:0:0:0:0:0:0:1','2020-09-16 14:47:38',1,0,0);
/*!40000 ALTER TABLE `inquire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liketable`
--

DROP TABLE IF EXISTS `liketable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `liketable` (
  `like_no` int(100) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`like_no`)
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liketable`
--

LOCK TABLES `liketable` WRITE;
/*!40000 ALTER TABLE `liketable` DISABLE KEYS */;
INSERT INTO `liketable` VALUES (539,'ohse',13),(540,'ohse',8),(541,'admin',13),(542,'admin',12),(545,'admin',1),(546,'admin',11);
/*!40000 ALTER TABLE `liketable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `user_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '생일쿠폰',
  `user_email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_addr` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '위치기반 서비스',
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` int(11) DEFAULT NULL COMMENT '회원가입시 1000P 지급',
  `grade` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('admin','admin','관리자','1998-04-09','rhksfl78@hanmail.net',NULL,'01000000000',0,'관리자'),('babi2959','asd15e1g3a','고수','1997-04-08','babil@naver.com','인천광역시 연수구 경원대로 184(동춘동)','01098494163',1000,'일반'),('choi111','chchch12','최광진','1994-05-21','chichi@naver.com','경상남도 김해시 분성로 26(외동, 김해 외동이진캐스빌 2차 아파트)','01032165498',1000,'일반'),('dbal2949','ad4g6r432','호돌이','1997-04-08','afdafs@naver.com','제주특별자치도 서귀포시 일주동로 9209(법환동)','01077445588',1500,'VIP'),('dfaji24','sade15','홍길동','1990-01-01','adsfa5@naver.com','경상남도 양산시 평산로 16(평산동)','01099663366',8000,'일반'),('dongbang','gd3fd5g43rd54','김춘향','1998-04-09','akgkg@naver.com','경상남도 양산시 양산역5길 2(중부동)','01075395015',8000,'VIP'),('eiwuj1','e,arg0185','임수옥','1965-11-05','ejiwje@naver.com','부산광역시 사상구 광장로 17(괘법동)','01044512225',9000,'일반'),('exo194','fg5863f31','고문영','2000-01-01','f4fsd@naver.com','광주광역시 남구 봉선로 198(봉선동)','01078636969',15000,'VIP'),('firigh20','15f8h4','강호동','1998-04-09','fight20@naver.com','상남도 창원시 진해구 충장로 356(이동)','01048458445',1000,'일반'),('gdragon0395','jgh8ygj3df','강상태','1997-04-08','kuyu@naver.com','광주광역시 광산구 사암로 172(우산동)','01077778888',5050,'일반'),('gogo396','asd48g4a3','강명태','1990-01-01','dsfsdfe@naver.com','서울특별시 노원구 마들로3길 15(월계동)','01078125852',2000,'VIP'),('gong','gong','공유진','1998-08-01','gong@gmail.com','양산 갓갓대로 갓갓로 갓갓 빌라','01077418523',4500,'일반'),('gpgpg89','gsgr645','놀부전','1998-08-01','jfhg@naver.com','경기도 고양시 일산서구 경의로 798(덕이동)','01022255588',8000,'VIP'),('ham534','hamham','햄스터','2020-01-06','kkom@hamster.com','햄스터 나라 햄토피아 햄스터리','01032165498',1000,'일반'),('hoho203','hoho1234','김호호','2004-07-14','hoho@gmail.com','서울특별시 송파구 오금로 300(가락동) 김해빌딩','01025896475',1560,'일반'),('hongv','gongh','홍진경','1995-03-11','hong@gmail.com','부산 하단구 23로 한단 아파트','01078452348',2000,'일반'),('hseoig94','asgj354dr1','김수향','1977-05-07','sdfefs3@naver.com','충청남도 아산시 아산로 35(온천동)','01044556698',1540,'일반'),('infi2949','fd6g3df31','문채원','1990-01-01','sdfe@naver.com','전라남도 순천시 우석로 128(남정동)','01077556396',7450,'일반'),('jostar','jojo060','조민성','1995-09-21','minster@naver.com','부산광역시 사상구 사상로 39로 24번지','01073593383',8000,'일반'),('kkomkkom294','kom1938','김감공','1977-05-07','kkom@daum.net','서울특별시 성동구 뚝섬로 377(성수동2가)','01078135889',1000,'일반'),('ko0hun','00hunhun','고영훈','2000-01-01','kyh15@naver.com','부산 서면로 15번 10로 젊은 아파트','01077788887',20000,'VIP'),('maple','fd35r43d','문근영','1994-05-16','gwsrg3@naver.com','제주특별자치도 제주시 탑동로 38(삼도이동)','01044846123',6590,'VIP'),('nct299','hf4gf36es3','천우희','2000-01-01','se2@naver.com','경상남도 창원시 마산합포구 서성로 3(중앙동3가)','01018613522',9000,'일반'),('ohseH','ohse1234','오세훈','1990-01-01','ohsehoon3@naver.com','부산 부산진구 가야대로 지하 719 지하3층','01028283232',1000,'일반'),('phe90','1234','박혜은','2018-04-03','phe90@hanmail.net','부산 북구 강변대로 1629 젊음의 거리','01054545656',1000,'일반'),('psj94','psj9494','박수지','1994-05-16','psj29@hanmail.net','부산 모분재로 120길 15로 포천초등학교','01078784545',2560,'일반'),('rsu10','ryu1414','류승우','1950-01-24','ryu50@naver.com','경기도 오산시 경기대로 181(원동)','01078945612',1000,'일반'),('sefjoio12','sefjoio1215','류승범','1998-04-09','sdfa@naver.com','경상북도 안동시 옥동1길 2(옥동)','01098965656',95000,'VIP'),('shine','dg2d13f85','김우주','1977-05-07','faew3q@naver.com','경기도 안산시 단원구 중앙대로 397(신길동)','01078645631',1050,'일반'),('sssn34','sang2040','김상우','1988-01-08','sang40@naver.com','인천광역시 서구 푸른로7번안길 4(청라동)','01044443333',2500,'일반'),('war294','dfg3df3','김다송','1998-04-09','afd@naver.com','대구광역시 달서구 진천로 89-13(대천동, 이마트푸른마을)','01018465412',200,'VIP'),('wnal395','w4ad64s','김다혜','1990-01-01','fae@naver.com','경기도 의정부시 전좌로156번길 47(호원동)','01048643153',150,'일반'),('xoxo300','gf84se31d','박주하','1977-05-07','erwqr@naver.com','경기도 부천시 석천로 188(중동)','01006810313',1580,'일반');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '영화제목+포스터.jpg',
  `director` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cast` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `information` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `like_cnt` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL COMMENT '상영시작일',
  `end_date` datetime DEFAULT NULL COMMENT '상영종료일',
  `genre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `runtime` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'다만 악에서 구하소서','홍원찬','황정민, 이정재, 박정민',15,'태국에서 충격적인 납치사건이 발생하고 \n	마지막 청부살인 미션을 끝낸 암살자 인남(황정민)은 그것이 자신과 관계된 것임을 알게 된다. \n	인남은 곧바로 태국으로 향하고, 조력자 유이(박정민)를 만나 사건을 쫓기 시작한다. \n	한편, 자신의 형제가 인남에게 암살당한 것을 알게 된 레이(이정재). \n	무자비한 복수를 계획한 레이는 인남을 추격하기 위해 태국으로 향하는데... \n\n	처절한 암살자 VS 무자비한 추격자 \n	멈출수 없는 두 남자의 지독한 추격이 시작된다!',9,143,'2020-08-05 00:00:00','2020-09-25 00:00:00','범죄, 액션','108분'),(2,'반교','존 쉬','왕정, 증경화, 부맹백',15,'비가 내리던 어두운 밤, 모두가 갑자기 자취를 감춰버린 학교에 남겨진 팡루이신과 웨이중팅. 두사람은 사라진 사람들을 찾아 학교를 벗어나려 하지만 환영과 귀신들이 그들을 괴롭히고 잊고 있었던 끔찍한 비밀들이 조금씩 드러나기 시작하는데...',6,120,'2020-08-05 00:00:00','2020-09-25 00:00:00','공포','103분'),(3,'시크릿 가든','마크 먼든','딕시 에저릭스, 콜린 퍼스, 줄리 월터스',1,'메리는 남몰래 저택을 돌아다니다 오랫동안 감춰져 있던 비밀의 문을 발견한다. 그너머엔 지금껏 본 적 없는 신비롭고 아름다운 정원이 숨겨져 있었는데... 굳게 닫힌 정원의 문이 열리는 순간 마법 같은 일들이 펼쳐진다!',6,100,'2020-08-05 00:00:00','2020-09-25 00:00:00','드라마, 가족, 판타지','100분'),(4,'오케이 마담','이철하','엄정화, 박성웅, 이상윤, 배정남, 이선빈',15,'“즐거운 여행 되세요~!”\n인생 최고의 행운인 줄 알았다, 놈들이 타기 전까지..\n\n극강의 쫄깃함으로 빠른 완판을 기록하는 꽈배기 맛집 사장 미영은\n컴퓨터 수리 전문가 석환의 남다른 외조로 하와이 여행에 당첨되고,\n난생처음 해외 여행을 떠나게 된다.\n\n하지만 비밀 요원을 쫓는 테러리스트들도 같은 비행기에 오르고\n꿈만 같았던 여행은 아수라장이 된다.\n\n난데없는 비행기 납치 사건의 유일한 해결사가 되어버린 부부.\n평범했던 과거는 접어두고, 숨겨왔던 내공을 펼치며 인질이 된 승객을 구하기 시작한다!\n\n휴가 끝 ;; 작전 시작 ^^\n구하자 비행기! 가자 하와이로!',9,91,'2020-08-12 00:00:00','2020-09-25 00:00:00','코미디, 액션','100분'),(5,'존윅','채드 스타헬스키','키아누 리브스, 리카르도 스카마르치오, 이안 멕쉐인,루비로즈',12,'킬러 생활에서 은퇴한 존 윅 John Wick은 강아지와 함께 행복한 삶을 살고 있다. \r\n하지만 그는 곧 운명의 갈림길에 놓이게 되는데...',0,150,'2020-08-05 00:00:00','2020-09-25 00:00:00','범죄, 액션, 스릴러','108분'),(6,'해리 포터와 마법사의 돌','크리스 콜럼버스','다니엘 래드클리프, 루퍼트 그린트, 엠마 왓슨',1,'해리 포터(다니엘 래드클리프 분)는 위압적인 버논 숙부(리챠드 그리피스 분)와 냉담한 이모 페투니아 (피오나 쇼 분), 욕심 많고 버릇없는 사촌 더즐리(해리 멜링 분) 밑에서 갖은 구박을 견디며 계단 밑 벽장에서 생활한다. 이모네 식구들 역시 해리와의 동거가 불편하기는 마찬가지. 이모 페투니아에겐 해리가 이상한(?) 언니 부부에 관한 기억을 떠올리게 만드는 달갑지 않은 존재다. 11살 생일이 며칠 앞으로 다가왔지만 한번도 생일파티를 치르거나 제대로 된 생일선물을 받아 본 적이 없는 해리로서는 특별히 신날 것도 기대 할 것도 없다. 11살 생일을 며칠 앞둔 어느 날 해리에게 초록색 잉크로 쓰여진 한 통의 편지가 배달된다. 그 편지의 내용은 다름 아닌 해리의 11살 생일을 맞이하여 전설적인“호그와트 마법학교”에서 보낸 입학초대장이었다. 그리고 해리의 생일을 축하하러 온 거인 해그리드는 해리가 모르고 있었던 해리의 진정한 정체를 알려주는데. 그것은 바로 해리가 굉장한 능력을 지닌 마법사라는 것!',2,44,'2020-09-20 00:00:00','2022-02-01 00:00:00','판타지, 가족, 모험, 액션','152분'),(7,'해리 포터와 비밀의 방','크리스 콜럼버스','다니엘 래드클리프, 루퍼트 그린트, 엠마 왓슨',1,'해리 포터에겐 이번 여름방학이 별로 즐겁질 못했다. 마법이라면 질색을 하는 페투니아 이모(피오나 쇼 분)와 버논 이모부(리차드 그리피스 분)의 구박도 그렇지만, 무엇보다 속상한 건 단짝이었던 론 위즐리(루퍼트 그린트 분)와 헤르미온느 그레인저(엠마 왓슨 분)가 그 사이 자신을 까맣게 잊었는지 자신의 편지에 답장 한 통 없다는 것.',5,111,'2022-02-02 00:00:00','2022-03-02 00:00:00','판타지, 가족, 모험, 액션','162분'),(8,'해리 포터와 아즈카반의 죄수','알폰소 쿠아론','다니엘 래드클리프, 루퍼트 그린트, 엠마 왓슨',12,'13세가 된 ‘해리 포터(다니엘 래드클래프)’는 아버지의 험담을 하는 이모부의 누이 마지 아줌마를 거대한 괴물 풍선으로 만들어 버리고 만다. 일반 세상에서 마법 사용이 금지되어 있는 법을 어긴 해리는 마법부의 징계가 두려워 도망을 치다가 만나게 된 마법부 장관은 ‘시리우스 블랙’(게리 올드만)이 아즈카반의 감옥을 탈출해 해리를 찾고 있다는 소식을 전한다. 시리우스 블랙은 어둠의 마왕인 볼드모트 경을 해리의 부모님에게 이끌어 죽음으로 몰고 간 당사자. 설상가상으로 영혼을 빨아들이는 아즈카반의 무시무시한 간수 ‘디멘터’가 호그와트에 머물며 해리를 위협한다. 그러나 새로 부임한 어둠의 마법 방어술 교수 ‘루핀’(데이빗 튤리스)이 가르쳐준 \'패트로누스\' 마법으로 해리는 디멘터에게 대적할 힘을 얻는다. 시리우스 블랙과의 불가피한 대결은 다가오고, 해리는 자신과 시리우스 블랙 사이에 얽혀있는 엄청난 비밀을 직면하게 되는데…. 해리를 위협하는 어둠의 세력, 그에 맞서는 해리의 활약! 놀라움으로 가득한 마법의 세계가 다시 펼쳐진다!',0,230,'2022-03-03 00:00:00','2022-04-03 00:00:00','판타지, 가족, 모험, 액션','141분'),(9,'해리 포터와 불의 잔','마이크 뉴웰','다니엘 래드클리프, 루퍼트 그린트, 엠마 왓슨',12,'요즘 들어 매일 꾸는 악몽 때문에 이마의 상처에 더욱 통증을 느끼는 해리(다니엘 래드클리프)는 친구 론(루퍼트 그린트)과 헤르미온느(엠마 왓슨)와 함께 퀴디치 월드컵에 참가해 악몽에서 벗어날 수 있게 돼 마냥 기쁘다. 그러나 퀴디치 캠프장 근방 하늘에 불길한 기운이 나타난다. 바로 마왕 볼드모트의 상징인 \'어둠의 표식\'이 나타난 것. 볼드모트가 13년 전에 자취를 감춘 뒤, 감히 모습을 드러내지 못했던 그의 추종자 데스 이터(DEATH EATER)들이 그 표식을 불러낸 것이다. 두려움으로 가득 찬 해리는 안전한 호그와트 마법학교로 돌아가고 싶어한다. 덤블도어 교장(마이클 갬본 경)이라면 자신을 지켜줄 수 있을 것이기에.... 그러나 올해는 예년과 상황이 좀 다르다. 덤블도어 교장은 유럽의 세 개 명문 마법학교의 결속을 다지기 위해 그간 중단됐던 호그와트에서 \'트리위저드 대회\'를 개최키로 했음을 발표한다. 트리위저드 대회는 마법사들 세계에서 가장 흥미진진하고 위험한 마법경연대회. 마법의 최고 명문 3개 학교에서 선발된 챔피언 한 명씩 출전해, 트리위저드 컵을 놓고 목숨을 건 경합을 벌이는 것이다. 호그와트 학생들은 대회 참가를 위해 방문한 우아한 프랑스의 보바통 마법아카데미 여학생들과 강인한 분위기의 불가리아 덤스트랭 학교 남학생들이 연회장을 가득 메우자, 경탄을 금치 못한다. 장내가 정리되고 마법부 직원인 바티 크라우치(로저 로이드 팩)와 덤블도어 교장의 주재 하에 마법의 \'불의 잔\'이 각 학교 출전자를 선발하는 의식이 열린다. 현란한 불꽃의 축제 속에 불의 잔은 마침내 세 학생의 이름을 호명한다. 덤스트랭 학교의 퀴디치 경기 슈퍼스타인 빅터 크룸(스타니슬라브 이아네브스키)과 보바통 마법아카데미의 플뢰르 델라쿠르(클레멘스 포에시), 그리고 호그와트의 팔방미인이자 최고 인기남 케드릭 디고리(로버트 패틴슨)이 그들. 그러나 세 명의 이름이 다 호명된 후, 뜻밖에도 불의 잔은 또 한 명의 이름을 내뱉는다. 그 이름은 바로 \'해리포터\'! 그러나 해리는 시합 출전자의 ',0,222,'2022-04-04 00:00:00','2022-05-04 00:00:00','판타지, 가족, 모험, 액션','156분'),(10,'해리 포터와 불사조 기사단','데이빗 예이츠','다니엘 래드클리프, 루퍼트 그린트, 엠마 왓슨',12,'길고도 지루한 여름 날 호그와트 마법학교 다섯 번째 해를 기다리고 있는 해리포터(다니엘 래드클리프). 이모부 더즐리 식구들과 참고 사는 것도 지겨운데다 친구 론(루퍼트 그린트)과 헤르미온느(엠마 왓슨)에게서는 편지 한 통 오지 않는다. 그러던 중 예상치 못했던 편지 한 장이 도착한다. 그것은 해리가 학교 밖인 리틀 위닝에서 얄미운 사촌 두들리, 즉 머글 앞에서 디멘터들의 공격을 막는 마법을 사용했기 때문에 호그와트 마법학교에서 퇴학 당하게 되었다는 소식이었다. 앞이 캄캄한 해리. 갑자기 어둠의 마법사 오러들이 나타나 해리를 불사조 기사단의 비밀 장소로 데리고 간다. 시리우스(게리 올드만)를 위시한 불사조 기사단을 만난 해리는 과거, 부모님들의 활약상을 알게 되어 힘을 얻고, 자신을 퇴학시키기 위해 마법부 장관 코넬리우스 퍼지(로버트 하디)가 법정에 세우지만 덤블도어 교장(마이클 갬볼 경)의 중재 덕분에 무죄 판결까지 받는다. 하지만 예언자 일보는 볼드모트(랄프 파인즈)가 돌아왔다는 해리의 말이 새빨간 거짓말이라며 비난하고 학생들 역시 해리를 의심하며 따돌린다. 게다가 자신이 가장 힘들어 할 때 도움을 주던 덤블도어 교장까지도 이유 없이 해리를 멀리하고…. 한편, 덤블도어도 못마땅한데 해리의 퇴학마저 무산이 되자 마법부 장관은 ‘어둠의 마법방어술’ 과목에 돌로레스 엄브릿지(이멜다 스털톤)를 교수로 임명한다. 하지만 엄브짓지의 마법방어술 수업은 학생들이 어둠의 힘으로부터 스스로를 지켜내기는커녕 오히려 곤경에 빠지게 한다. 이에 헤르미온느와 론은 해리의 능력을 믿고 자칭 ‘덤블도어의 군대’라고 명명한 비밀단체를 조직한다. 해리는 어둠의 마법에 맞서 스스로를 지켜낼 수 있는 방법을 학생들에게 가르쳐주며 앞으로 닥칠 격전에 대비시킨다. 그러나 밤마다 불길한 사건을 예견하는 악몽에 시달리는 해리. 이제 볼드모트와의 대결이 머지 않았음을 느끼게 된다. 시리우스가 공격 당하는 악몽을 꾼 해리는 덤블도어 군대와 함께 마법부 미스터리 부서 예언의 방으로 향한다. 그리고 이어 나',0,250,'2022-05-05 00:00:00','2022-06-05 00:00:00','판타지, 가족, 모험, 액션','137분'),(11,'해리 포터와 혼혈 왕자','데이빗 예이츠','다니엘 래드클리프, 루퍼트 그린트, 엠마 왓슨',12,'어둠의 세력이 더욱 강력해져 머글 세계와 호그와트까지 위협해온다. 위험한 기운을 감지한 덤블도어 교수는 다가올 전투에 대비하기 위해 해리 포터와 함께 대장정의 길을 나선다. 볼드모트를 물리칠 수 있는 유일한 단서이자 그의 영혼을 나누어 놓은 7개의 호크룩스를 파괴하는 미션을 수행해야만 하는 것! 또한 덤블도어 교수는 호크룩스를 찾는 기억여행에 결정적 도움을 줄 슬러그혼 교수를 호그와트로 초청한다. 한편 학교에서는 계속된 수업과 함께 로맨스의 기운도 무르익는다. 해리는 자신도 모르게 지니에게 점점 끌리게 되고, 새로운 여자 친구가 생긴 론에게 헤르미온느는 묘한 질투심을 느끼는데... 남겨진 결전을 위한 최후의 미션, 볼드모트와 해리 포터에 얽힌 치명적인 비밀, 선택된 자만이 통과할 수 있는 대단원을 향한 본격적인 대결이 시작된다!',0,800,'2022-06-06 00:00:00','2022-07-06 00:00:00','판타지, 가족, 모험, 액션','153분'),(12,'해리 포터와 죽음의 성물 - 1부','데이빗 예이츠','다니엘 래드클리프, 루퍼트 그린트, 엠마 왓슨',12,'모든 것을 끝낼 최후의 전투! \r\n판타지의 아름다운 역사가 드디어 마침표를 찍는다!\r\n덤블도어 교장이 남긴 ‘죽음의 성물’의 단서를 쫓던 해리 포터는 볼드모트가 그토록 찾아 다닌 절대적인 힘을 가진 지팡이의 비밀을 통해 드디어 마지막 퍼즐을 완성한다. 볼드모트의 영혼이 담긴 다섯 번째 ‘호크룩스’를 찾기 위해 마법학교 호그와트로 돌아온 해리와 친구들은 그들을 잡으려는 보안마법에 걸려 위기를 맞지만 덤블도어의 동생인 에버포스의 도움으로 벗어난다. \r\n그리고 그에게서 덤블도어와 어둠의 마법사 그린델왈드에 관한 놀라운 과거에 대해 알게 된다. \r\n한편, 볼드모트는 해리에 의해 호크룩스들이 파괴되었음을 느끼고 호그와트로 향한다.\r\n 해리를 주축으로 한 불사조 기사단과 죽음을 먹는 자들 간의 마법전투가 벌어지고 여기에 거대거미 아크로맨투라와 거인족 등 마법 생물들이 볼드모트 편으로 가세하면서 호그와트는 거대한 전쟁터로 변한다. \r\n전쟁의 틈에서 해리는 덤블도어를 죽인 스네이프의 엄청난 비밀과 볼드모트를 죽일 마지막 호크룩스에 대한 단서를 알게 되는데...\r\n',0,700,'2022-07-07 00:00:00','2022-08-07 00:00:00','판타지, 가족, 모험, 액션','146분'),(13,'해리 포터와 죽음의 성물 - 2부','데이빗 예이츠','다니엘 래드클리프, 루퍼트 그린트, 엠마 왓슨',12,'덤블도어 교장의 죽음 이후, 마법부는 죽음을 먹는 자들에게 점령당하고 호그와트는 위기에 빠진다. \r\n이에 해리와 론, 헤르미온느는 볼드모트를 물리칠 수 있는 유일한 단서이자 그의 영혼이 담긴 ‘성물’ 호크룩스를 찾기 위한 위험한 여정에 나선다\r\n. 그러나 영혼이 연결되어 있는 볼드모트와 해리. 볼드모트를 파괴하면 해리의 목숨 또한 위태로워질지 모른다! 죽느냐 죽이느냐, 이제 그 마지막 대결은 극한을 향해 치닫는데…',0,655,'2022-08-08 00:00:00','2022-09-08 00:00:00','판타지, 가족, 모험, 액션','131분'),(14,'테넷','크리스토퍼 놀란','외국배우',12,'시간의 흐름을 뒤집는 인버전을 통해 현재와 미래를 오가며 세상을 파괴하려는 사토르(케네스 브래너)를 막기 위해 투입된 작전의 주도자(존 데이비드 워싱턴). 인버전에 대한 정보를 가진 닐(로버트 패틴슨)과 미술품 감정사이자 사토르에 대한 복수심이 가득한 그의 아내 캣(엘리자베스 데비키)과 협력해 미래의 공격에 맞서 제3차 세계대전을 막아야 한다!',0,153,'2020-09-01 00:00:00','2020-10-31 00:00:00','액션, SF','180분');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `movie_release`
--

DROP TABLE IF EXISTS `movie_release`;
/*!50001 DROP VIEW IF EXISTS `movie_release`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `movie_release` AS SELECT 
 1 AS `movie_id`,
 1 AS `movie_name`,
 1 AS `director`,
 1 AS `cast`,
 1 AS `grade`,
 1 AS `information`,
 1 AS `score`,
 1 AS `like_cnt`,
 1 AS `start_date`,
 1 AS `end_date`,
 1 AS `genre`,
 1 AS `runtime`,
 1 AS `rel_movie`,
 1 AS `avg_star`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `num` int(11) NOT NULL,
  `admin_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '관리자만 작성가능',
  `subject` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci,
  `readcount` int(11) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='공지게시판';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'admin','조조데이를 즐기세요!',' 코로나로 힘든 요즘, 힐링이 필요하시죠?\r\n저희 조조무비에서는 철저한 방역으로 관람객 여러분들의 안전을 책임져 드립니다.\r\n최소 2칸 이상은 띄워 앉으셔야합니다.\r\n성숙한 관람문화로 조조 데이를 즐기세요',4,'2020-09-16 11:47:22','categoryEvent'),(2,'admin','코로나 방역수칙','																시민 모두가 힘든 요즘...<br>철저한 방역으로 다들 힘내봐요<br>							\r\n							',11,'2020-09-16 11:49:57','categoryNotice'),(3,'admin','반갑습니다 조조무비입니다.','금일 정각부터 결제 시스템 점검이 있습니다.\r\n이용에 불편함을 드려 죄송합니다',1,'2020-09-16 11:53:42','categoryNotice'),(4,'admin','환불문제','어제 시스템 점검으로 인해 환불 처리가 되지 않았던 문제를\r\n확인하였습니다.\r\n고객님들께 불편을 드려 죄송합니다 최대한 신속히 복구하도록 하겠습니다.,',1,'2020-09-16 11:54:19','categoryNotice'),(5,'admin','복구 완료 되었습니다.','기다려주신 고객님께 감사드리며, 불편함을 느끼신 고객님께 죄송한 선물로 1000포인트씩을 드렸습니다.\r\n미흡한 대처에 정말 죄송합니다',0,'2020-09-16 11:54:55','categoryNotice'),(6,'admin','조조 무비 결제 방식 안내','현재 결제 시스템이 작동이 되지 않습니다.\r\n현장 결제 를 이용해주시면 감사하겠습니다\r\n죄송합니다',1,'2020-09-16 11:55:27','categoryNotice'),(7,'admin','좋아요와 구독을 눌러주세요!','좋아요에 미친 우리!\r\n구독에 미친 우리!\r\n좋아요 구독이 1000명 돌파하면 각 1000천 포인트를 지급해드립니다!',1,'2020-09-16 11:56:05','categoryEvent'),(8,'admin','DB 구현','								ㄴㄹㄴㄹ\r\n							',3,'2020-09-16 15:08:15','categoryNotice');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pay`
--

DROP TABLE IF EXISTS `pay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pay` (
  `pay_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '주문번호',
  `user_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_date` datetime DEFAULT NULL,
  `howmany` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `usepoint` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `ticket_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pay`
--

LOCK TABLES `pay` WRITE;
/*!40000 ALTER TABLE `pay` DISABLE KEYS */;
/*!40000 ALTER TABLE `pay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reserve_number` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL COMMENT '영화제목',
  `movie_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theater_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '상영관이름',
  `syg_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reserve_date` datetime DEFAULT NULL COMMENT '결제일',
  `sangyoung_time` datetime DEFAULT NULL COMMENT '영화상영시간',
  `tf` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '결제여부?',
  `pay_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '티켓번호',
  PRIMARY KEY (`reserve_number`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sangyounggwan`
--

DROP TABLE IF EXISTS `sangyounggwan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sangyounggwan` (
  `syg_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '상영관',
  `theater_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '지점',
  `theater_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seats_num` int(11) DEFAULT NULL,
  `row` int(11) DEFAULT NULL,
  `cul` int(11) DEFAULT NULL,
  PRIMARY KEY (`syg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sangyounggwan`
--

LOCK TABLES `sangyounggwan` WRITE;
/*!40000 ALTER TABLE `sangyounggwan` DISABLE KEYS */;
INSERT INTO `sangyounggwan` VALUES ('대구점 1관','jojo04','조조무비 대구점',32,4,8),('대구점 2관','jojo04','조조무비 대구점',35,5,7),('대구점 3관','jojo04','조조무비 대구점',7,1,7),('사상점 1관','jojo03','조조무비 사상점',40,5,8),('사상점 2관','jojo03','조조무비 사상점',24,4,6),('사상점 3관','jojo03','조조무비 사상점',40,5,8),('사상점 4관','jojo03','조조무비 사상점',28,4,7),('서면점 1관','jojo01','조조무비 서면점',18,3,6),('서면점 2관','jojo01','조조무비 서면점',20,4,5),('서면점 3관','jojo01','조조무비 서면점',15,5,3),('서면점 4관','jojo01','조조무비 서면점',28,4,7),('서면점 5관','jojo01','조조무비 서면점',28,4,7),('양산점 1관','jojo02','조조무비 양산점',20,4,5),('양산점 2관','jojo02','조조무비 양산점',24,4,6),('양산점 3관','jojo02','조조무비 양산점',15,3,5),('해운대점 1관','jojo06','조조무비 해운대점',24,4,6),('해운대점 2관','jojo06','조조무비 해운대점',32,4,8),('해운대점 3관','jojo06','조조무비 해운대점',24,3,8);
/*!40000 ALTER TABLE `sangyounggwan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `testview`
--

DROP TABLE IF EXISTS `testview`;
/*!50001 DROP VIEW IF EXISTS `testview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `testview` AS SELECT 
 1 AS `movie_id`,
 1 AS `movie_name`,
 1 AS `director`,
 1 AS `cast`,
 1 AS `grade`,
 1 AS `information`,
 1 AS `score`,
 1 AS `like_cnt`,
 1 AS `start_date`,
 1 AS `end_date`,
 1 AS `genre`,
 1 AS `runtime`,
 1 AS `rel_movie`,
 1 AS `avg_star`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `theater`
--

DROP TABLE IF EXISTS `theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theater` (
  `theater_id` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `theater_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`theater_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theater`
--

LOCK TABLES `theater` WRITE;
/*!40000 ALTER TABLE `theater` DISABLE KEYS */;
INSERT INTO `theater` VALUES ('jojo01','조조무비 사상점','서울 강서구 강서로 375 애플아울렛 3층','4124124'),('jojo02','조조무비 양산점','경남 양산시 갓넘길 1 204동','051-131-4567'),('jojo03','조조무비 서면점','서울 도봉구 마들로 329 애플아울렛 3층','051-131-4567'),('jojo04','조조무비 대구점','대구점 3층','051-468-5291'),('jojo05','조조무비 테스트점','테스트 주소 123','2020'),('jojo06','조조무비 해운대점','부산 해운대구 APEC로 17 3층','051-123-4567');
/*!40000 ALTER TABLE `theater` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `time`
--

DROP TABLE IF EXISTS `time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time` (
  `time_num` int(11) NOT NULL,
  `sangyoung_time` datetime DEFAULT NULL,
  `theater_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `syg_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reserve_seats` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`time_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time`
--

LOCK TABLES `time` WRITE;
/*!40000 ALTER TABLE `time` DISABLE KEYS */;
INSERT INTO `time` VALUES (6,'2020-09-21 14:00:00','조조무비 사상점','사상점 2관','다만 악에서 구하소서','A1,A2,B1,B2,C4,C5,C6,B4,B5,B6',1),(8,'2020-09-11 15:10:00','조조무비 사상점','사상점 2관','다만 악에서 구하소서',NULL,1),(9,'2020-09-11 18:37:00','조조무비 사상점','사상점 3관','다만 악에서 구하소서',NULL,1),(10,'2020-09-21 18:57:00','조조무비 사상점','사상점 4관','오케이 마담',NULL,4),(11,'2020-09-21 18:57:00','조조무비 사상점','사상점 2관','다만 악에서 구하소서','',1),(12,'2020-09-30 15:40:00','조조무비 사상점','사상점 3관','오케이 마담',NULL,4),(13,'2020-09-30 14:00:00','조조무비 사상점','사상점 3관','다만 악에서 구하소서',NULL,1),(19,'2020-09-11 15:30:00','조조무비 사상점','사상점 1관','다만 악에서 구하소서',NULL,1),(20,'2020-09-30 17:00:00','조조무비 양산점','양산점 1관','오케이 마담',NULL,4),(21,'2020-09-21 20:00:00','조조무비 양산점','양산점 1관','다만 악에서 구하소서',NULL,1),(22,'2020-09-21 15:00:00','조조무비 양산점','양산점 2관','시크릿 가든',NULL,3),(23,'2020-09-15 18:00:00','조조무비 양산점','양산점 2관','시크릿 가든',NULL,3),(24,'2020-09-16 21:00:00','조조무비 양산점','양산점 2관','시크릿 가든',NULL,3),(25,'2020-09-28 19:00:00','조조무비 양산점','양산점 2관','시크릿 가든',NULL,3),(26,'2020-09-22 22:53:00','조조무비 대구점','대구점 1관','다만 악에서 구하소서',NULL,1),(27,'2020-09-22 14:10:00','조조무비 대구점','대구점 1관','반교',NULL,2),(28,'2020-09-22 17:10:00','조조무비 대구점','대구점 1관','다만 악에서 구하소서',NULL,1),(29,'2020-09-22 22:10:00','조조무비 대구점','대구점 1관','반교',NULL,2),(30,'2020-09-22 13:30:00','조조무비 대구점','대구점 2관','반교',NULL,2),(31,'2020-09-22 16:30:00','조조무비 대구점','대구점 2관','오케이 마담',NULL,4),(32,'2020-09-22 19:30:00','조조무비 대구점','대구점 2관','오케이 마담',NULL,4),(33,'2020-09-22 22:30:00','조조무비 대구점','대구점 2관','오케이 마담',NULL,4),(34,'2020-09-23 13:20:00','조조무비 대구점','대구점 2관','다만 악에서 구하소서',NULL,1),(35,'2020-09-23 17:20:00','조조무비 대구점','대구점 2관','반교',NULL,2),(36,'2020-09-23 21:20:00','조조무비 대구점','대구점 2관','다만 악에서 구하소서',NULL,1),(37,'2020-09-23 23:00:00','조조무비 사상점','사상점 1관','반교',NULL,2),(38,'2020-09-23 14:00:00','조조무비 사상점','사상점 1관','다만 악에서 구하소서',NULL,1),(39,'2020-09-23 18:00:00','조조무비 사상점','사상점 4관','반교',NULL,2),(40,'2020-09-23 22:00:00','조조무비 사상점','사상점 4관','다만 악에서 구하소서',NULL,1),(41,'2020-09-23 10:50:00','조조무비 서면점','서면점 1관','다만 악에서 구하소서',NULL,1),(42,'2020-09-24 15:50:00','조조무비 테스트점','테스트점 1관','다만 악에서 구하소서',NULL,1),(43,'2020-09-24 15:57:00','조조무비 테스트점','테스트점 1관','다만 악에서 구하소서',NULL,1),(44,'2020-09-11 16:35:00','조조무비 테스트점','테스트점 1관','시크릿 가든',NULL,3),(45,'2020-09-28 16:55:00','조조무비 테스트점','테스트점 1관','반교',NULL,2),(47,'2020-09-08 22:06:00','조조무비 사상점','사상점 2관','오케이 마담',NULL,4),(48,'2020-09-08 22:43:00','조조무비 서면점','서면점 1관','시크릿 가든',NULL,3),(50,'2020-09-21 11:24:00','조조무비 사상점','사상점 1관','다만 악에서 구하소서','A1,A2,B2,B3,A7,A8,A3,A4',1),(51,'2020-09-21 13:24:00','조조무비 사상점','사상점 1관','다만 악에서 구하소서','D4,D5,D6,A1,A2,A7,A8,B1,B2,B7,B8,E5',1),(52,'2020-09-21 15:24:00','조조무비 사상점','사상점 1관','다만 악에서 구하소서','E3,B3,B4',1),(57,'2020-09-21 14:24:00','조조무비 사상점','사상점 2관','다만 악에서 구하소서',NULL,1),(58,'2020-09-21 17:24:00','조조무비 사상점','사상점 2관','다만 악에서 구하소서','C2,C3,C4,C5,B3,B4,B5',1),(59,'2020-09-21 21:24:00','조조무비 사상점','사상점 2관','다만 악에서 구하소서','',1),(60,'2020-09-21 13:24:00','조조무비 사상점','사상점 3관','다만 악에서 구하소서','',1),(61,'2020-09-21 16:24:00','조조무비 사상점','사상점 3관','다만 악에서 구하소서','',1),(62,'2020-09-21 21:24:00','조조무비 사상점','사상점 3관','다만 악에서 구하소서',NULL,1),(63,'2020-09-21 23:24:00','조조무비 사상점','사상점 3관','다만 악에서 구하소서',',A1',1),(64,'2020-09-30 04:47:00','조조무비 사상점','사상점 4관','해리포터',NULL,7),(65,'2020-09-25 03:48:00','조조무비 대구점','대구점 3관','존윅',NULL,5),(66,'2020-09-10 22:30:00','조조무비 양산점','양산점 3관','오케이 마담',NULL,4),(67,'2020-09-16 17:40:00','조조무비 해운대점','해운대점 1관','존윅',NULL,5),(68,'2020-09-16 20:40:00','조조무비 해운대점','해운대점 1관','존윅',NULL,5),(69,'2020-09-16 23:40:00','조조무비 해운대점','해운대점 1관','존윅',NULL,5),(70,'2020-09-16 17:40:00','조조무비 해운대점','해운대점 2관','다만 악에서 구하소서',NULL,1),(71,'2020-09-16 20:40:00','조조무비 해운대점','해운대점 2관','다만 악에서 구하소서',NULL,1),(72,'2020-09-16 18:02:00','조조무비 사상점','사상점 4관','시크릿 가든',NULL,3),(73,'2020-09-16 21:02:00','조조무비 사상점','사상점 4관','시크릿 가든',NULL,3),(74,'2020-09-16 17:02:00','조조무비 사상점','사상점 3관','시크릿 가든',NULL,3),(75,'2020-09-16 18:03:00','조조무비 대구점','대구점 2관','존윅',NULL,5);
/*!40000 ALTER TABLE `time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `time_release`
--

DROP TABLE IF EXISTS `time_release`;
/*!50001 DROP VIEW IF EXISTS `time_release`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `time_release` AS SELECT 
 1 AS `time_num`,
 1 AS `sangyoung_time`,
 1 AS `theater_name`,
 1 AS `syg_id`,
 1 AS `movie_id`,
 1 AS `seats_num`,
 1 AS `reserve_seats`,
 1 AS `rel_movie_time`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `movie_release`
--

/*!50001 DROP VIEW IF EXISTS `movie_release`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`movieuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `movie_release` AS select `r`.`movie_id` AS `movie_id`,`r`.`movie_name` AS `movie_name`,`r`.`director` AS `director`,`r`.`cast` AS `cast`,`r`.`grade` AS `grade`,`r`.`information` AS `information`,`r`.`score` AS `score`,`r`.`like_cnt` AS `like_cnt`,`r`.`start_date` AS `start_date`,`r`.`end_date` AS `end_date`,`r`.`genre` AS `genre`,`r`.`runtime` AS `runtime`,(case when (now() between (`r`.`start_date` - interval 7 day) and `r`.`start_date`) then '상영임박' when (now() between `r`.`start_date` and `r`.`end_date`) then '상영중' when (`r`.`end_date` < now()) then '상영종료' else '상영예정' end) AS `rel_movie`,`i`.`avg_star` AS `avg_star` from (`moviedb`.`movie` `r` left join (select `moviedb`.`cmt`.`movie_id` AS `movie_id`,avg(`moviedb`.`cmt`.`cmt_star`) AS `avg_star` from `moviedb`.`cmt` group by `moviedb`.`cmt`.`movie_id`) `i` on((`r`.`movie_id` = `i`.`movie_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `testview`
--

/*!50001 DROP VIEW IF EXISTS `testview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`movieuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `testview` AS select `r`.`movie_id` AS `movie_id`,`r`.`movie_name` AS `movie_name`,`r`.`director` AS `director`,`r`.`cast` AS `cast`,`r`.`grade` AS `grade`,`r`.`information` AS `information`,`r`.`score` AS `score`,`r`.`like_cnt` AS `like_cnt`,`r`.`start_date` AS `start_date`,`r`.`end_date` AS `end_date`,`r`.`genre` AS `genre`,`r`.`runtime` AS `runtime`,`r`.`rel_movie` AS `rel_movie`,`i`.`avg_star` AS `avg_star` from (`moviedb`.`movie_release` `r` left join (select `moviedb`.`cmt`.`movie_id` AS `movie_id`,avg(`moviedb`.`cmt`.`cmt_star`) AS `avg_star` from `moviedb`.`cmt` group by `moviedb`.`cmt`.`movie_id`) `i` on((`r`.`movie_id` = `i`.`movie_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `time_release`
--

/*!50001 DROP VIEW IF EXISTS `time_release`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`movieuser`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `time_release` AS select `t`.`time_num` AS `time_num`,`t`.`sangyoung_time` AS `sangyoung_time`,`t`.`theater_name` AS `theater_name`,`t`.`syg_id` AS `syg_id`,`m`.`movie_id` AS `movie_id`,`syg`.`seats_num` AS `seats_num`,`t`.`reserve_seats` AS `reserve_seats`,(case when (now() < `t`.`sangyoung_time`) then '상영예정' when (`t`.`sangyoung_time` < now()) then '상영종료' end) AS `rel_movie_time` from ((`movie` `m` join `time` `t`) join `sangyounggwan` `syg`) where ((`m`.`movie_name` = `t`.`movie_name`) and (`t`.`syg_id` = `syg`.`syg_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-16 15:11:18
