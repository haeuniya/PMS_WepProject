CREATE TABLE Test(
	testId varchar2(20),
	testPw varchar2(20)
);
INSERT INTO test values('testId', '1234');

DROP TABLE test;
SELECT * FROM test;

DROP TABLE EMP;
CREATE TABLE emp(
	empno varchar2(20) PRIMARY KEY,
	id varchar2(20) UNIQUE,
	pw varchar2(20),
	ename varchar2(20),
	eimage varchar2(100),
	birth DATE,
	job varchar2(20),
	mgr varchar2(20),
	hiredate DATE,
	sal NUMBER,
	phoneNum varchar2(20),
	address varchar2(100),
	deptno varchar2(20),
	gender varchar2(20),
	email varchar2(100),
	auth varchar2(20),
	description varchar2(500)
);
INSERT INTO emp values('1111', 'yaho', '1234', 'HAEUN', 'http://www.ikunkang.com/news/photo/202009/32320_21987_1540.jpg','1999-09-09', 'DEVELOPER', '9999', '2022-03-09',
                       5000,'010-1234-5678', '서울시 강서구 월드컵로 풍성빌딩 301호', '0001', '여자', 'khaeun@naver.com', 'ADMIN', '안녕하세요 신입사원이에요');
SELECT * FROM EMP;
SELECT * FROM AEAPEMP;


-- 2022.08.11

-- 프로젝트
CREATE TABLE AEAPPROJECT(
	prjNo varchar(30),
	prjName varchar(50),
	prjGoal varchar(200),
	OUTPUT varchar(200),
	outRange varchar(200),
	prjStartDate DATE,
	PRJEndDate DATE,
	prjFinance NUMBER, 
	prjPMName varchar(20),
	prjImportant varchar(20)
);

-- 사원 
CREATE TABLE AEAPEMP(
	empno varchar2(20) PRIMARY KEY,
	id varchar2(20) UNIQUE,
	pw varchar2(20),
	ename varchar2(20),
	eimage varchar2(100),
	birth DATE,
	job varchar2(20),
	mgr varchar2(20),
	hiredate DATE,
	sal NUMBER,
	phoneNum varchar(20),
	address varchar(100),
	deptno varchar(20),
	gender varchar(20),
	email varchar(100),
	auth varchar(20),
	eImportant varchar(10)
);
INSERT INTO AEAPEMP values('1111', 'yaho', '1234', 'HAEUN', 'http://www.ikunkang.com/news/photo/202009/32320_21987_1540.jpg','1999-09-09', 'DEVELOPER', '9999', '2022-03-09',
                       5000,'010-1234-5678', '서울시 강서구 월드컵로 풍성빌딩 301호', '0001', '여자', 'khaeun@naver.com', 'ADMIN');
INSERT INTO AEAPEMP values('2222', 'JJANGOO', '1235', 'JJANGOO', 'http://www.ikunkang.com/news/photo/202009/32320_21987_1540.jpg','1999-09-09', 'SALESMAN', '1111', '2020-04-10',
                       5000,'010-4321-8765', '떡잎마을 와르르맨션', '0002', '남자', 'jjnagoo@gmail.com', 'CLERK');    
                       
-- 일정관리
CREATE TABLE AEAPSCHEDULE(
	empno varchar(20),
	id varchar(20),
	prjNo varchar(30),
	schdlNo varchar(20),
	schdlName varchar(50),
	schdlStartDate DATE,
	schdlEndDate DATE,
	achvmRate NUMBER
);

SELECT * FROM EMP;

SELECT * FROM EMP;
DROP TABLE emp;

