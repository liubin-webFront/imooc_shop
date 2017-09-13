CREATE DATABASE IF NOT EXISTS shopImooc;
USE shopImooc;
-- 管理员表
DROP TABLE IF EXISTS imooc_admin;
CREATE TABLE imooc_admin(
  id TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(20) NOT NULL UNIQUE,
  password CHAR(32) NOT NULL,
  email VARCHAR(50)  NOT NULL
);

-- 分类表
DROP TABLE IF EXISTS imooc_category;
CREATE TABLE imooc_category(
  id SMALLINT AUTO_INCREMENT PRIMARY KEY,
  c_name VARCHAR(50) UNIQUE
);
-- 商品表
DROP TABLE IF EXISTS imooc_pro;
CREATE TABLE imooc_pro(
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
  pro_name VARCHAR(50) NOT NULL UNIQUE ,
  pSn VARCHAR(50) NOT NULL UNIQUE,
  pro_sum INT UNSIGNED DEFAULT 1,
  m_price DECIMAL(10, 2) NOT NULL,
  i_price DECIMAL(10, 2) NOT NULL ,
  pro_desc TEXT,
  pro_img VARCHAR(50) NOT NULL ,
  pub_time INT UNSIGNED NOT NULL,
  is_show TINYINT(1) DEFAULT 1,
  is_hot TINYINT(1) DEFAULT 0,
  c_id SMALLINT UNSIGNED NOT NULL
);

-- 用户表
DROP TABLE IF EXISTS imooc_user;
CREATE TABLE imooc_user(
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
  username VARCHAR(20) NOT NULL UNIQUE,
  password VARCHAR(32) NOT NULL ,
  sex ENUM("保密","男", "女") NOT NULL ,
  face VARCHAR(50) NOT NULL,
  regTime INT UNSIGNED NOT NULL
) charset='utf8';

-- 相册表
DROP TABLE IF EXISTS imooc_ablum;
CREATE TABLE imooc_ablum(
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY ,
  pro_id INT UNSIGNED NOT NULL ,
  ablum_path VARCHAR(50) NOT NULL
);