-- 프로젝트별 종합 품질점수(전체 대시보드)
SELECT prjno, ROUND((schdlScore+hrScore+costScore+commuScore)/4) tot
FROM project ;
-- 일정관리 품질점수 차트(각 프로젝트 대시보드)
SELECT schdlScore
FROM project
WHERE prjno = 'P1000';
-- 인적자원 품질점수 차트(각 프로젝트 대시보드)
SELECT hrScore
FROM project
WHERE prjno = 'P1000';
-- 비용관리 품질점수 차트(각 프로젝트 대시보드)
SELECT costScore
FROM project
WHERE prjno = 'P1000';
-- 의사소통관리 품질점수 차트(각 프로젝트 대시보드)
SELECT commuScore
FROM project
WHERE prjno = 'P1000';

-- 인적자원관리 프로젝트별 참여하는 사원 수 (전체 대시보드)
SELECT prjno, COUNT(*) cnt
FROM prjemplist 
GROUP BY  prjno;
-- 인적자원관리 프로젝트 참여인원 중요도 (각 프로젝트 대시보드)
SELECT ename, empno, eImportant
FROM emp 
GROUP BY ename, empno, eImportant;

-- 일정관리 프로젝트별 달성률 (전체 대시보드)
SELECT prjno, prjRate
FROM project 
GROUP BY prjno, prjRate;
-- 일정관리 해당 프로젝트 달성률 (각 프로젝트 대시보드)
SELECT prjno, prjRate
FROM project 
WHERE prjno='P1000';

-- 비용관리 프로젝트별 예산(전체 대시보드)
SELECT prjno, prjfinance 
FROM project;
-- 비용관리 사원별 인건비
SELECT e.ename, e.sal 
FROM emp e, prjemplist p, scopeStmt s
WHERE e.empno = p.empno
AND p.prjno = 'P1000'
and p.prjno = s.prjno
and s.isapproval = '승인'
;


SELECT * FROM prjemplist;
SELECT * FROM scopeStmt;
SELECT * FROM prjemplist;