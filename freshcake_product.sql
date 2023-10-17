-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: freshcake
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` longtext,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `is_featured` tinyint DEFAULT NULL,
  `status` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Bánh Su Kem Nhân Socola','Thành phần: Trứng gà, bột mỳ, bơ, nước, đường, sô cô la, tinh bột biến tính (E1414), béo thực vật, bột sữa gầy, chất làm dày (E401), hương vani tổng hợp, màu thực phẩm (E160aii)), muối.',30000,0,5,'sukemnhansocola.jpg',0,1,1,'2023-10-02 00:00:00','2023-10-12 00:00:00'),(2,'Bánh Su Kem Nhân Vani','Thành phần: Trứng gà, bột mỳ, bơ, nước, đường, tinh bột biến tính (E1414), béo thực vật, bột sữa gầy, chất làm dày (E401), hương vani tổng hợp, màu thực phẩm (E160aii)), muối.',29000,0,4,'sukemnhanvani.jpg',0,1,1,'2023-10-02 00:00:00','2023-10-13 00:00:00'),(3,'Bánh Cuộn Nho Miếng','Thành phần: Trứng gà, đường, bột mỳ, nho khô (10%), hương vani tổng hợp, bơ, bột làm bánh Tartar, mật ong, siro đường, rượu rum.   ',23000,0,2,'banhcuonnhomieng.jpg',0,1,2,'2023-10-02 00:00:00','2023-10-10 00:00:00'),(4,'Bánh Cuộn Socola Miếng','Thành phần: Trứng gà, đường, bột mỳ, bột ca cao (2,5%), bơ, bột làm bánh Tartar, mật ong, siro đường, rượu rum.  ',23000,0,2,'banhcuonsocolamieng.jpg',0,1,2,'2023-10-02 00:00:00','2023-10-13 00:00:00'),(5,'Bánh Cuộn Trà Xanh 110G','Thành phần: Trứng gà, kem sữa, bột mỳ, đường, mật ong, bột trà xanh (1%), rượu rum.  ',35000,0,3,'banhcuontraxanh110g.jpg',0,1,2,'2023-10-02 00:00:00','2023-10-11 00:00:00'),(6,'Bánh Cuộn Trà Xanh 250 G','Thành phần: Trứng gà, kem sữa, bột mỳ, đường, mật ong, bột trà xanh (1%), rượu rum.      ',89000,0,4,'banhcuontraxanh250g.jpg',0,1,2,'2023-10-02 00:00:00','2023-10-12 00:00:00'),(7,'Bánh Cuộn Vani 110G','Thành phần: Trứng gà, kem sữa, bột mỳ, đường, rượu rum.',35000,0,7,'banhcuonvani110g.jpg',0,1,2,'2023-10-02 00:00:00','2023-10-11 00:00:00'),(8,'Bánh Cuộn Vani 250G','Thành phần: Trứng gà, kem sữa, bột mỳ, đường, rượu rum.',89000,0,2,'banhcuonvani250g.jpg',0,1,2,'2023-10-02 00:00:00','2023-10-10 00:00:00'),(9,'Bánh Chiffon 3 Vị','Thành phần: Trứng gà, đường, bột mỳ, bột ca cao, hương cà phê tổng hợp, hương vani tổng hợp, bột làm bánh Tartar, bơ, mật ong, siro đường, rượu rum. ',22000,0,5,'banhchiffon3vi.jpg',0,1,3,'2023-10-02 00:00:00','2023-10-12 00:00:00'),(10,'Bánh Chiffon Trà Xanh','Thành phần: Trứng gà, đường, bột mỳ, bơ, nước, bột trà xanh (1%), bột làm bánh Tartar, mật ong, siro đường, rượu rum.   ',36000,0,4,'banhchiffontraxanh.jpg',0,1,3,'2023-10-02 00:00:00','2023-10-11 00:00:00'),(11,'Bánh Chiffon Vani','Thành phần: Trứng gà, đường, bột mỳ, bơ, bột làm bánh Tartar, siro đường, hương vani tổng hợp, rượu rum.',32000,0,8,'banhchiffonvani.jpg',0,1,3,'2023-10-02 00:00:00','2023-10-13 00:00:00'),(12,'Bánh kem Flower Of Love','Bánh kem tươi cốt bánh 5 lớp chiffon hoa quả khô hỗn hợp, nhân kem tươi, trang trí hoa kem tươi. ',320000,0,5,'banhkemfloweroflove.jpg',0,1,4,'2023-10-05 00:00:00','2023-10-13 00:00:00'),(13,'Bánh Kem LiLy Garden','Bánh kem tươi cốt bánh 4 lớp chiffon phô mai, nhân kem phô mai, trang hoa kem tươi',320000,0,8,'banhkemlilygarden.jpg',0,1,4,'2023-10-01 00:00:00','2023-10-12 00:00:00'),(14,'Bánh Kem Princess','Bánh kem tươi cốt bánh 3 lớp, chiffon vani, nhân cocktail hoa quả, trang trí hoa kem tươi.',380000,0,2,'banhkemprincess.jpg',0,1,4,'2023-10-08 00:00:00','2023-10-12 00:00:00'),(15,'Bánh Kem Endless Love','Bánh kem tươi cốt bánh 3 lớp chiffon vani, nhân cocktail hoa quả khô, trang trí kem tươi. ',380000,0,8,'banhkemendlesslove.jpg',0,1,4,'2023-10-11 00:00:00','2023-10-11 00:00:00'),(16,'Bánh Kem Rosie Love','Bánh kem tươi cốt bánh 4 lớp chiffon phô mai, nhân kem phô mai, trang hoa kem tươi',380000,0,1,'banhkemrosielove.jpg',0,1,4,'2023-10-13 00:00:00','2023-10-14 00:00:00'),(17,'Bánh kem Pink Angel','Bánh kem tươi cốt bánh chiffon phô mai, kem tươi nhân phô mai, trang trí phụ kiện búp bê thiên thần, sô cô la và bông đường bi bạc',320000,0,3,'banhkempinkangel.jpg',0,1,4,'2023-10-12 00:00:00','2023-10-13 00:00:00'),(18,'Bánh Croissant','Thành phần: Bột mỳ, bơ, sữa bột, đường, trứng gà, men, muối, nước Trang trí: socola, cốm, đường icing',15000,0,1,'banhcroissant.jpg',0,1,5,'2023-09-08 00:00:00','2023-09-29 00:00:00'),(19,'Bánh Donut Socola Dâu 45G','Thành phần: Bột mỳ, bơ, sữa bột, đường, trứng gà, men, muối, nước Trang trí: socola, cốm, đường icing',15000,0,7,'banhdonutsocoladau.jpg',0,1,5,'2023-10-08 00:00:00','2023-10-10 00:00:00'),(20,'Bánh Mì Gối Đen','Bột mì đen (14.5%), đường, sữa bột, bơ, muối, men, phụ gia bánh mỳ, nước',40000,0,5,'banhmigoiden.jpg',0,1,5,'2023-10-03 00:00:00','2023-10-05 00:00:00'),(21,'Bánh Mì Gối Nâu','Bột mỳ, nước, bột bánh mỳ nâu (17%), đường, sữa bột, bơ, men, muối, chất ổn định (E516), chất nhũ hóa (E322i), chất xử lý bột (E300, E1100i).',40000,0,12,'banhmigoinau.jpg',0,1,5,'2023-10-04 00:00:00','2023-10-11 00:00:00'),(22,'Bánh Mì Gối Ngũ Cốc','Bột mỳ, nước, ngũ cốc (15%), sữa bột, đường, bơ  men, muối, chất ổn định (E516), chất nhũ hóa (E322i), chất xử lý bột (E300, E1100i).',40000,0,3,'banhmigoingucoc.jpg',0,1,5,'2023-10-13 00:00:00','2023-10-13 00:00:00'),(23,'Bánh Mì Gối Trắng','Bột mì, men, muối, bơ, đường, sữa bột, trứng gà, nước',30000,0,5,'banhmigoitrang.jpg',0,1,5,'2023-10-01 00:00:00','2023-10-03 00:00:00'),(24,'Bánh Sandwich Cá Ngừ Phô Mai','Thành phần: Bột bánh mỳ gối (bột mỳ, men, muối, bơ, đường, trứng gà, nước), cá ngừ, phô mai, sốt Mayonnaise, trứng gà Hạn sử dụng: 02 ngày kể từ ngày sản xuất',32000,0,7,'banhsandwichcanguphomai.jpg',0,1,5,'2023-10-06 00:00:00','2023-10-13 00:00:00');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-18  1:15:27
