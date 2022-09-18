-- 회의록 테이블 삭제
DROP TABLE meetingboard;

SELECT * FROM aeapemp;
-- 회의록 테이블 생성
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
SELECT * FROM meetingboard;

SELECT * FROM emp;
DROP TABLE emp;

-- 회의록 시퀀스 생성
	create sequence meetingboard_seq
		start with 1
		minvalue 1
		maxvalue 999999
		increment by 1;
-- 샘플 데이터 등록
	insert into meetingboard (recordNum,refno,recordTitle,recordContent,ename,recordViewCnt,recordRegdte,recordUptdte) values(meetingboard_seq.nextval,0,'0801 회의록', '내용', '유예지',
		0, sysdate, sysdate);
	
	insert into meetingboard values(meetingboard_seq.nextval,0,'첫번째 회의록', '내용', 'HAEUN',
		0, sysdate, sysdate);
	SELECT *
	FROM meetingboard
	WHERE 1=1
	AND recordTitle LIKE '%'||''||'%'
	AND ename LIKE '%'||''||'%'
	ORDER BY recordRegdte DESC;
-- 상세화면조회
SELECT * FROM meetingboard WHERE recordnum = 1;

-- 조회수 수정	
UPDATE meetingboard
SET recordviewcnt = recordviewcnt+1
WHERE recordNum = 1;

-- 회의록 파일 첨부 테이블 생성
create table meetingboardfile(
					recordNum number,
					mrfilepath varchar2(100),
					mrfilename varchar2(100),
					recordregdte date,
					recorduptdte date,
					etc varchar2(100)
				);
SELECT * FROM meetingboardfile;
SELECT * FROM emp;
SELECT * FROM member;
			
SELECT LEVEL, mb.* -- 최상위 level은 1, 바로 하위 레벨은 2로 표현
FROM meetingboard mb
WHERE 1=1
START WITH refno = 0
CONNECT BY PRIOR recordnum = refno 
ORDER siblings BY recordnum DESC;

SELECT *
FROM (
	SELECT rownum cnt, LEVEL, mb.*
	FROM meetingboard mb
	WHERE 1=1
	START WITH refno = 0
	CONNECT BY PRIOR recordNum = refno 
	ORDER siblings BY recordNum DESC
	); 

DROP TABLE meetingboardfile;

SELECT * FROM meetingboard;
SELECT * FROM meetingboardfile;

SELECT mb.*, mf.mrfilename
FROM meetingboard mb, meetingboardfile mf
WHERE mb.recordNum=mf.recordNum(+);
-- 메일 임시보관함 테이블 삭제
DROP TABLE outbox;

-- 메일 임시보관함 테이블 생성
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

-- 임시보관함 시퀀스 생성
	create sequence outbox_seq
		start with 1
		minvalue 1
		maxvalue 999999
		increment by 1;
-- 샘플 데이터 등록
	insert into outbox (mailNum,receiver,mailTitle,mailContent,mailRegdte) values(outbox_seq.nextval,'yeji123@gmail.com','업무 보고입니다.', '내용',
		sysdate);
-- 테이블 조회
	SELECT * FROM outbox;

-- 임시보관함 리스트
	SELECT *
	FROM outbox
	WHERE 1=1
	AND mailTitle LIKE '%'||''||'%'
	ORDER BY mailRegdte DESC;
-- 상세화면조회
SELECT * FROM outbox WHERE mailNum = 4;

-- 메일 파일 첨부 테이블 생성
create table outboxfile(
					mailNum number,
					mailFilePath varchar2(100),
					mailFileName varchar2(100),
					mailRegdte date,
					etc varchar2(100)
				);
			
SELECT * FROM outboxfile;
			
-- 임시보관함파일 테이블 삭제
DROP TABLE meetingboardfile;

-- 상세화면 파일 업로드
SELECT o.*, obf.mailFileName
FROM outbox o, outboxfile obf
WHERE o.mailNum=obf.mailNum(+);

SELECT count(*) FROM outbox;
