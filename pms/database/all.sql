CREATE TABLE PROJECT(
	prjNo	VARCHAR2(50) PRIMARY key,
	prjName	VARCHAR2(50),
	prjGoal	VARCHAR2(200),
	output	VARCHAR2(200),
	outRange	VARCHAR2(200),
	prjStartDate	DATE,
	prjEndDate	DATE,
	prjFinance	NUMBER,
	prjPMNo	VARCHAR2(20),
	prjImportant VARCHAR2(20),
	eqpmnCost NUMBER,
	materialCost NUMBER,
	serviceCost NUMBER,
	indirectCost NUMBER,
	rsrvExpns NUMBER,
	prjRate NUMBER,
	schdlScore NUMBER,
	hrScore NUMBER,
	costScore NUMBER,
	commuScore NUMBER
);
SELECT * FROM calendar;
CREATE TABLE defect(
	defectNo	VARCHAR2(50) PRIMARY KEY,
	defectName	VARCHAR2(100),
	defectContent	VARCHAR2(500),
	prjNo	VARCHAR2(50) REFERENCES project(prjNo)
);

CREATE TABLE scopeStmt(
	scpStmtNo	VARCHAR2(50) PRIMARY KEY,
	scpStmtDate	DATE,
	adtnlCntntTitle	VARCHAR2(50),
	adtnlCntnt	VARCHAR2(1000),
	isApproval	VARCHAR2(50),
	prjNo	VARCHAR2(50) REFERENCES project(prjNo)
);

CREATE TABLE reviewPlan(
	rplanNo	VARCHAR2(50) PRIMARY KEY,
	rplanName	VARCHAR2(50),
	rplanStep	VARCHAR2(20),
	clientRequire	VARCHAR2(200),
	specialNote	VARCHAR2(100),
	rplanNote	VARCHAR2(100),
	requestDate	DATE,
	approvalDate	DATE,
	rplanStatus	VARCHAR2(50),
	prjNo	VARCHAR2(50) REFERENCES project(prjNo)
);

CREATE TABLE riskType(
	riskTypeNo	VARCHAR2(30) PRIMARY KEY,
	riskTypeName	VARCHAR2(50)
);

CREATE TABLE risk(
	riskNo VARCHAR2(50) PRIMARY KEY,
	riskDeg	VARCHAR2(50),
	riskContent	VARCHAR2(500),
	regDate	DATE,
	registrant	VARCHAR2(50),
	riskTypeNo	VARCHAR2(30) REFERENCES riskType(riskTypeNo),
	rplanNo VARCHAR2(50) REFERENCES reviewPlan(rplanNo)
);

CREATE TABLE feedback(
	feedbackNo	VARCHAR2(50) PRIMARY KEY,
	feedbackName	VARCHAR2(50),
	fbStartDate	DATE,
	fbEndDate	DATE,
	fbStep	VARCHAR2(20),
	feedbackItem	VARCHAR2(100),
	fbNote	VARCHAR2(100),
	fbStatus	VARCHAR2(50),
	riskNo	VARCHAR2(50) REFERENCES risk(riskNo)
);

CREATE TABLE roadMap(
	rmNo	VARCHAR2(50) PRIMARY KEY,
	prjNo	VARCHAR2(50) REFERENCES project(prjNo),
	rmName	VARCHAR2(50),
	rmStartDate	DATE,
	rmEndDate	DATE,
	rmCost	NUMBER,
	rmPeriod	NUMBER,
	isCompletion	VARCHAR2(20)
);
SELECT * FROM dept;
DROP TABLE dept;
CREATE TABLE dept(
	deptno VARCHAR2(50) PRIMARY KEY,
	dname	VARCHAR2(50),
	loc	VARCHAR2(50)
);
SELECT * FROM emp;
CREATE TABLE emp(
   empno varchar2(50) PRIMARY KEY,
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
   address varchar(200),
   gender varchar(20),
   email varchar(100),
   auth varchar(20),
   description varchar2(500),
   eImportant varchar2(10),
   deptno varchar(50) REFERENCES dept(deptno)
);

SELECT * FROM prjemplist;
SELECT * FROM emp;
SELECT * FROM project;

CREATE TABLE prjEmpList(
	empno VARCHAR2(50) REFERENCES emp(empno),
	prjNo VARCHAR2(50) REFERENCES project(prjNo)
);
DROP TABLE meetingBoard;
DROP TABLE meetingBoardFile;

CREATE TABLE meetingBoard(
	recordNum NUMBER PRIMARY KEY,
	refno NUMBER,
	recordTitle	VARCHAR2(100),
	recordContent	VARCHAR2(1000),
	writer VARCHAR2(50),
	writerNo VARCHAR2(50),
	mrFileName	VARCHAR2(100),
	recordRegdte	DATE,
	recordUptdte	DATE,
	recordViewCnt	NUMBER,
	prjNo	VARCHAR2(50) REFERENCES project(prjNo)
);

CREATE TABLE chattingRoom(
	chattingRoomNo VARCHAR2(100) PRIMARY KEY,
	chattingContent	VARCHAR2(1000),
	crFileName	VARCHAR2(100),
	crFilePath	VARCHAR2(500),
	crSendDate	DATE
);

CREATE TABLE memberList(
	chattingRoomNo VARCHAR2(100) REFERENCES chattingRoom(chattingRoomNo),
	empno VARCHAR2(50) REFERENCES emp(empno)
);
DROP TABLE outbox;
DROP TABLE outBoxFile;
CREATE TABLE outBox(
	mailNum NUMBER PRIMARY KEY,
	receiver	VARCHAR2(50),
	sender	VARCHAR2(50),
	mailTitle	VARCHAR2(200),
	mailContent	VARCHAR2(2000),
	mailRegdte DATE,
	empno	VARCHAR2(50) REFERENCES emp(empno)
);
SELECT * FROM outbox;
CREATE TABLE outBoxFile(
	mailFilePath	VARCHAR2(100),
	mailFileName	VARCHAR2(100),
	mailRegdte	DATE,
	etc	VARCHAR2(100),
	mailNum	NUMBER REFERENCES outBox(mailNum)
);


CREATE TABLE meetingBoardFile(
	mrFilePath	VARCHAR2(100),
	mrFileName	VARCHAR2(100),
	recordregdte	DATE,
	recorduptdte	DATE,
	etc	VARCHAR2(100),
	recordNum	NUMBER REFERENCES meetingBoard(recordNum)
);

---------------------------------
CREATE SEQUENCE prjNo_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT ALL
INTO project VALUES (
	'P'||prjNo_seq.nextval, 'AEAP_PMS', 'AEAP_PMS를 만든다.',
	'PMS 사이트', '없음', '2022-07-20', '2022-08-23', 5000, 'E1000', '상',
	0, 0, 0, 0, 0, 0, 20, 20, 20, 20)
SELECT * FROM dual;

INSERT 
INTO project VALUES (
	'P'||prjNo_seq.nextval, 'YEJI_PMS', 'YEJI_PMS를 만든다.',
	'PMS 사이트', '없음', '2022-07-20', '2022-08-23', 6000, 'E1001', '상',
	0, 0, 0, 0, 0, 80, 80, 60, 70, 80);
INSERT
INTO project VALUES (
	'P'||prjNo_seq.nextval, 'SY_PMS', 'SY_PMS 만든다.',
	'PMS 사이트', '없음', '2022-07-20', '2022-08-23', 6000, 'E1002', '중',
	0, 0, 0, 0, 0, 60, 75, 70, 75, 80);
	
	
SELECT * FROM project;
INSERT ALL
INTO dept VALUES ('10', '개발1팀', '서울 신림동')
INTO dept VALUES ('20', '개발2팀', '서울 신림동')
INTO dept VALUES ('30', '인사팀', '인천 작전동')
INTO dept VALUES ('40', '디자인팀', '서울 서교동')
INTO dept VALUES ('50', '웹팀', '부산 서면')
INTO dept VALUES ('60', '기획팀', '제주 삼도1동')
INTO dept VALUES ('70', '회계팀', '서울 신림동')
SELECT * FROM dual;

CREATE SEQUENCE empno_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT INTO EMP values('E'||empno_seq.nextval, 'haeun', '1234', '김하은', 'http://www.ikunkang.com/news/photo/202009/32320_21987_1540.jpg',
	'1999-09-09', 'DEVELOPER', '9999', '2022-03-09', 500,'010-1234-5678', '서울시 강서구 월드컵로 풍성빌딩 301호',
	'여자', 'khaeun@naver.com', 'PM','기타사항','중', '10');
INSERT INTO EMP values ('E'||empno_seq.nextval, 'jjangoo', '1235', '신짱구', 'https://pbs.twimg.com/profile_images/945974115671797761/ALdG7xiF_400x400.jpg','2000-03-09', 'SALESMAN', '1111', '2020-04-10',
                       5000,'010-4321-8765', '떡잎마을 와르르맨션', '남자', 'jjnagoo@gmail.com', 'CLERK', '임원', '상', '20');
INSERT INTO EMP values('E'||empno_seq.nextval, 'jjanga', '1235', '신짱아', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2021-09-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 와르르맨션', '여자', 'khaeun@naver.com', 'CLERK', '사원', '하', '30');
INSERT INTO EMP values('E'||empno_seq.nextval, 'chulsu', '1999', '김철수', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2020-04-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 장미아파트', '남자', 'khaeun@naver.com', 'CLERK', '사원', '중', '40'); 

CREATE SEQUENCE rplanNo_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT INTO reviewPlan values(
	'RP'||rplanNo_seq.nextval, '비용관리유지보수','설계','비용관리 ui를 수정했으면 함', '없음', 'AEAP PMS제작','2022-07-21','2022-07-22','승인', 'P1000');

INSERT ALL
INTO riskType values('R1000', '일정관리')
INTO riskType values('R1001', '인적자원')
INTO riskType values('R1002', '비용관리')
INTO riskType values('R1003', '의사소통관리')
INTO riskType values('R1004', '기타')
SELECT * FROM dual;

CREATE SEQUENCE risk_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT INTO risk values(
	'R'||risk_seq.nextval, '상', '비용관리 ui 가시성 저하', '2022-07-23', '김하은', 'R1004', 'RP1000'
);

CREATE SEQUENCE feedback_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT INTO feedback values(
	'F'||feedback_seq.nextval, 'ui 가시성 개선', '2022-07-25', '2022-07-31', '완료', '비용관리 ui 가시성 개선', '없음', '승인', 'R1000'
);

CREATE SEQUENCE defect_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT INTO defect values(
	'D'||defect_seq.nextval, '랜섬웨어 감염', '랜섬웨어 감염으로 프로그램 동작 불가', 'P1000'
);

CREATE SEQUENCE scopeStmt_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT INTO scopeStmt values(
	'S'||scopeStmt_seq.nextval, '2022-07-20', 'AEAP_PMS 범위기술서', 'AEAP_PMS 범위기술서 입니다.',
	'승인', 'P1000'
);
SELECT * FROM project;
SELECT * FROM emp;
INSERT INTO prjEmpList values(
	'E1000', 'P1000'
);

INSERT INTO prjEmpList values(
	'E1002', 'P1002'
);
INSERT INTO prjEmpList values(
	'E1004', 'P1003'
);
INSERT INTO prjEmpList values(
	'E1005', 'P1001'
);

SELECT * FROM prjemplist;
CREATE SEQUENCE meetingBoard_seq
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	MAXVALUE 9999999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT INTO meetingBoard values(
	meetingBoard_seq.nextval, 0,'0720 코드리뷰', '프론트 엔드 진행사항 점검', '김하은', 'E1001', '', sysdate,sysdate, 0, 'P1000'
);

-- chattingRoom이랑 memberList 테이블은 나중에 예지씨가 담당

CREATE SEQUENCE outBox_seq
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	MAXVALUE 9999999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT INTO outBox values(
	outBox_seq.nextval, '신짱구', '김하은', '업무 내용 보고', '업무 내용 보고입니다.', '2022-07-30', 'E1001' 
);

-- 08/17 하은 추가
-- 파일업로드
CREATE TABLE empfile(
	no NUMBER,
	path varchar2(100),
	fname varchar2(100),
	regdte DATE,
	uptdte DATE,
	etc varchar2(200)		
);



SELECT * FROM outBox;
SELECT * FROM calendar;

