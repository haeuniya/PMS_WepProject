SELECT * FROM emp;

SELECT * FROM project;
DROP TABLE project;
----------------------------------------------------------------여기서부터 all
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

---------------------------------------------------------------------------------------------여기까지 all







SELECT * FROM EMP;
DELETE 
-- 프로젝트 시작일
SELECT min(START1)
FROM calendar
WHERE prjNo = 'P1000';
-- 프로젝트 종료일
SELECT max(end1)
FROM calendar
WHERE prjNo = 'P1000';

SELECT p.PRJSTARTDATE 
FROM calendar c, project p
WHERE c.prjNo = p.prjNo
AND p.prjNo = 'P1000';

SELECT count(*)
FROM calendar c, project p
WHERE c.prjNo = p.prjNo
AND p.prjNo = 'P1000';

SELECT * FROM project;

-- 기존 프로젝트 시작일 --
SELECT PRJSTARTDATE 
FROM PROJECT 
WHERE PRJNO = 'P1000';
-- 바꿀 프로젝트 시작일
SELECT min(START1)
FROM calendar
WHERE prjNo = 'P1000';

-- 프로젝트 시작일 업데이트문 --
UPDATE PROJECT 
SET PRJSTARTDATE  =
(SELECT min(START1)
FROM calendar
WHERE prjNo = 'P1000')
WHERE PRJNO = 'P1000';


/*
Calender 테이블 : 날짜가 String 형식
Project 테이블 : 날짜가 Date 형식

Calendar Mapper작성
<select id="getPrjStart" parameterType="calendar" resultType="date">
	SELECT min(START1)
	FROM calendar
	WHERE prjNo = #{prjNo}
</select>

Calender객체에서 가져온 String 형식의 날짜를 Project객체의 Date 형식의 날짜에 넣기

바꿀 프로젝트 시작일 가져오기 -> dao : public date getPrjStart(Calendar cal)  /  public date getPrjStart(Calendar cal)
기존의 프로젝트 시작일(필드값)을 바꿀 시작일로 바꾸기 -> service : 

public List<Project> getProjectList(Project sch){
		sch.sePrjstartdate(daoPRJ.getPrjStart(sch));
		return daoPRJ.getProjectList(sch);
	}	
*/



SELECT START1
FROM CALENDAR c
WHERE PRJNO ='P1000'
ORDER BY START1;

SELECT * FROM calendar;

insert into calendar (id,title,start1,end1,content,borderColor,
		backgroundColor,textColor,allDay,rmperiod, prjNo) values(cal_seq.nextval,'기간테스트','2022-08-09',
			'2022-09-10','0821test',null,'yellow','white',
			0,floor(to_date(END1,'yyyy-mm-dd')-to_date(START1,'yyyy-mm-dd')),'E1000');
		
CREATE TABLE test01(
	startd varchar2(50),	
	endd varchar2(50),	
	period number
);
INSERT INTO test01 values('2022-07-08','2022-08-09',10);
SELECT * FROM test01;
INSERT INTO test01 values('2022-07-08','2022-08-09',to_date(endd,'yyyy-mm-dd')-to_date(startd,'yyyy-mm-dd'));

-- 로드맵 기간 --
UPDATE calendar a
SET a.RMPERIOD =
(SELECT to_date(END1,'yyyy-mm-dd')-to_date(START1,'yyyy-mm-dd')+1 rm
FROM CALENDAR b
WHERE a.id = b.id);


SELECT id, to_date(END1,'yyyy-mm-dd')-to_date(START1,'yyyy-mm-dd')+1 rm
FROM calendar;



SELECT to_date(END1,'yyyy-mm-dd')-to_date(START1,'yyyy-mm-dd')+1
FROM CALENDAR c;

SELECT * FROM CALENDAR c ;

SELECT to_date(END1,'yyyy-mm-dd')-to_date(START1,'yyyy-mm-dd')
FROM CALENDAR
WHERE id = '44';

/*
SELECT to_date(END1,'yyyy-mm-dd')-to_date(START1,'yyyy-mm-dd')
FROM CALENDAR
WHERE id = #{id}

UPDATE calendar
SET RMPERIOD =
(SELECT to_date(END1,'yyyy-mm-dd')-to_date(START1,'yyyy-mm-dd')
FROM CALENDAR
WHERE id = #{id})
WHERE id = #{id}
*/
SELECT * FROM emp;

INSERT INTO EMP values('E'||empno_seq.nextval, 'haeun', '1234', '김하은', 'http://www.ikunkang.com/news/photo/202009/32320_21987_1540.jpg',
	'1999-09-09', 'DEVELOPER', '9999', '2022-03-09', 500,'010-1234-5678', '서울시 강서구 월드컵로 풍성빌딩 301호',
	'여자', 'khaeun@naver.com', 'PM','기타사항','중', '10');
INSERT INTO EMP values ('E'||empno_seq.nextval, 'jjangoo', '1235', '신짱구', 'https://pbs.twimg.com/profile_images/945974115671797761/ALdG7xiF_400x400.jpg','2000-03-09', 'SALESMAN', '1111', '2020-04-10',
                       5000,'010-4321-8765', '떡잎마을 와르르맨션', '남자', 'jjnagoo@gmail.com', 'CLERK', '임원', '상', '20');
INSERT INTO EMP values('E'||empno_seq.nextval, 'jjanga', '1235', '신짱아', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2021-09-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 와르르맨션', '여자', 'khaeun@naver.com', 'CLERK', '사원', '하', '30');
INSERT INTO EMP values('E'||empno_seq.nextval, 'chulsu', '1999', '김철수', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2020-04-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 장미아파트', '남자', 'khaeun@naver.com', 'CLERK', '사원', '중', '40'); 
DROP TABLE emp;

UPDATE emp
SET ename = '이준혁'
WHERE empno = 'E1049';

UPDATE emp
SET eimage = 'https://t1.daumcdn.net/cfile/tistory/23139F39576697070F'
WHERE empno = 'E1051';

UPDATE emp
SET ename = '마동석'
WHERE empno = 'E1051';

UPDATE emp
SET job = '디자인'
WHERE empno = 'E1003';

UPDATE emp
SET auth = '사원'
WHERE empno = 'E1003';

UPDATE emp
SET  eimage = '사원'
WHERE empno = 'E1001';

-- 08/21 --
SELECT * FROM calendar;
SELECT * FROM CALENDAR 
WHERE prjNo = 'P1000';


-- 08/20 --
-- 달성률 수정
SELECT * FROM project; 

UPDATE PROJECT 
SET PRJPMNO = 'E1001'
WHERE prjno = 'P1004';

UPDATE PROJECT 
SET PRJRATE = 80
WHERE prjno = 'P1002';

UPDATE PROJECT 
SET PRJNAME ='PROJECT MANAGEMENT'
WHERE prjno = 'P1004';

UPDATE PROJECT 
SET PRJENDDATE ='2022-09-01'
WHERE prjno = 'P1002';


UPDATE PROJECT 
SET PRJIMPORTANT = '상'
WHERE prjno = 'P1009';

UPDATE PROJECT 
SET PRJSTARTDATE ='2022-06-01'
WHERE prjno = 'P1009';

UPDATE PROJECT 
SET PRJENDDATE ='2022-08-10'
WHERE prjno = 'P1009';

UPDATE PROJECT 
SET PRJRATE = 40
WHERE prjno = 'P1005';

DELETE FROM PROJECT
WHERE prjno = '2000000000';

DELETE FROM PROJECT
WHERE prjno = 'TEST01';



-- 페이징 처리 --
-- rownum = 내장된 keyword --
SELECT *
FROM (
	SELECT rownum cnt, emp.* 
	FROM emp
	WHERE 1=1
)
WHERE cnt BETWEEN 1 AND 5;

SELECT count(*)
FROM emp
WHERE 1=1
AND ename LIKE 'TESTER';

/*
SELECT count(*)
FROM emp
WHERE 1=1
<if test="ename != null">  
AND ename LIKE '%'||#{ename}||'%' 
</if>
<if test="job != null">  
AND job LIKE '%'||#{job}||'%' 
</if>
*/


-- 파일 --
SELECT * FROM emp;
SELECT * FROM empfile;


SELECT * FROM project
WHERE prjNo = 'P1004';

SELECT c.start1, c.end1, p.prjNo
FROM CALENDAR c, project p
WHERE p.prjNo = c.prjNo;

SELECT c.start1, c.end1
FROM CALENDAR c, project p
WHERE p.prjNo = c.prjNo
AND prjNo = 'P1000';



SELECT f.fname, e.ename
FROM empfile f, emp e
WHERE emp.EMPNO = 'E1001';

SELECT * FROM empfile;

SELECT e.ename, f.fname
FROM EMP e, EMPFILE f
WHERE e.EMPNO = f.NO(+);

/*
SELECT e.ename, f.fname
FROM EMP e, EMPFILE f
WHERE e.EMPNO = f.NO(+)
*/


SELECT p.prjName
FROM aeapproject p, fullcalendar c 
WHERE p.prjNo = c.prjNo
AND p.prjno = 'P1008';
-- 08/19 localhost에서 실헝 --
-- 프로젝트 --
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

INSERT INTO PROJECT VALUES(
	'P'||prjNo_seq.nextval, '08/18테스트용', 'AEAP_PMS를 만든다.',
	'PMS 사이트', '없음', '2022-08-18', '2022-08-23', 5000, 'A1000', '상',
	0, 0, 0, 0, 0, 0, 20, 20, 20, 20);

DROP TABLE PROJECT;
SELECT * FROM project;
-- 캘린더 데이터 --
CREATE TABLE calendar (
	id number PRIMARY KEY,
	title varchar2(100),
	start1 varchar2(50),
	end1 varchar2(50),
	content varchar2(500),
	bordercolor varchar2(20),
	backgroundcolor varchar2(20),
	textcolor varchar2(20),
	allday number(1),
	rmCost	NUMBER,
	rmPeriod	NUMBER,
	isCompletion	VARCHAR2(20),
	prjNo varchar2(50) REFERENCES project(prjNo)
);
SELECT * FROM CALENDAR;

INSERT INTO calendar values(cal_seq.nextval,'테스트일정','2022-01-10','2022-07-10','content',
	'navy','pink','white',
	1,100,50,'완료','P1018');

INSERT INTO calendar values(cal_seq.nextval,'요구사항정의서일정','2022-08-10','2022-08-30','content',
	'navy','pink','white',
	1,10,60,'미완료','P1018');

INSERT INTO calendar values(cal_seq.nextval,'화면설계서일정','2022-08-15','2022-08-19','content',
	'navy','pink','white',
	0,20,70,'완료','P1018');

INSERT INTO calendar values(cal_seq.nextval,'백엔드일정','2022-08-3','2022-09-01','content',
	'navy','pink','white',
	0,90,40,'미완료','P1018');

SELECT * FROM project;
SELECT * FROM calendar;

-- DEPT --
CREATE TABLE dept0(
	deptno VARCHAR2(50) PRIMARY KEY,
	dname	VARCHAR2(50),
	loc	VARCHAR2(50)
);


INSERT ALL
INTO dept0 VALUES ('10', '개발1팀', '서울 신림동')
INTO dept0 VALUES ('20', '개발2팀', '서울 신림동')
INTO dept0 VALUES ('30', '인사팀', '인천 작전동')
INTO dept0 VALUES ('40', '디자인팀', '서울 서교동')
INTO dept0 VALUES ('50', '웹팀', '부산 서면')
INTO dept0 VALUES ('60', '기획팀', '제주 삼도1동')
INTO dept0 VALUES ('70', '회계팀', '서울 신림동')
SELECT * FROM dual;

-- EMP --
CREATE TABLE emp0(
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
   deptno varchar(50) REFERENCES dept0(deptno)
);

CREATE SEQUENCE empno_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

SELECT * FROM EMP0;


INSERT INTO EMP0 values('E'||empno_seq.nextval, 'haeun', '1234', '김하은', 'http://www.ikunkang.com/news/photo/202009/32320_21987_1540.jpg',
	'1999-09-09', 'DEVELOPER', '9999', '2022-03-09', 500,'010-1234-5678', '서울시 강서구 월드컵로 풍성빌딩 301호',
	'여자', 'khaeun@naver.com', 'PM','기타사항','중', '10');
INSERT INTO EMP0 values ('E'||empno_seq.nextval, 'jjangoo', '1235', '신짱구', 'https://pbs.twimg.com/profile_images/945974115671797761/ALdG7xiF_400x400.jpg','2000-03-09', 'SALESMAN', '1111', '2020-04-10',
                       5000,'010-4321-8765', '떡잎마을 와르르맨션', '남자', 'jjnagoo@gmail.com', 'CLERK', '임원', '상', '20');
INSERT INTO EMP0 values('E'||empno_seq.nextval, 'jjanga', '1235', '신짱아', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2021-09-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 와르르맨션', '여자', 'khaeun@naver.com', 'CLERK', '사원', '하', '30');
INSERT INTO EMP0 values('E'||empno_seq.nextval, 'chulsu', '1999', '김철수', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2020-04-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 장미아파트', '남자', 'khaeun@naver.com', 'CLERK', '사원', '중', '40'); 






-- 최종 데이터 local에서 실험--
CREATE TABLE AEAPPROJECT(
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

-- 로드맵
CREATE TABLE roadMap(
	rmNo	VARCHAR2(50) PRIMARY KEY,
	prjNo	VARCHAR2(50) REFERENCES AEAPPROJECT(prjNo),
	rmName	VARCHAR2(50),
	rmStartDate	DATE,
	rmEndDate	DATE,
	rmCost	NUMBER,
	rmPeriod	NUMBER,
	isCompletion	VARCHAR2(20)
);

-- FILE
SELECT * FROM EMPFILE;

CREATE TABLE empfile(
	no NUMBER,
	path varchar2(100),
	fname varchar2(100),
	regdte DATE,
	uptdte DATE,
	etc varchar2(200)	
);

SELECT * FROM empfile;


SELECT 


-- 캘린더 데이터 --
CREATE TABLE calendar (
	id number PRIMARY KEY,
	title varchar2(100),
	start1 varchar2(50),
	end1 varchar2(50),
	content varchar2(500),
	bordercolor varchar2(20),
	backgroundcolor varchar2(20),
	textcolor varchar2(20),
	allday number(1),
	rmCost	NUMBER,
	rmPeriod	NUMBER,
	isCompletion	VARCHAR2(20),
	prjNo varchar2(50) REFERENCES project(prjNo)
);


CREATE SEQUENCE cal_seq
	START WITH 1
	MINVALUE 1;
SELECT * FROM CALENDAR;

INSERT INTO calendar values(cal_seq.nextval,'테스트일정','2022-01-10','2022-07-10','content',
	'navy','pink','white',
	1,100,50,'완료','P1000');

INSERT INTO calendar values(cal_seq.nextval,'요구사항정의서일정','2022-08-10','2022-08-30','content',
	'navy','pink','white',
	1,10,60,'미완료','P1000');

INSERT INTO calendar values(cal_seq.nextval,'화면설계서일정','2022-08-15','2022-08-19','content',
	'navy','pink','white',
	0,20,70,'완료','P1000');

INSERT INTO calendar values(cal_seq.nextval,'백엔드일정','2022-08-3','2022-09-01','content',
	'navy','pink','white',
	0,90,40,'미완료','P1000');


SELECT * FROM calendar;


SELECT * FROM project;

insert into fullcalendar values(fullcal_seq.nextval, 'P1008', '0817캘린더테스트','2022-08-17',
				'2022-07-21','내용','navy','pink','yellow',1);



-- 캘린더 데이터 test용 (프로젝트 id추가) --
CREATE TABLE fullcalendar (
	id number PRIMARY KEY,
	prjNo	VARCHAR2(50) REFERENCES AEAPPROJECT(prjNo),
	title varchar2(100),
	start1 varchar2(50),
	end1 varchar2(50),
	content varchar2(500),
	bordercolor varchar2(20),
	backgroundcolor varchar2(20),
	textcolor varchar2(20),
	allday number(1)
);
CREATE SEQUENCE fullcal_seq
	START WITH 1
	MINVALUE 1;

SELECT * FROM fullcalendar;
SELECT * FROM AEAPPROJECT;
SELECT * FROM AEAPEMP;
insert into fullcalendar values(fullcal_seq.nextval, 'P1008', '0817캘린더테스트','2022-08-17',
				'2022-07-21','내용','navy','pink','yellow',1);
insert into fullcalendar values(fullcal_seq.nextval, 'P1009', '0817캘린더테스트','2022-08-17',
				'2022-07-21','내용','navy','pink','yellow',1);
DELETE FROM fullcalendar WHERE prjNo ='P1008';
DELETE FROM fullcalendar WHERE prjNo ='P1009';

SELECT p.prjName, c.*
FROM aeapproject p, fullcalendar c 
WHERE p.prjNo = c.prjNo
AND p.prjno = 'P1008';


SELECT p.prjName
FROM aeapproject p, fullcalendar c 
WHERE p.prjNo = c.prjNo
AND p.prjno = 'P1008';

/*
SELECT p.prjName, c.*
FROM aeapproject p, fullcalendar c 
WHERE p.prjNo = c.prjNo
AND p.prjno = #{prjNo}
*/

SELECT count(*)
FROM aeapproject p, fullcalendar c 
WHERE p.prjNo = c.prjNo
AND p.prjno = 'P1008';


SELECT c.*
FROM aeapproject p, fullcalendar c 
WHERE p.prjNo = 'P1008';

SELECT * FROM AEAPPROJECT;
DROP TABLE AEAPPROJECT; 
-- 프로젝트 등록
INSERT INTO AEAPPROJECT(prjNo, prjName, prjGoal, output, outRange, prjPMNo, prjImportant) 
VALUES ('prjNo','prjName','prjGoal','output', 'outRange', 'prjPMNo', 'prjImportant');
DELETE FROM AEAPPROJECT WHERE PRJNO = prjNo;
/*
INSERT INTO AEAPPROJECT(prjNo, prjName, prjGoal, output, outRange, prjPMNo, prjImportant) 
VALUES (#{prjNo},#{prjName},#{prjGoal},#{output}, #{outRange}, #{prjPMNo}, #{prjImportant})
*/

INSERT INTO AEAPPROJECT VALUES (
	'P'||prjNo_seq.nextval, 'AEAP_PMS', 'AEAP_PMS를 만든다.',
	'PMS 사이트', '없음', '2022-07-20', '2022-08-23', 5000, 'E1000', '상',
	0, 0, 0, 0, 20, 50, 20, 20, 20, 20);

INSERT INTO AEAPPROJECT VALUES (
	'P'||prjNo_seq.nextval, '키오스크프로젝트', '키오스크프로젝트를 만든다.',
	'PMS 사이트', '없음', '2022-07-20', '2022-08-23', 5000, 'E1000', '상',
	0, 0, 0, 0, 20, 80, 20, 20, 20, 20);

INSERT INTO AEAPPROJECT VALUES (
	'P'||prjNo_seq.nextval, '카카오외주프로젝트', '카카오외주프로젝트를 만든다.',
	'PMS 사이트', '없음', '2022-07-20', '2022-08-23', 5000, 'E1000', '상',
	0, 0, 0, 0, 20, 40, 20, 20, 20, 20);

INSERT INTO AEAPPROJECT VALUES (
	'P'||prjNo_seq.nextval, '신한은행 프로젝트', '금융프로젝트를 만든다.',
	'PMS 사이트', '없음', '2022-08-29', '2022-09-23', 4000, 'E2000', '중',
	0, 0, 0, 0, 20, 70, 20, 20, 20, 20);

INSERT INTO AEAPPROJECT VALUES (
	'P'||prjNo_seq.nextval, '빅데이터 프로젝트', '빅데이터프로젝트를 만든다.',
	'PMS 사이트', '없음', '2022-08-29', '2022-09-23', 8000, 'E2000', '중',
	0, 0, 0, 0, 20, 50, 20, 20, 20, 20);

INSERT INTO AEAPPROJECT VALUES (
	'P'||prjNo_seq.nextval, '딥러닝 프로젝트', '딥러닝프로젝트를 만든다.',
	'PMS 사이트', '없음', '2022-09-29', '2022-01-23', 8000, 'E2000', '중',
	0, 0, 0, 0, 20, 10, 20, 20, 20, 20);

INSERT INTO AEAPPROJECT VALUES (
	'P'||prjNo_seq.nextval, '프론트엔드 프로젝트', '프론트엔드프로젝트를 만든다.',
	'PMS 사이트', '없음', '2022-08-29', '2022-09-23', 8000, 'E2000', '중',
	0, 0, 0, 0, 20, 70, 20, 20, 20, 20);

INSERT INTO AEAPPROJECT VALUES (
	'P'||prjNo_seq.nextval, '프론트엔드 프로젝트', '프론트엔드프로젝트를 만든다.',
	'PMS 사이트', '없음', '2022-10-29', '2022-11-23', 1000, 'E2000', '중',
	0, 0, 0, 0, 20, 30, 20, 20, 20, 20);

-- 프로젝트 조회
SELECT *
FROM AEAPPROJECT 
WHERE 1=1
AND prjNo LIKE 'prjNo'
AND prjName LIKE 'prjName'
AND prjPMNo LIKE 'prjPMNo'
ORDER BY prjNo desc;
/*
SELECT *
FROM AEAPPROJECT 
WHERE 1=1
AND prjNo LIKE '%'||''||'%'
AND prjName LIKE '%'||''||'%'
AND prjPMNo LIKE '%'||''||'%'
ORDER BY prjNo desc;
*/

SELECT * FROM AEAPPROJECT;




-- 인력 여자/남자 비율
SELECT count(*)
FROM AEAPEMP
WHERE 
gender = '여자';

SELECT count(*)
FROM AEAPEMP
WHERE 
gender = '남자';

-- 인력 중요도
SELECT count(*)
FROM AEAPEMP
WHERE 
Important = '중';




SELECT * FROM AEAPEMP;
DELETE FROM AEAPEMP WHERE EMPNO  = 'ffff';



-- 8/16 --
DROP sequence AEAPEMP_seq;
DROP TABLE AEAPEMP;
SELECT * FROM AEAPEMP;

CREATE TABLE AEAPDEPT(
	deptno VARCHAR2(50) PRIMARY KEY,
	dname	VARCHAR2(50),
	loc	VARCHAR2(50)
);

CREATE TABLE AEAPEMP(
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
   deptno varchar(50)
);

CREATE SEQUENCE empno_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT ALL
INTO AEAPDEPT VALUES ('10', '개발1팀', '서울 신림동')
INTO AEAPDEPT VALUES ('20', '개발2팀', '서울 신림동')
INTO AEAPDEPT VALUES ('30', '인사팀', '인천 작전동')
INTO AEAPDEPT VALUES ('40', '디자인팀', '서울 서교동')
INTO AEAPDEPT VALUES ('50', '웹팀', '부산 서면')
INTO AEAPDEPT VALUES ('60', '기획팀', '제주 삼도1동')
INTO AEAPDEPT VALUES ('70', '회계팀', '서울 신림동')
SELECT * FROM dual;

SELECT * FROM AEAPEMP;
SELECT SEQUENCE empno_seq;

INSERT INTO AEAPEMP values('E'||empno_seq.nextval, 'haeun', '1234', '김하은', 'http://www.ikunkang.com/news/photo/202009/32320_21987_1540.jpg',
	'1999-09-09', 'DEVELOPER', '9999', '2022-03-09', 500,'010-1234-5678', '서울시 강서구 월드컵로 풍성빌딩 301호',
	'여자', 'khaeun@naver.com', 'PM','기타사항','중', '10');
INSERT INTO AEAPEMP values ('E'||empno_seq.nextval, 'jjangoo', '1235', '신짱구', 'https://pbs.twimg.com/profile_images/945974115671797761/ALdG7xiF_400x400.jpg','2000-03-09', 'SALESMAN', '1111', '2020-04-10',
                       5000,'010-4321-8765', '떡잎마을 와르르맨션', '남자', 'jjnagoo@gmail.com', 'CLERK', '임원', '상', '20');
INSERT INTO AEAPEMP values('E'||empno_seq.nextval, 'jjanga', '1235', '신짱아', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2021-09-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 와르르맨션', '여자', 'khaeun@naver.com', 'CLERK', '사원', '하', '30');
INSERT INTO AEAPEMP values('E'||empno_seq.nextval, 'chulsu', '1999', '김철수', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2020-04-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 장미아파트', '남자', 'khaeun@naver.com', 'CLERK', '사원', '중', '40'); 
         

                      
                      
SELECT * FROM empfile;

SELECT e.*, f.fname
FROM EMP e, EMPFILE f
WHERE e.EMPNO = f.NO(+);


                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      

-- test 한데까지 --

CREATE TABLE defect(
	defectNo	VARCHAR2(50) PRIMARY KEY,
	defectName	VARCHAR2(100),
	defectContent	VARCHAR2(500),
	prjNo	VARCHAR2(50) REFERENCES project(prjNo)
);

DROP TABLE defect;

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

CREATE TABLE dept(
	deptno VARCHAR2(50) PRIMARY KEY,
	dname	VARCHAR2(50),
	loc	VARCHAR2(50)
);

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

CREATE TABLE prjEmpList(
	empno VARCHAR2(50) REFERENCES emp(empno),
	prjNo VARCHAR2(50) REFERENCES project(prjNo)
)


CREATE TABLE meetingBoard(
	recordNum NUMBER PRIMARY KEY,
	recordTitle	VARCHAR2(100),
	recordContent	VARCHAR2(1000),
	writer VARCHAR2(50),
	writerNo VARCHAR2(50),
	mrFileName	VARCHAR2(100),
	recordDate	DATE,
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
CREATE TABLE outBox(
	mailNum NUMBER PRIMARY KEY,
	receiver	VARCHAR2(50),
	sender	VARCHAR2(50),
	mailTile	VARCHAR2(200),
	mailContent	VARCHAR2(2000),
	mailRegdte DATE,
	empno	VARCHAR2(50) REFERENCES emp(empno)
);

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

INSERT INTO AEAPPROJECT VALUES (
	'P'||prjNo_seq.nextval, 'AEAP_PMS', 'AEAP_PMS를 만든다.',
	'PMS 사이트', '없음', '2022-07-20', '2022-08-23', 5000, 'E1000', '상',
	0, 0, 0, 0, 0, 0, 20, 20, 20, 20);
SELECT * FROM AEAPPROJECT;

INSERT ALL
INTO project VALUES (
	'P'||prjNo_seq.nextval, 'AEAP_PMS', 'AEAP_PMS를 만든다.',
	'PMS 사이트', '없음', '2022-07-20', '2022-08-23', 5000, 'E1000', '상',
	0, 0, 0, 0, 0, 0, 20, 20, 20, 20)
SELECT * FROM dual;

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

INSERT INTO prjEmpList values(
	'E1001', 'P1000'
);

CREATE SEQUENCE meetingBoard_seq
	INCREMENT BY 1
	START WITH 1
	MINVALUE 1
	MAXVALUE 9999999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT INTO meetingBoard values(
	meetingBoard_seq.nextval, '0720 코드리뷰', '프론트 엔드 진행사항 점검', '김하은', 'E1001', '', '2022-07-20', 0, 'P1000'
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













-- localhost 테스트용 테이블 --

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
DROP TABLE emp;

-- ##########   2022.08.11   ##############

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
-- 프로젝트 등록
INSERT INTO AEAPPROJECT VALUES('prjNo','prjName','prjGoal','OUTPUT','outRange','2022-07-21','2022-08-23',500000,'jjangoo','중');

-- 프로젝트 전체 리스트
SELECT * FROM AEAPPROJECT;


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
-- 사원 등록
INSERT INTO AEAPEMP values('1111', 'yaho', '1234', 'HAEUN', 'http://www.ikunkang.com/news/photo/202009/32320_21987_1540.jpg','1999-09-09', 'DEVELOPER', '9999', '2022-03-09',
                       5000,'010-1234-5678', '서울시 강서구 월드컵로 풍성빌딩 301호', '0001', '여자', 'khaeun@naver.com', 'ADMIN');
INSERT INTO AEAPEMP values('2222', 'JJANGOO', '1235', 'JJANGOO', 'http://www.ikunkang.com/news/photo/202009/32320_21987_1540.jpg','1999-09-09', 'SALESMAN', '1111', '2020-04-10',
                       5000,'010-4321-8765', '떡잎마을 와르르맨션', '0002', '남자', 'jjnagoo@gmail.com', 'CLERK');    
-- 사원 전체 리스트
SELECT * FROM AEAPEMP;

-- 프로젝트에 참여하는 사원 검색
SELECT count(*)
FROM AEAPPROJECT p, AEAPSCHEDULE s
WHERE p.prjNo = s.prjNo;

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
-- 일정 등록
INSERT INTO AEAPSCHEDULE values('empno', 'id', 'prjNo', 'schdlNo', 'schdlName', '2022-07-21', '2022-08-23', 50);

-- 일정 전체 리스트
SELECT * FROM AEAPSCHEDULE;


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

/*
insert into calendar (id,title,start,end,content,borderColor,
		backgroundColor,textColor,allDay,prjNo) values(cal_seq.nextval,#{title},#{start},
			#{end},#{content},null,#{backgroundColor},#{textColor},
			#{allDay},'P'||prjNo_seq.nextval)
 */
insert into calendar (id,title,start,end,content,borderColor,
		backgroundColor,textColor,allDay,prjNo) values(cal_seq.nextval,'','',
			'','',null,'','',
			'','P'||prjNo_seq.nextval);


		SELECT p.prjName, c.*
		FROM project p, calendar c 
		WHERE p.prjNo = c.prjNo
		AND p.prjno = 'P1000';	

	
SELECT * FROM CALENDAR;

SELECT *
FROM CALENDAR 
WHERE prjNo = 'P1000';

SELECT * FROM CALENDAR 
WHERE projeccalendar 



