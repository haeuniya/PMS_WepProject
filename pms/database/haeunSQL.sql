CREATE TABLE EMP00(
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
INSERT INTO EMP values('1111', 'haeun', '1234', '김하은', 'http://www.ikunkang.com/news/photo/202009/32320_21987_1540.jpg','1999-09-09', 'DEVELOPER', '9999', '2022-03-09',
                       6000,'010-1234-5678', '서울시 강서구 월드컵로 풍성빌딩 301호', '여자', 'khaeun@naver.com', '	PM','기타사항','중', '10');
INSERT INTO EMP values('2222', 'jjangoo', '1235', '신짱구', 'https://pbs.twimg.com/profile_images/945974115671797761/ALdG7xiF_400x400.jpg','2000-03-09', 'SALESMAN', '1111', '2020-04-10',
                       5000,'010-4321-8765', '떡잎마을 와르르맨션', '남자', 'jjnagoo@gmail.com', 'CLERK', '임원', '상', '20');                      
INSERT INTO EMP values('3333', 'jjanga', '1235', '신짱아', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2021-09-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 와르르맨션', '여자', 'khaeun@naver.com', 'CLERK', '사원', '하', '30');
INSERT INTO EMP values('4444', 'chulsu', '1999', '김철수', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2020-04-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 장미아파트', '남자', 'khaeun@naver.com', 'CLERK', '사원', '중', '40');                      
DROP TABLE emp00;
SELECT * FROM emp00;
-- local
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
	address varchar(200),
	deptno varchar(20),
	gender varchar(20),
	email varchar(100),
	auth varchar(20),
	description varchar2(500)
);
INSERT INTO AEAPEMP values('1111', '김하은', '1234', 'HAEUN', 'http://www.ikunkang.com/news/photo/202009/32320_21987_1540.jpg','1999-09-09', 'DEVELOPER', '9999', '2022-03-09',
                       6000,'010-1234-5678', '서울시 강서구 월드컵로 풍성빌딩 301호', '0001', '여자', 'khaeun@naver.com', 'ADMIN', '');
INSERT INTO AEAPEMP values('2222', '신짱구', '1235', 'JJANGOO', 'https://pbs.twimg.com/profile_images/945974115671797761/ALdG7xiF_400x400.jpg','2000-03-09', 'SALESMAN', '1111', '2020-04-10',
                       5000,'010-4321-8765', '떡잎마을 와르르맨션', '0002', '남자', 'jjnagoo@gmail.com', 'CLERK', '');                      
INSERT INTO AEAPEMP values('3333', '신짱아', '1235', 'JJANA', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2002-05-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 와르르맨션', '0002', '여자', 'jjnagoo@gmail.com', 'CLERK', '');
INSERT INTO AEAPEMP values('4444', '김철수', '1999', 'JJANA', 'http://yirb.yonsei.ac.kr/xe/files/attach/images/394/846/008/fead9329649315739047729e5619b975.jpg','2002-05-05', 'DESIGNER', '2222', '2021-11-01',
                       3000,'010-4321-8765', '떡잎마을 장미아파트', '0002', '남자', 'jjnagoo@gmail.com', 'CLERK', '');                      
INSERT INTO AEAPEMP values('4444', '김철수', '1999', 'JJANA');
/*
INSERT INTO AEAPEMP values(#{empno},#{id},#{pw},#{ename},#{eimage},#{birth},#{job},#{mgr},#{hiredate},#{sal},#{phoneNum},#{address},#{deptno},#{gender},#{email},#{auth})
 */
 INSERT INTO AEAPEMP values('22','33','','','',sysdate,'','',
		sysdate,'','','','','','','', '');                       
/*
INSERT INTO AEAPEMP values(#{empno},#{id},'','','',sysdate,'','',
		sysdate,'','','','','','','', '')
 */    
SELECT * FROM aeapemp;

SELECT * 
FROM AEAPEMP 
WHERE 1=1
AND ename LIKE '%'||'HAEUN'||'%' 
AND job LIKE '%'||'DEVELOPER'||'%' ;
SELECT * FROM AEAPEMP;
/*
SELECT * 
FROM AEAPEMP 
WHERE 1=1
AND ename LIKE '%'||#{ename}||'%' 
AND job LIKE '%'||#{job}||'%' 
 */

-- 수정
UPDATE AEAPEMP 
SET deptno = 0001,
	job = 'DEVELOPER',
	sal = '5000',
	auth = 'ADMIN',
	address = '서초구 장미아파트',
	phoneNum = '010-1235-6689',
	email = 'abcd@gmail.com'
WHERE empno = '4444';
            
/*
UPDATE AEAPEMP 
SET deptno = #{deptno},
	job = #{job},
	sal = #{sal},
	auth = #{auth},
	address = #{address},
	phoneNum = #{phoneNum},
	email = #{email}
WHERE empno = #{empno}
 */

DELETE 
FROM AEAPEMP 
WHERE empno = 'z';

/*
DELETE 
FROM AEAPEMP 
WHERE empno = #{empno}
 */

CREATE TABLE empfile(
	no NUMBER,
	path varchar2(100),
	fname varchar2(100),
	regdte DATE,
	uptdte DATE,
	etc varchar2(200)	
);

SELECT * FROM empfile;

SELECT * FROM AEAPEMP;
DROP TABLE AEAPEMP;









-- 2022/08/12 
-- 세찬님
CREATE table reviewPlan(
   rplanno varchar2(10)  PRIMARY KEY,
   rplanname VARCHAR2(50),
   rplanstep VARCHAR2(20),
   clientrequire VARCHAR2(200),
   specialnote VARCHAR2(100),
   requestdate DATE,
   approvaldate DATE,
   rplanstatus VARCHAR2(50),
   prjname varchar2(50),
   pmname varchar2(50)
);

CREATE SEQUENCE rplan_seq
       INCREMENT BY 1
       START WITH 1000
       MINVALUE 1000
       MAXVALUE 9999
       NOCYCLE
       NOCACHE
       NOORDER;

DROP TABLE REVIEWPLAN;
SELECT * FROM REVIEWPLAN;
INSERT INTO REVIEWPLAN values(12341,'비용관리유지보수','설계','비용관리 ui를 수정했으면 함'
         ,'AEAP PMS제작','2022-08-05','2022-08-07','승인','AEAP_PMS','박종대');
INSERT INTO REVIEWPLAN values(12342,'비용관리유지보수','구현','비용관리 ui를 수정'
         ,'AEAP PMS제작','2022-08-08','2022-08-09','미승인','AEAP_PMS','박종대');   
        
        
        
-- 예지님
create table meetingboard(
      recordNum number primary key,
      refno NUMBER,
      recordTitle varchar2(200),
      recordContent varchar2(2000),
      ename varchar2(20),
      empno varchar2(20),                    
         CONSTRAINT fk_empno foreign key(empno) references AEAPEMP(empno),
      recordViewCnt number,
      recordRegdte date,
      recordUptdte DATE
   );
DROP TABLE meetingboard;  
  create sequence meetingboard_seq
      start with 1
      minvalue 1
      maxvalue 999999
      increment by 1;

 SELECT * FROM meetingboard;
  insert into meetingboard (recordNum,refno,recordTitle,recordContent,ename,recordViewCnt,recordRegdte,recordUptdte) values(meetingboard_seq.nextval,0,'0813 회의록', '내용', '유예지',
      0, sysdate, sysdate);
     
  insert into meetingboard (recordNum,refno,recordTitle,recordContent,ename,recordViewCnt,recordRegdte,recordUptdte) values(meetingboard_seq.nextval,0,'0801 회의록', '내용', '유예지',
      0, sysdate, sysdate);
create table meetingboardfile(
               recordNum number,
               mrfilepath varchar2(100),
               mrfilename varchar2(100),
               recordregdte date,
               recorduptdte date,
               etc varchar2(100)
            );
CREATE TABLE outbox(
   mailNum NUMBER primary key,
   empno varchar2(20),                    
   CONSTRAINT fk2_empno foreign key(empno) references aeapemp(empno),
   receiver varchar2(50),
   sender varchar2(50),
   mailtitle varchar2(200),
   mailContent varchar2(2000),
   mailRegdte DATE 
);
 create sequence outbox_seq
      start with 1
      minvalue 1
      maxvalue 999999
      increment by 1;
insert into outbox (mailNum,receiver,mailTitle,mailContent,mailRegdte) values(outbox_seq.nextval,'yeji123@gmail.com','업무 보고입니다.', '내용',
      sysdate);     

SELECT * FROM AEAPEMP;

DROP TABLE outbox;

select * from calendar;
CREATE TABLE roadMap(
	rmNo	VARCHAR2(50) PRIMARY KEY,
	prjNo	VARCHAR2(50) REFERENCES project(prjNo),
	rmName	VARCHAR2(50),
	rmStartDate	DATE,
	rmEndDate	DATE,
	rmCost	NUMBER,
	rmPeriod	NUMBER,
	isCompletion	VARCHAR2(20)
	private int id;
	private String title;
	private String start;
	private String end;
	private String content;
	private String borderColor;
	private String backgroundColor;
	private String textColor;
	private boolean allDay;
	rmno
);
