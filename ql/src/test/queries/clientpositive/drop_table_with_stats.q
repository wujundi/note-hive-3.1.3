-- This test verifies that a table could be dropped with columns stats computed
-- The column stats for table without partition will go to TAB_COL_STATS
CREATE DATABASE IF NOT EXISTS tblstatsdb1;
USE tblstatsdb1;
CREATE TABLE IF NOT EXISTS testtable (key STRING, value STRING);
LOAD DATA LOCAL INPATH '../../data/files/kv1.txt' OVERWRITE INTO TABLE testtable;
ANALYZE TABLE testtable COMPUTE STATISTICS FOR COLUMNS key;

CREATE TABLE IF NOT EXISTS TestTable1_n0 (key STRING, value STRING);
LOAD DATA LOCAL INPATH '../../data/files/kv1.txt' OVERWRITE INTO TABLE TestTable1_n0;
ANALYZE TABLE TestTable1_n0 COMPUTE STATISTICS FOR COLUMNS key;

CREATE TABLE IF NOT EXISTS TESTTABLE2_n0 (key STRING, value STRING);
LOAD DATA LOCAL INPATH '../../data/files/kv1.txt' OVERWRITE INTO TABLE TESTTABLE2_n0;
ANALYZE TABLE TESTTABLE2_n0 COMPUTE STATISTICS FOR COLUMNS key;

DROP TABLE tblstatsdb1.testtable;
DROP TABLE tblstatsdb1.TestTable1_n0;
DROP TABLE tblstatsdb1.TESTTABLE2_n0;
DROP DATABASE tblstatsdb1;

CREATE DATABASE IF NOT EXISTS TBLSTATSDB2;
USE TBLSTATSDB2;
CREATE TABLE IF NOT EXISTS testtable (key STRING, value STRING);
LOAD DATA LOCAL INPATH '../../data/files/kv1.txt' OVERWRITE INTO TABLE testtable;
ANALYZE TABLE testtable COMPUTE STATISTICS FOR COLUMNS key;


CREATE TABLE IF NOT EXISTS TestTable1_n0 (key STRING, value STRING);
LOAD DATA LOCAL INPATH '../../data/files/kv1.txt' OVERWRITE INTO TABLE TestTable1_n0;
ANALYZE TABLE TestTable1_n0 COMPUTE STATISTICS FOR COLUMNS key;


CREATE TABLE IF NOT EXISTS TESTTABLE2_n0 (key STRING, value STRING);
LOAD DATA LOCAL INPATH '../../data/files/kv1.txt' OVERWRITE INTO TABLE TESTTABLE2_n0;
ANALYZE TABLE TESTTABLE2_n0 COMPUTE STATISTICS FOR COLUMNS key;


DROP TABLE TBLSTATSDB2.testtable;
DROP TABLE TBLSTATSDB2.TestTable1_n0;
DROP TABLE TBLSTATSDB2.TESTTABLE2_n0;
DROP DATABASE TBLSTATSDB2;

