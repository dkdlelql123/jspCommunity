DROP DATABASE IF EXISTS jspCommunity;
CREATE DATABASE jspCommunity;
USE jspCommunity;
`jspcommunity`

CREATE TABLE `member`(
	id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	regDate DATETIME NOT NULL,
	updateDate DATETIME NOT NULL,
	`name` CHAR(10) NOT NULL,
	`nickname` CHAR(10) NOT NULL,
	email VARCHAR(100) NOT NULL,
	loginId CHAR(50) NOT NULL,
	loginPw VARCHAR(255) NOT NULL,
	adminLevel TINYINT(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '0=Ż������/1=��ȸ��/2=ȸ��/3=����ȸ��/4=������'
	);
	
# ȸ��1 �߰�
INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
`name` = "������",
`nickname` = "��Ʈ����ī��",
email = "dkdlelql123@naver.com",
loginId = "user1",
loginPw = "user1";

# ȸ��2 �߰�
INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
`name` = "������",
`nickname` = "ŷ�޴������",
email = "dkdlelql123@naver.com",
loginId = "user1",
loginPw = "user1";

CREATE TABLE `board`(
	id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	regDate DATETIME NOT NULL,
	updateDate DATETIME NOT NULL,
	`code` CHAR(10) NOT NULL,
	`name` CHAR(10) NOT NULL
	);
	
INSERT INTO `board`
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'notice',
`name` = '��������';


INSERT INTO `board`
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'free',
`name` = '�����Խ���';


INSERT INTO `board`
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'guestBoard',
`name` = '����';
	

CREATE TABLE `article`(
	id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
	regDate DATETIME NOT NULL,
	updateDate DATETIME NOT NULL,
	memberId INT(10) UNSIGNED NOT NULL,
	articleId INT(10) UNSIGNED NOT NULL,
	title CHAR(100) NOT NULL,
	`body` LONGTEXT NOT NULL,
	hitsCount INT(10) UNSIGNED DEFAULT 0
	);
	
INSERT INTO `article`
SET regDate = NOW(),
updateDate = NOW(),
memberId = '1',
articleId = '3',
title = '����1',
`body` = '����1��°�Խù��Դϴ�.';


SELECT * FROM `article`;

UPDATE `article` 
SET memberID = 2
WHERE id = 5;
