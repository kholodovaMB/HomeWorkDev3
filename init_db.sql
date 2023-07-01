{\rtf1\ansi\ansicpg1251\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 CREATE TABLE  worker (\
  ID INT PRIMARY KEY AUTO_INCREMENT,\
  NAME VARCHAR(1000) NOT NULL CHECK (LENGTH(NAME) >= 2 AND LENGTH(NAME) <= 1000),\
  BIRTHDAY DATE CHECK (YEAR(BIRTHDAY) > 1900),\
  LEVEL VARCHAR(20) NOT NULL CHECK (LEVEL IN ('Trainee', 'Junior', 'Middle', 'Senior')),\
  SALARY INT CHECK (SALARY >= 100 AND SALARY <= 100000)\
);\
\
CREATE TABLE  client (\
  ID INT PRIMARY KEY AUTO_INCREMENT,\
  NAME VARCHAR(1000) NOT NULL CHECK (LENGTH(NAME) >= 2 AND LENGTH(NAME) <= 1000)\
);\
\
CREATE TABLE  project (\
  ID INT PRIMARY KEY AUTO_INCREMENT,\
  CLIENT_ID INT,\
  START_DATE DATE,\
  FINISH_DATE DATE,\
  FOREIGN KEY (CLIENT_ID) REFERENCES client(ID)\
);\
\
CREATE TABLE  project_worker (\
  PROJECT_ID INT,\
  WORKER_ID INT,\
  PRIMARY KEY (PROJECT_ID, WORKER_ID),\
  FOREIGN KEY (PROJECT_ID) REFERENCES project(ID),\
  FOREIGN KEY (WORKER_ID) REFERENCES worker(ID)\
);}