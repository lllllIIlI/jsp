# 🍽️ 오메추 (오늘 메뉴 추천) 
- 우리 학교 주변 맛집 추천 웹사이트 (JSP 기반)

이 프로젝트는 JSP(Java Server Pages)를 기반으로 제작된 **인하대학교 주변 맛집 추천 시스템**입니다.  
관리자는 맛집 정보를 등록하고, 사용자는 리스트 확인 및 검색 기능을 통해 주변 맛집을 쉽게 찾아볼 수 있습니다.

---

## 📌 주요 기능

- 🔐 관리자 로그인 / 로그아웃
- 🧾 맛집 정보 추가, 수정, 삭제
- 📋 전체 맛집 목록 조회
- 🔍 키워드 기반 맛집 검색
- 👤 관리자 정보 수정

---

## 💻 사용 기술 스택

| 분류 | 기술 |
|------|------|
| Frontend | HTML, CSS, JavaScript |
| Backend | JSP, JSTL |
| Database | MySQL |
| Server | Apache Tomcat |
| 기타 | JDBC, MYSQL |

---

## 📁 주요 파일 구조

| 파일명 | 설명 |
|--------|------|
| `connectDB.jsp` | DB 연결 설정 |
| `login.jsp` | 로그인 페이지 |
| `login_admin.jsp` | 관리자 로그인 페이지 |
| `logout.jsp` | 로그아웃 처리 |
| `admin.jsp` | 관리자 메인 대시보드 |
| `update_admin.jsp` | 관리자 정보 수정 폼 |
| `update_admin_proc.jsp` | 관리자 정보 수정 처리 |
| `add_place.jsp` | 맛집 등록 입력 폼 |
| `add_place_proc.jsp` | 맛집 등록 처리 |
| `update_place.jsp` | 맛집 정보 수정 폼 |
| `update_place_proc.jsp` | 맛집 정보 수정 처리 |
| `delete_place.jsp` | 맛집 삭제 처리 |
| `list.jsp` | 전체 맛집 목록 조회 |
| `listResult.jsp` | 맛집 목록 결과 출력 |
| `search.jsp` | 맛집 검색 입력 폼 |
| `searchResult.jsp` | 맛집 검색 결과 페이지 |
| `final_SQL.sql` | DB 테이블 생성 및 샘플 데이터 |
| `erd_diagram.png` | DB 구조 ERD 이미지 |

---

## 🗺️ ERD (Entity Relationship Diagram)

![Image](https://github.com/user-attachments/assets/19483602-de26-4d4b-aaa2-a93252d4c513)

---

## 📊 데이터베이스 스키마 요약

### 🍽️ `place` 테이블 (맛집 정보)

| 필드명 | 타입 | 설명 |
|--------|------|------|
| `no` | INT | 번호 |
| `name` | VARCHAR(20) | 맛집 이름 (기본키) |
| `menu` | VARCHAR(20) | 대표 메뉴 |
| `open` | INT | 영업 시작 시간 |
| `breaktime` | VARCHAR(10) | 영업 준비 시간 |
| `close` | INT | 영업 마감 시간 |
| `distance` | INT | 학교 후문에서의 거리 |
| `phone` | VARCHAR(20) | 가게 전화번호 |

### 👤 `admin` 테이블 (관리자 정보)

| 필드명 | 타입 | 설명 |
|--------|------|------|
| `id` | VARCHAR(20) | 관리자 ID (기본키) |
| `password` | VARCHAR(20) | 비밀번호 |

---

## ⚙️ 실행 방법

1.. GitHub 저장소 클론

```
ex.
bash
git clone https://github.com/lllllIIlI/jsp.git
```

2. MySQL에서 final_SQL.sql 실행 (DB 및 테이블 생성)

3. connectDB.jsp에서 본인의 DB 정보로 설정 변경

```
ex.
String url = "jdbc:mysql://localhost:3306/";
String user = "root";
String password = "yourpassword";
```

4. Apache Tomcat 서버에 프로젝트 배포 후 브라우저에서 접속

```
ex.
http://localhost:8080/foodmap/login_admin.jsp
```
