CREATE TABLE PROJECT99(
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


CREATE TABLE scopeStmt99(
	scpStmtNo	VARCHAR2(50) PRIMARY KEY,
	scpStmtDate	DATE,
	adtnlCntntTitle	VARCHAR2(50),
	adtnlCntnt	VARCHAR2(1000),
	isApproval	VARCHAR2(50),
	prjNo	VARCHAR2(50) REFERENCES project99(prjNo)
);


CREATE TABLE roadMap99(
	rmNo	VARCHAR2(50) PRIMARY KEY,
	prjNo	VARCHAR2(50) REFERENCES project99(prjNo),
	rmName	VARCHAR2(50),
	rmStartDate	DATE,
	rmEndDate	DATE,
	rmCost	NUMBER,
	rmPeriod	NUMBER,
	isCompletion	VARCHAR2(20)
);

CREATE TABLE dept99(
	deptno VARCHAR2(50) PRIMARY KEY,
	dname	VARCHAR2(50),
	loc	VARCHAR2(50)
);

CREATE TABLE emp99(
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
   deptno varchar(50) REFERENCES dept99(deptno)
);

CREATE TABLE prjEmpList99(
	empno VARCHAR2(50) REFERENCES emp99(empno),
	prjNo VARCHAR2(50) REFERENCES project99(prjNo)
)

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
INTO project99 VALUES (
	'P'||prjNo_seq.nextval, 'AEAP_PMS', 'AEAP_PMS를 만든다.',
	'PMS 사이트', '없음', '2022-07-20', '2022-08-23', 5000, 'E1000', '상',
	0, 0, 0, 0, 0, 0, 20, 20, 20, 20)
SELECT * FROM dual;

INSERT ALL
INTO dept99 VALUES ('10', '개발1팀', '서울 신림동')
INTO dept99 VALUES ('20', '개발2팀', '서울 신림동')
INTO dept99 VALUES ('30', '인사팀', '인천 작전동')
INTO dept99 VALUES ('40', '디자인팀', '서울 서교동')
INTO dept99 VALUES ('50', '웹팀', '부산 서면')
INTO dept99 VALUES ('60', '기획팀', '제주 삼도1동')
INTO dept99 VALUES ('70', '회계팀', '서울 신림동')
SELECT * FROM dual;

CREATE SEQUENCE empno_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT INTO EMP99 values('E'||empno_seq.nextval, 'haeun', '1234', '김하은', 'http://www.ikunkang.com/news/photo/202009/32320_21987_1540.jpg',
	'1999-09-09', 'DEVELOPER', '9999', '2022-03-09', 4000,'010-1234-5678', '서울시 강서구 월드컵로 풍성빌딩 301호',
	'여자', 'khaeun@naver.com', 'PM','기타사항','중', '10');
INSERT INTO EMP99 values ('E'||empno_seq.nextval, 'jjangoo', '1235', '신짱구', 'https://pbs.twimg.com/profile_images/945974115671797761/ALdG7xiF_400x400.jpg','2000-03-09', 'SALESMAN', '1111', '2020-04-10',
                       3200,'010-4321-8765', '떡잎마을 와르르맨션', '남자', 'jjnagoo@gmail.com', 'CLERK', '임원', '상', '20');
INSERT INTO EMP99 values('E'||empno_seq.nextval, 'jjanga', '1235', '신짱아', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2021-09-05', 'DESIGNER', '2222', '2021-11-01',
                       3500,'010-4321-8765', '떡잎마을 와르르맨션', '여자', 'khaeun@naver.com', 'CLERK', '사원', '하', '30');
INSERT INTO EMP99 values('E'||empno_seq.nextval, 'chulsu', '1999', '김철수', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2020-04-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 장미아파트', '남자', 'khaeun@naver.com', 'CLERK', '사원', '중', '40'); 



CREATE SEQUENCE scopeStmt_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT INTO scopeStmt99 values(
	'S'||scopeStmt_seq.nextval, '2022-07-20', 'AEAP_PMS 범위기술서', 'AEAP_PMS 범위기술서 입니다.',
	'승인', 'P1000'
);

INSERT INTO prjEmpList99 values(
	'E1000', 'P1000'
);
INSERT INTO prjEmpList99 values(
	'E1001', 'P1000'
);

CREATE SEQUENCE roadMap_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

-------------------
CREATE TABLE roadMap99(
	rmNo	VARCHAR2(50) PRIMARY KEY,
	prjNo	VARCHAR2(50) REFERENCES project99(prjNo),
	rmName	VARCHAR2(50),
	rmStartDate	DATE,
	rmEndDate	DATE,
	rmCost	NUMBER,
	rmPeriod	NUMBER,
	isCompletion	VARCHAR2(20)
);

INSERT INTO roadMap99 values(
	'RM'||scopeStmt_seq.nextval, 'P1000', '1번로드맵', '2022-07-20', '2022-07-21', 480, 2, '완료'
);
INSERT INTO roadMap99 values(
	'RM'||scopeStmt_seq.nextval, 'P1000', '2번로드맵', '2022-07-22', '2022-08-10', 4800, 20, '완료'
);
INSERT INTO roadMap99 values(
	'RM'||scopeStmt_seq.nextval, 'P1000', '3번로드맵', '2022-08-11', '2022-08-23', 3120, 13, '미완료'
);

CREATE TABLE scopeStmt99(
	scpStmtNo	VARCHAR2(50),
	scpStmtDate	DATE,
	adtnlCntntTitle	VARCHAR2(50),
	adtnlCntnt	VARCHAR2(1000),
	isApproval	VARCHAR2(50),
	prjNo	VARCHAR2(50)
);

-------------------

CREATE TABLE reviewPlan99(
	rplanNo	VARCHAR2(50) PRIMARY KEY,
	rplanName	VARCHAR2(50),
	rplanStep	VARCHAR2(20),
	clientRequire	VARCHAR2(200),
	specialNote	VARCHAR2(100),
	rplanNote	VARCHAR2(100),
	requestDate	DATE,
	approvalDate	DATE,
	rplanStatus	VARCHAR2(50),
	prjNo	VARCHAR2(50) REFERENCES project99(prjNo)
);

CREATE TABLE riskType99(
	riskTypeNo	VARCHAR2(30) PRIMARY KEY,
	riskTypeName	VARCHAR2(50)
);

CREATE TABLE risk99(
	riskNo VARCHAR2(50) PRIMARY KEY,
	riskDeg	VARCHAR2(50),
	riskContent	VARCHAR2(500),
	regDate	DATE,
	registrant	VARCHAR2(50),
	riskTypeNo	VARCHAR2(30) REFERENCES riskType99(riskTypeNo),
	rplanNo VARCHAR2(50) REFERENCES reviewPlan99(rplanNo)
);

CREATE SEQUENCE rplanNo_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;


INSERT INTO reviewPlan99 values(
	'RP'||rplanNo_seq.nextval, '비용관리유지보수','설계','비용관리 ui를 수정했으면 함', '없음', 'AEAP PMS제작','2022-07-21','2022-07-22','승인', 'P1000');


INSERT ALL
INTO riskType99 values('R1000', '일정관리')
INTO riskType99 values('R1001', '인적자원')
INTO riskType99 values('R1002', '비용관리')
INTO riskType99 values('R1003', '의사소통관리')
INTO riskType99 values('R1004', '기타')
SELECT * FROM dual;

CREATE SEQUENCE risk_seq
	INCREMENT BY 1
	START WITH 1000
	MINVALUE 1000
	MAXVALUE 9999
	NOCYCLE
	NOCACHE
	NOORDER;

INSERT INTO risk99 values(
	'R'||risk_seq.nextval, '상', '비용관리 ui 가시성 저하', '2022-07-23', '김하은', 'R1004', 'RP1000'
);







-- 프로젝트 리스트
SELECT p.*, e.ename
FROM PROJECT99 p, EMP99 e, SCOPESTMT99 s
WHERE p.PRJPMNO = e.empno
AND p.prjno = s.prjno
AND s.ISAPPROVAL = '승인';

-- 프롤젝트 비용 수정
UPDATE project99
	SET PRJFINANCE = 6000,
		EQPMNCOST = 100,
		MATERIALCOST = 100,
		SERVICECOST = 100,
		INDIRECTCOST = 100,
		RSRVEXPNS = 200
WHERE prjno = 'P1000';
		


calendar







-- Hcost 프로젝트의 인건비
SELECT p.prjno, SUM(e.sal) hsal
FROM PRJEMPLIST99 p, EMP99 e
WHERE p.empno = e.empno
GROUP BY p.prjno;

-- 로드맵 리스트
SELECT r.*, p.prjName
FROM ROADMAP99 r, PROJECT99 p, SCOPESTMT99 s
WHERE r.prjno = p.prjno
AND r.prjno = 'P1000'
and p.prjno = s.prjno
AND s.ISAPPROVAL = '승인';

-- 인원의 인건비
SELECT e.ename, e.gender, e.job, e.sal, p.prjno
FROM EMP99 e, PRJEMPLIST p, scopeStmt99 s
WHERE p.prjno = 'P1000'
AND p.prjno = s.prjno
AND p.empno = e.empno
AND s.ISAPPROVAL = '승인';

-- 범위기술서 pminfo
SELECT e.ename, e.phoneNum, d.dname, d.loc
FROM project99 p, emp99 e, dept99 d
WHERE p.prjPMNo = e.empno
AND p.prjno = 'P1000'
AND e.deptno = d.deptno;

-- 범위기술서 scinfo
SELECT *
FROM SCOPESTMT99 s
WHERE prjno = 'P1000';

-- 범위기술서 rminfo
SELECT *
FROM ROADMAP99
WHERE prjno = 'P1000';

SELECT *
FROM PROJECT99
where prjno = 'P1000';

-- 범위기술서 인건비 총합
SELECT a.*, p3.PRJENDDATE-p3.PRJSTARTDATE+1 prjPeriod
FROM (SELECT p.prjno, sum(e.sal) hsal
FROM PROJECT99 p, PRJEMPLIST99 p2, EMP e 
WHERE p2.empno = e.empno
AND p2.prjno = 'P1000'
GROUP BY p.prjno) a, project99 p3
WHERE a.prjno = p3.prjno;

-- 범위기술서 승인
UPDATE scopeStmt99
SET isApproval = '승인'
WHERE SCPSTMTNO = 'S1000';

-- 위험 관리 리스트 (검토 계획에서)
SELECT r.*, rt.RISKTYPENAME
FROM risk99 r, RISKTYPE99 rt
WHERE r.rplanno = 'RP1000'
AND rt.risktypeno = r.risktypeno;

-- 위험 관리 추가
INSERT INTO risk99 values(
	'R'||risk_seq.nextval, '상', '비용관리 ui 가시성 저하', '2022-07-23', '김하은', 'R1004', 'RP1000'
);

-- 위험 관리 삭제
SELECT * FROM risk99;

DELETE
FROM risk99
WHERE riskno = 'R1010';

-- 위험 관리 수정 폼
SELECT r.*, rt.RISKTYPENAME
FROM risk99 r, RISKTYPE99 rt
WHERE RISKNO = 'R1000'
AND r.RISKTYPENO = rt.RISKTYPENO;

-- 위험 관리 수정

------------------------------------------------------------
-- 프로젝트 리스트
SELECT p.*, e.ename
FROM PROJECT99 p, EMP99 e, SCOPESTMT99 s
WHERE p.PRJPMNO = e.empno
AND p.prjno = s.prjno
AND s.ISAPPROVAL = '승인';

-- Hcost 프로젝트의 인건비
SELECT p.prjno, SUM(e.sal) hsal
FROM PRJEMPLIST99 p, EMP99 e
WHERE p.empno = e.empno
GROUP BY p.prjno;

-- 로드맵 리스트
SELECT r.*, p.prjName
FROM ROADMAP99 r, PROJECT99 p, SCOPESTMT99 s
WHERE r.prjno = p.prjno
AND r.prjno = 'P1000'
and p.prjno = s.prjno
AND s.ISAPPROVAL = '승인';

-- 인원의 인건비
SELECT e.ename, e.gender, e.job, e.sal, p.prjno
FROM EMP e, PRJEMPLIST p, scopeStmt s
WHERE p.prjno = 'P1000'
AND p.prjno = s.prjno
AND p.empno = e.empno
AND s.ISAPPROVAL = '승인';

-- 범위기술서 pminfo
SELECT e.ename, e.phoneNum, d.dname, d.loc
FROM project p, emp e, dept d
WHERE p.prjPMNo = e.empno
AND p.prjno = 'P1000'
AND e.deptno = d.deptno;

-- 범위기술서 scinfo
SELECT *
FROM SCOPESTMT s
WHERE prjno = 'P1000';

-- 범위기술서 rminfo
SELECT *
FROM ROADMAP
WHERE prjno = 'P1000';

SELECT *
FROM PROJECT
where prjno = 'P1000';

-- 범위기술서 인건비 총합
SELECT a.*, p3.PRJENDDATE-p3.PRJSTARTDATE+1 prjPeriod
FROM (SELECT p.prjno, sum(e.sal) hsal
FROM PRJEMPLIST p, EMP e 
WHERE p.empno = e.empno
AND p.prjno = 'P1000'
GROUP BY p.prjno) a, project p3
WHERE a.prjno = p3.prjno;

SELECT p.prjno, sum(e.sal) hsal
FROM PRJEMPLIST p, EMP e 
WHERE p.empno = e.empno
AND p.prjno = 'P1000'
GROUP BY p.prjno;

-- 범위기술서 승인
UPDATE scopeStmt
SET isApproval = '승인'
WHERE SCPSTMTNO = 'S1000';

-- 위험 관리 리스트 (검토 계획에서)
SELECT r.*, rt.RISKTYPENAME
FROM risk99 r, RISKTYPE99 rt
WHERE r.rplanno = 'RP1000'
AND rt.risktypeno = r.risktypeno;

-- 위험 관리 추가
INSERT INTO risk99 values(
	'R'||risk_seq.nextval, '상', '비용관리 ui 가시성 저하', '2022-07-23', '김하은', 'R1004', 'RP1000'
);

-- 위험 관리 삭제
SELECT * FROM risk99;

DELETE
FROM risk99
WHERE riskno = 'R1010';

-- 위험 관리 수정 폼
SELECT r.*, rt.RISKTYPENAME
FROM risk99 r, RISKTYPE99 rt
WHERE RISKNO = 'R1000'
AND r.RISKTYPENO = rt.RISKTYPENO;

-- 위험 관리 수정



-- 일정 추가
INSERT INTO calendar values(cal_seq.nextval,'테스트일정','2022-01-10','2022-07-10','content',
   'navy','pink','white',
   1,100,50,'완료','P1000');

-- 프로젝트랑 인적자원 보기
SELECT p.PRJNAME, p.PRJSTARTDATE, p.PRJENDDATE, e.JOB, e.ename, p.prjno
FROM PROJECT p, PRJEMPLIST p2, EMP e
WHERE p.PRJNO = p2.PRJNO
AND p2.EMPNO = e.EMPNO
AND p.prjno = 'P1000';

SELECT * FROM project;

SELECT * FROM PRJEMPLIST p ;

SELECT empno, ename, job
FROM emp e
where NOT EXISTS (
	SELECT 1
	FROM PRJEMPLIST p
	WHERE p.empno = e.empno
	AND p.prjno = 'P1000'
);

DELETE
FROM PRJEMPLIST
WHERE PRJNO = 'P1004';
INSERT INTO PRJEMPLIST values('E1003' , 'P1004');

UPDATE calendar
	SET RMCOST = 4000
WHERE prjNo = 'P1000'
AND id = 44;
SELECT * FROM CALENDAR;

outbox

