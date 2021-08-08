-- 데이터베이스 관리 시스템을 사용하는 이유
-- 1. 중복된 데이터를 제거
-- 2. 자료를 구조화시킬 수 있음
-- 3. 효율적인 처리
-- 4. 다양한 프로그램을 사용하는 사용자들과 데이터를 공유

-- SQL(Structured Query Language)
-- 관계형 데이터베이스에서 데이터를 정의, 조작, 제어하기 위해 사용하는 언어
-- 대소문자를 구별하지 않음
-- 문자열을 저장할 때 ''(싱글 따옴표)만 사용

-- DataBase
-- 데이터를 통합하여 관리하는 집합체, 저장소
-- DataBase Management System
-- 데이터베이스를 관리 해주는 소프트웨어

-- 데이터베이스 확인
show databases;

-- 데이터베이스 생성
-- CREATE DATABASE 데이터베이스명;
CREATE DATABASE frontend;

-- 데이터베이스 삭제
-- DROP DATABASE 데이터베이스명;
DROP DATABASE frontend;

-- 데이터베이스 사용
-- USE 데이터베이스명;
USE frontend;

-- 테이블(table)
-- 데이터를 행과 열로 스키마에 따라 저장할 수 있는 구조
-- 행 : 로우, 레코드
-- 열 : 필드, 컬럼, 어트리뷰트

-- 스키마
-- 데이터베이스의 구조와 제약 조건에 관한 명세를 기술한 집합

-- CREATE TABLE 테이블명(
-- 필드명1 필드타입 제약조건,
-- 필드명2 필드타입 제약조건,
-- ...
-- ) 

-- 데이터 타입
-- 숫자 타입
-- 정수 : tinyint, smallint, mediumint, int, bigint ...
-- 소수 : float, double
-- 문자 타입
-- 텍스트 : char, varchar, text
-- char(20) -> 1byte만 저장하더라도 총 20byte를 모두 소모
-- varchar(20) -> 1byte를 저장하면 총 1byte를 소모. 65535byte까지 저장
-- 바이너리 : binary, varbinary
-- 열거 : enum('남자', '여자')
-- 날짜와 시간타입
-- 날짜 : date
-- 날짜와 시간타입 : datetime, timestamp(1970년 1월1일 0시0분0초 ~)

-- 제약조건
-- 데이터의 무결성을 지키기 위해 데이터를 입력받을 때 실행하는 검사 규칙
-- NOT NULL
-- 필드에 NULL을 저장할 수 없음
-- UNIQUE
-- 중복된 값을 저장할 수 없음, null은 허용
-- DEFAULT
-- 기본값을 설정
-- AUTO_INCREMENT
-- 자동으로 숫자가 증가되어 추가, 중복값이 저장되지 않음, 직접 데이터를 추가할 수 없음, primary key로 설정(MySQL) 
-- PRIMARY KEY
-- UNIQUE 제약과 NOT NULL 제약을 동시에 가짐, 테이블에 오직 하나의 필드에만 적용, 데이터를 쉽고 빠르게 찾을 수 있음, 외래키가 참조할 수 있도록 설정
-- FOREIGN KEY
-- 다른 테이블과 연결해주는 역할, PRIMARY KEY 참조

-- 테이블 만들기
create table tb_member (
	mem_idx int auto_increment primary key,
    mem_userid varchar(20) unique not null,
    mem_userpw varchar(20) not null,
    mem_name varchar(20) not null,
    mem_hp varchar(20) not null,
    mem_email varchar(50),
    mem_hobby varchar(100),
    mem_ssn1 char(6) not null,
    mem_ssn2 char(7) not null,
    mem_zipcode char(5),
    mem_address1 varchar(100),
    mem_address2 varchar(100),
    mem_address3 varchar(100),
    mem_regdate datetime default now()
);

-- 테이블 구조 확인
-- DESC 테이블명
DESC tb_member;

-- 테이블 삭제
-- DROP TABLE 테이블명;
DROP TABLE tb_member;

-- 테이블 필드 추가
-- ALTER TABLE 테이블명 ADD 컬럼명 컬럼타입 제약조건;
ALTER TABLE tb_member ADD mem_point int default 0;

-- 테이블 필드 수정
-- ALTER TABLE 테이블명 MODIFY COLUMN 컬럼명 컬럼타입 제약조건;
ALTER TABLE tb_member MODIFY COLUMN mem_point double default 0;

-- 테이블 필드 삭제
-- ALTER TABLE 테이블명 DROP 컬럼명;
ALTER TABLE tb_member DROP mem_point;

-- 데이터 확인
SELECT * FROM tb_member;

-- 데이터 삽입(INSERT)
-- INSERT INTO 테이블명 VALUES (값1, 값2, 값3 ..);
-- INSERT INTO 테이블명 (필드명1, 필드명2, 필드명3 ..) VALUES (값1, 값2, 값3 ..);
INSERT INTO tb_member (mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, 
mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3) VALUES
('apple', '1111', '김사과', '010-1111-1111', 'apple@apple.com', '영화감상', 
'001011', '4068518', '12345', '서울 서초구 양재동', '111-11', '101동');

INSERT INTO tb_member (mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, 
mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3) VALUES
('banana', '2222', '반하나', '010-2222-2222', 'banana@banana.com', '운동', 
'001011', '4068518', '12345', '서울 서초구 서초동', '111-11', '101동');

INSERT INTO tb_member (mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, 
mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3) VALUES
('orange', '3333', '오렌지', '010-3333-3333', 'orange@orange.com', '영화감상', 
'001011', '4068518', '12345', '서울 서초구 반포동', '111-11', '101동');

INSERT INTO tb_member (mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, 
mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3) VALUES
('melon', '4444', '이메론', '010-4444-4444', 'melon@melon.com', '영화감상', 
'001011', '4068518', '12345', '서울 서초구 방배동', '111-11', '101동');

INSERT INTO tb_member (mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, 
mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3) VALUES
('berry', '5555', '배애리', '010-5555-5555', 'berry@berry.com', '영화감상', 
'001011', '4068518', '12345', '서울 강남구 역삼동', '111-11', '101동');

INSERT INTO tb_member (mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, 
mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3) VALUES
('avocado', '6666', '안카도', '010-6666-6666', 'avocado@avocado.com', '영화감상', 
'001011', '4068518', '12345', '서울 강남구 삼성동', '111-11', '101동');

INSERT INTO tb_member (mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, 
mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3) VALUES
('avocado', '6666', '안카도', '010-6666-6666', 'avocado@avocado.com', '영화감상', 
'001011', '4068518', '12345', '서울 강남구 삼성동', '111-11', '101동');


-- 데이터 수정(UPDATE)
-- UPDATE 테이블명 SET 필드명1 = 값1, 필드명2 = 값2 ..;
-- UPDATE 테이블명 SET 필드명1 = 값1, 필드명2 = 값2 .. WHERE 조건절;
UPDATE tb_member set mem_point = 1000;
SELECT * FROM tb_member;
delete from tb_member where mem_idx=6;
update tb_member set mem_idx=7,mem_zipcode=null, mem_address1=null,mem_address2=null,mem_address3=null where mem_userid='avocado';

alter Table tb_member auto_increment=7;

select mem_idx, mem_userid, mem_name, mem_point
from tb_member
where mem_zipcode is null;

select mem_idx, mem_userid, mem_name, mem_point from tb_member order by mem_point desc;

























