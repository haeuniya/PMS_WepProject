-- 위험관리 테이블
CREATE TABLE riskManagementPlan99(
riskNo varchar2(50) NOT NULL PRIMARY KEY,
prjNo varchar2(30),
riskTypeNo varchar2(30),
riskDeg varchar2(50),
riskContent varchar2(500),
regDate DATE,
occuRate NUMBER,
registrant varchar2(50),
riskEffect varchar2(500),
riskAPlan varchar2(500),
actionDate DATE
);

-- 위험관리 테이블 insert
INSERT INTO riskManagementPlan99 values(riskNo_seq.nextval,1,'ER-101','상','시간내에 프로젝트 완료를 하지못함',sysdate,3,
'관리자 이헌용','기간내에 프로젝트 완성률이 높아짐','프로젝트 기간을 늘린다',sysdate)

-- 프로젝트 테이블
CREATE TABLE project99(
prjNo varchar2(30) NOT NULL PRIMARY KEY,
prjName varchar2(30),
prjGoal varchar2(200),
OUTPUT varchar2(200),
outrange varchar2(200),
prjStartDate DATE,
prjEndDate DATE,
prjFinance NUMBER,
prjPMName varchar2(20),
prjImportant varchar2(20)
);

-- 외래키
ALTER TABLE riskManagementPlan99 ADD CONSTRAINT fk_prjNo foreign KEY(prjNo) references project99 (prjNo);

-- 프로젝트 테이블 insert
INSERT INTO project99 values(prjNo_seq.nextval,'프로젝트명','목적','결과물','범위 외',sysdate,sysdate,'500000','PM명','상');


-- 시퀀스
CREATE SEQUENCE riskNo_seq
START WITH 1
INCREMENT BY 1

CREATE SEQUENCE prjNo_seq
START WITH 1
INCREMENT BY 1

SELECT * FROM riskManagementPlan99 ;
SELECT * FROM project99 ;

DROP SEQUENCE riskNo_seq;
DROP SEQUENCE prjNo_seq;
DROP TABLE riskManagementPlan99;
DROP TABLE project99;



