/*
 Navicat Premium Dump SQL

 Source Server         : INFORMATION MANAGEMENT
 Source Server Type    : MariaDB
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : ecom_db

 Target Server Type    : MariaDB
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 26/05/2026 20:07:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer_masterlist
-- ----------------------------
DROP TABLE IF EXISTS `customer_masterlist`;
CREATE TABLE `customer_masterlist`  (
  `CustomerID` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Customer` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cStatus` int(11) NULL DEFAULT NULL,
  `DateProcessed` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_masterlist
-- ----------------------------
INSERT INTO `customer_masterlist` VALUES ('20260410-001', 'MR. SANTOS, JUAN  D.', 'juan.santos1@gmail.com', '123 Rizal St East Bajac-Bajac, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-002', 'MS. REYES, MARIA  L.', 'maria.reyes2@gmail.com', '45 Mabini St Kalaklan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-003', 'MR. GARCIA, JOSE  M.', 'jose.garcia3@gmail.com', '78 Bonifacio Ave Barretto, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-004', 'MRS. TORRES, ANA  S.', 'ana.torres4@gmail.com', '12 Luna St New Cabalan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-005', 'MR. FLORES, MARK  D.', 'mark.flores5@gmail.com', '90 Burgos St Gordon Heights, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-006', 'MS. CRUZ, LIZA  F.', 'liza.cruz6@gmail.com', '22 Castro St Sta. Rita, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-007', 'MR. RAMOS, PAOLO  N.', 'paolo.ramos7@gmail.com', '11 Quezon St Pag-asa, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-008', 'MRS. MENDOZA, CARLA  G.', 'carla.mendoza8@gmail.com', '34 Del Pilar St Asinan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-009', 'MR. AQUINO, LUIS  R.', 'luis.aquino9@gmail.com', '67 Aguinaldo St West Tapinac, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-010', 'MS. CASTILLO, JENNA  M.', 'jenna.castillo10@gmail.com', '88 Guerrero St East Tapinac, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-011', 'MR. VILLANUEVA, ERIC  S.', 'eric.villanueva11@gmail.com', '101 Main St Kalaklan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-012', 'MS. DOMINGO, RICA  T.', 'rica.domingo12@gmail.com', '202 Sunset Ave Barretto, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-013', 'MR. PASCUAL, NOEL  F.', 'noel.pascual13@gmail.com', '303 Beach Rd New Cabalan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-014', 'MRS. DE LEON, GRACE  O.', 'grace.deleon14@gmail.com', '404 Market St Gordon Heights, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-015', 'MR. BAUTISTA, RYAN  V.', 'ryan.bautista15@gmail.com', '505 Hilltop Rd Sta. Rita, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-016', 'MS. SORIANO, KAYE  A.', 'kaye.soriano16@gmail.com', '606 Coastal Rd Pag-asa, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-017', 'MR. SALVADOR, NEIL  E.', 'neil.salvador17@gmail.com', '707 River Rd Asinan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-018', 'MRS. VELASCO, IRENE  C.', 'irene.velasco18@gmail.com', '808 Lakeview St West Tapinac, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-019', 'MR. MIRANDA, JOEL  P.', 'joel.miranda19@gmail.com', '909 Garden St East Tapinac, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-020', 'MS. ALVAREZ, SHIELA  D.', 'shiela.alvarez20@gmail.com', '100 Pine St Kalaklan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-021', 'MR. NAVARRO, KEVIN  L.', 'kevin.navarro21@gmail.com', '21 Palm St Barretto, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-022', 'MS. LIM, ANGELA  S.', 'angela.lim22@gmail.com', '22 Palm St Kalaklan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-023', 'MR. SY, ADRIAN  T.', 'adrian.sy23@gmail.com', '23 Palm St Pag-asa, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-024', 'MRS. TAN, MICHELLE  G.', 'michelle.tan24@gmail.com', '24 Palm St Sta. Rita, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-025', 'MR. GO, BRIAN  C.', 'brian.go25@gmail.com', '25 Palm St Asinan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-026', 'MS. CHUA, DENISE  U.', 'denise.chua26@gmail.com', '26 Palm St New Cabalan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-027', 'MR. UY, CARL  Y.', 'carl.uy27@gmail.com', '27 Palm St East Tapinac, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-028', 'MRS. YU, JASMINE  O.', 'jasmine.yu28@gmail.com', '28 Palm St West Tapinac, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-029', 'MR. ONG, PATRICK  L.', 'patrick.ong29@gmail.com', '29 Palm St Gordon Heights, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-030', 'MS. LEE, KRISTINE  C.', 'kristine.lee30@gmail.com', '30 Palm St Kalaklan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-031', 'MR. CO, ALLAN  D.', 'allan.co31@gmail.com', '31 Palm St Barretto, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-032', 'MS. DY, SHEENA  T.', 'sheena.dy32@gmail.com', '32 Palm St Sta. Rita, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-033', 'MR. PEREZ, LEO  M.', 'leo.perez98@gmail.com', '90 Horizon St Pag-asa, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-034', 'MS. MAGSINO, TRISHA  P.', 'trisha.magsino99@gmail.com', '91 Horizon St Asinan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');
INSERT INTO `customer_masterlist` VALUES ('20260410-035', 'MR. LOZADA, VICTOR  R.', 'victor.lozada100@gmail.com', '92 Horizon St Kalaklan, Olongapo, Zambales Region III', 1, '2026-04-17 16:37:40');

-- ----------------------------
-- Table structure for customer_raw
-- ----------------------------
DROP TABLE IF EXISTS `customer_raw`;
CREATE TABLE `customer_raw`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `LastName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `MiddleName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `SuffixName` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `DateOfBirth` date NULL DEFAULT NULL,
  `AddressLine01` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `AddressLine02` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Barangay` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `City` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Province` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Region` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Contact` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Status` enum('ACTIVE','INACTIVE','SUSPENDED') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'ACTIVE',
  `CreatedAt` timestamp NULL DEFAULT current_timestamp(),
  `UpdatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `Email`(`Email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_raw
-- ----------------------------
INSERT INTO `customer_raw` VALUES (1, 'Mr.', 'Santos', 'Juan', 'Dela Cruz', NULL, '1990-05-14', '123 Rizal St', NULL, 'East Bajac-Bajac', 'Olongapo', 'Zambales', 'Region III', '09171230001', 'juan.santos1@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (2, 'Ms.', 'Reyes', 'Maria', 'Lopez', NULL, '1995-07-21', '45 Mabini St', 'Apt 2', 'Kalaklan', 'Olongapo', 'Zambales', 'Region III', '09171230002', 'maria.reyes2@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (3, 'Mr.', 'Garcia', 'Jose', 'Martinez', NULL, '1988-03-10', '78 Bonifacio Ave', NULL, 'Barretto', 'Olongapo', 'Zambales', 'Region III', '09171230003', 'jose.garcia3@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (4, 'Mrs.', 'Torres', 'Ana', 'Santos', NULL, '1985-11-02', '12 Luna St', NULL, 'New Cabalan', 'Olongapo', 'Zambales', 'Region III', '09171230004', 'ana.torres4@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (5, 'Mr.', 'Flores', 'Mark', 'Diaz', NULL, '1992-08-30', '90 Burgos St', NULL, 'Gordon Heights', 'Olongapo', 'Zambales', 'Region III', '09171230005', 'mark.flores5@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (6, 'Ms.', 'Cruz', 'Liza', 'Fernandez', NULL, '1998-04-18', '22 Castro St', NULL, 'Sta. Rita', 'Olongapo', 'Zambales', 'Region III', '09171230006', 'liza.cruz6@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (7, 'Mr.', 'Ramos', 'Paolo', 'Navarro', NULL, '1993-09-12', '11 Quezon St', NULL, 'Pag-asa', 'Olongapo', 'Zambales', 'Region III', '09171230007', 'paolo.ramos7@gmail.com', 'INACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (8, 'Mrs.', 'Mendoza', 'Carla', 'Gutierrez', NULL, '1987-02-25', '34 Del Pilar St', NULL, 'Asinan', 'Olongapo', 'Zambales', 'Region III', '09171230008', 'carla.mendoza8@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (9, 'Mr.', 'Aquino', 'Luis', 'Rivera', NULL, '1991-06-07', '67 Aguinaldo St', NULL, 'West Tapinac', 'Olongapo', 'Zambales', 'Region III', '09171230009', 'luis.aquino9@gmail.com', 'SUSPENDED', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (10, 'Ms.', 'Castillo', 'Jenna', 'Morales', NULL, '1996-01-19', '88 Guerrero St', NULL, 'East Tapinac', 'Olongapo', 'Zambales', 'Region III', '09171230010', 'jenna.castillo10@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (11, 'Mr.', 'Villanueva', 'Eric', 'Salazar', NULL, '1989-03-03', '101 Main St', NULL, 'Kalaklan', 'Olongapo', 'Zambales', 'Region III', '09171230011', 'eric.villanueva11@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (12, 'Ms.', 'Domingo', 'Rica', 'Toribio', NULL, '1994-10-22', '202 Sunset Ave', NULL, 'Barretto', 'Olongapo', 'Zambales', 'Region III', '09171230012', 'rica.domingo12@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (13, 'Mr.', 'Pascual', 'Noel', 'Francisco', NULL, '1986-12-15', '303 Beach Rd', NULL, 'New Cabalan', 'Olongapo', 'Zambales', 'Region III', '09171230013', 'noel.pascual13@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (14, 'Mrs.', 'De Leon', 'Grace', 'Ortega', NULL, '1990-07-11', '404 Market St', NULL, 'Gordon Heights', 'Olongapo', 'Zambales', 'Region III', '09171230014', 'grace.deleon14@gmail.com', 'INACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (15, 'Mr.', 'Bautista', 'Ryan', 'Valdez', NULL, '1992-02-09', '505 Hilltop Rd', NULL, 'Sta. Rita', 'Olongapo', 'Zambales', 'Region III', '09171230015', 'ryan.bautista15@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (16, 'Ms.', 'Soriano', 'Kaye', 'Aguilar', NULL, '1997-06-28', '606 Coastal Rd', NULL, 'Pag-asa', 'Olongapo', 'Zambales', 'Region III', '09171230016', 'kaye.soriano16@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (17, 'Mr.', 'Salvador', 'Neil', 'Espino', NULL, '1984-05-05', '707 River Rd', NULL, 'Asinan', 'Olongapo', 'Zambales', 'Region III', '09171230017', 'neil.salvador17@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (18, 'Mrs.', 'Velasco', 'Irene', 'Cortez', NULL, '1983-08-17', '808 Lakeview St', NULL, 'West Tapinac', 'Olongapo', 'Zambales', 'Region III', '09171230018', 'irene.velasco18@gmail.com', 'SUSPENDED', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (19, 'Mr.', 'Miranda', 'Joel', 'Pineda', NULL, '1991-11-23', '909 Garden St', NULL, 'East Tapinac', 'Olongapo', 'Zambales', 'Region III', '09171230019', 'joel.miranda19@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (20, 'Ms.', 'Alvarez', 'Shiela', 'Dominguez', NULL, '1999-09-09', '100 Pine St', NULL, 'Kalaklan', 'Olongapo', 'Zambales', 'Region III', '09171230020', 'shiela.alvarez20@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (21, 'Mr.', 'Navarro', 'Kevin', 'Lim', NULL, '1993-01-01', '21 Palm St', NULL, 'Barretto', 'Olongapo', 'Zambales', 'Region III', '09171230021', 'kevin.navarro21@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (22, 'Ms.', 'Lim', 'Angela', 'Sy', NULL, '1996-02-02', '22 Palm St', NULL, 'Kalaklan', 'Olongapo', 'Zambales', 'Region III', '09171230022', 'angela.lim22@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (23, 'Mr.', 'Sy', 'Adrian', 'Tan', NULL, '1994-03-03', '23 Palm St', NULL, 'Pag-asa', 'Olongapo', 'Zambales', 'Region III', '09171230023', 'adrian.sy23@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (24, 'Mrs.', 'Tan', 'Michelle', 'Go', NULL, '1989-04-04', '24 Palm St', NULL, 'Sta. Rita', 'Olongapo', 'Zambales', 'Region III', '09171230024', 'michelle.tan24@gmail.com', 'INACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (25, 'Mr.', 'Go', 'Brian', 'Chua', NULL, '1990-05-05', '25 Palm St', NULL, 'Asinan', 'Olongapo', 'Zambales', 'Region III', '09171230025', 'brian.go25@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (26, 'Ms.', 'Chua', 'Denise', 'Uy', NULL, '1997-06-06', '26 Palm St', NULL, 'New Cabalan', 'Olongapo', 'Zambales', 'Region III', '09171230026', 'denise.chua26@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (27, 'Mr.', 'Uy', 'Carl', 'Yu', NULL, '1992-07-07', '27 Palm St', NULL, 'East Tapinac', 'Olongapo', 'Zambales', 'Region III', '09171230027', 'carl.uy27@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (28, 'Mrs.', 'Yu', 'Jasmine', 'Ong', NULL, '1988-08-08', '28 Palm St', NULL, 'West Tapinac', 'Olongapo', 'Zambales', 'Region III', '09171230028', 'jasmine.yu28@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (29, 'Mr.', 'Ong', 'Patrick', 'Lee', NULL, '1991-09-09', '29 Palm St', NULL, 'Gordon Heights', 'Olongapo', 'Zambales', 'Region III', '09171230029', 'patrick.ong29@gmail.com', 'SUSPENDED', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (30, 'Ms.', 'Lee', 'Kristine', 'Co', NULL, '1995-10-10', '30 Palm St', NULL, 'Kalaklan', 'Olongapo', 'Zambales', 'Region III', '09171230030', 'kristine.lee30@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (31, 'Mr.', 'Co', 'Allan', 'Dy', NULL, '1987-11-11', '31 Palm St', NULL, 'Barretto', 'Olongapo', 'Zambales', 'Region III', '09171230031', 'allan.co31@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (32, 'Ms.', 'Dy', 'Sheena', 'Tan', NULL, '1998-12-12', '32 Palm St', NULL, 'Sta. Rita', 'Olongapo', 'Zambales', 'Region III', '09171230032', 'sheena.dy32@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (33, 'Mr.', 'Perez', 'Leo', 'Magsino', NULL, '1990-01-13', '90 Horizon St', NULL, 'Pag-asa', 'Olongapo', 'Zambales', 'Region III', '09171230098', 'leo.perez98@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (34, 'Ms.', 'Magsino', 'Trisha', 'Perez', NULL, '1994-02-14', '91 Horizon St', NULL, 'Asinan', 'Olongapo', 'Zambales', 'Region III', '09171230099', 'trisha.magsino99@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (35, 'Mr.', 'Lozada', 'Victor', 'Reyes', NULL, '1986-03-15', '92 Horizon St', NULL, 'Kalaklan', 'Olongapo', 'Zambales', 'Region III', '09171230100', 'victor.lozada100@gmail.com', 'ACTIVE', '2026-04-10 11:47:29', '2026-04-10 11:47:29');
INSERT INTO `customer_raw` VALUES (37, 'Mr.', 'Rivera', 'Monching', 'Carulla', '', '2007-02-02', '1413 Tabacuhan', '', 'Sta. Rita', 'Olongapo City', 'Zambales', 'Region III', '09380703322', 'riveramonchingcarulla@gmail.com', 'ACTIVE', '2026-04-11 21:58:54', '2026-04-11 21:58:54');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `orderdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`order_item_id`) USING BTREE,
  INDEX `fk_item_order`(`order_id`) USING BTREE,
  INDEX `fk_product_id`(`product_id`) USING BTREE,
  CONSTRAINT `fk_item_order` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `stock_quantity` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (0, 'Iphone 12', 23999.00, 0);

SET FOREIGN_KEY_CHECKS = 1;
