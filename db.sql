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
	adminLevel TINYINT(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '0=탈퇴유저/1=비회원/2=회원/3=인증회원/4=관리자'
	);
	
# 회원1 추가
INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
`name` = "남예지",
`nickname` = "울트라피카추",
email = "dkdlelql123@naver.com",
loginId = "user1",
loginPw = "user1";

# 회원2 추가
INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
`name` = "강진영",
`nickname` = "킹받는잰민이",
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
`name` = '공지사항';


INSERT INTO `board`
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'free',
`name` = '자유게시판';


INSERT INTO `board`
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'guestBoard',
`name` = '방명록';
	

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
title = '방명록1',
`body` = '방명록1번째게시물입니다.';


SELECT * FROM `article`;

UPDATE `article` 
SET memberID = 2
WHERE id = 5;
