-- Emp 테이블 생성
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

SELECT * FROM emp;
DROP TABLE emp;

CREATE SEQUENCE emp_seq;
DROP SEQUENCE emp_seq;

-- 로그인 유효성 검사
SELECT count(*)
FROM emp
WHERE id = #{id}
AND pw = #{pw};

-- 로그인 정보
SELECT *
FROM emp
WHERE id = #{id}
AND pw = #{pw};

-- 회원 가입
INSERT INTO emp(empno, id, pw, ename, gender, birth, phonenum, email) values(emp_seq.nextval, #{id}, #{pw}, #{ename}, #{gender}, #{birth}, #{phonenum}, #{email});
INSERT INTO emp(empno, id, pw, ename, gender, birth, phonenum, email) values(emp_seq.nextval, 'a1232a', 'dfsf', 'jangho', '남', '2022-08-09', '12312312', 'dsfdsdf');

-- 프로필 수정
UPDATE emp
	SET id = #{id},
		pw = #{pw},
		ename = #{ename},
		gender = #{gender},
		birth = #{birth},
		address = #{address},
		phonenum = #{phonenum},
		email = #{email},
		description = #{description}
	WHERE id = #{세션값};
		
UPDATE emp
	SET id = '123123',
		pw = 'adfsdf',
		ename = '자자장호',
		gender = '여자',
		birth = '1997-10-01',
		address = '시골',
		phonenum = '0102223123',
		email = 'dlapdlfwnth@naver.com',
		description = '안녕하세요 전 개발자에요'
WHERE id = 'aaaa';
<<<<<<< .mine

UPDATE emp
	SET eimage = 'ddonge.png'
WHERE id = 'haeun';
SELECT * FROM emp;
||||||| .r353
=======

SELECT * FROM emp;
SELECT * FROM empfile;
>>>>>>> .r444
