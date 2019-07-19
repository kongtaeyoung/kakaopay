# 공태영-사내정보시스템 개발자 사전과제 #0_urlshortening

# 디렉토리 구조
- WebContent
  - js
  	- jquery-3.3.1.min.js
  - main.jsp
  - ShorteningService.jsp

# 프로젝트 소개
- URL을 입력 받아, 특정 도메인(http://localhost/)에 8자리 문자를 붙여 결과 출력
  	예) https://en.wikipedia.org/wiki/URL_shortening => http://localhost/JZfOQNro

- URL 입력 후  : URL이 생성된 이력이 있을 경우, 기존에 생성한 URL 데이터 재 출력
	        : URL이 생성된 이력이 없은 경우, 신규 생성 URL 데이터 출력

# 문제해결 전략 	        
- 8자리 문자 
    => 대/소문자 와 숫자 62개의 문자를 랜덤으로 조합하여 생성 
- 동일한 URL 요청 & ShorteningURL 요청  		
    => hashmap을 이용하여, 동일한 URL 인지 변경된 URL 인지 체크
    			
# 프로젝트 빌드와 실행 방법
- WEB-PROJECT 생성 후 , "# 디렉토리 구조" 명시 된 것 과 동일하게 폴더/파일 추가
- WEB-PROJECT 와 TOMCAT 연동 후 , TOMCAT 실행

# Unit Test 
- 테스트 환경 
 : JDK1.8
 : TOMCAT8 이상
 
- 테스트 방법
 1.
 	- 입력 : https://kakaopay.recruiter.co.kr/appsite/company/callSubPage?code1=3000&code2=3400
 	- shortening URL 확인 : http://localhost/XXXXXXXX   
 2. 
 	- shortening URL 입력 : http://localhost/XXXXXXXX
 	- 실 URL 확인 : https://kakaopay.recruiter.co.kr/appsite/company/callSubPage?code1=3000&code2=3400
 3.
 	- 1-1번과 동일한 URL 입력 : https://kakaopay.recruiter.co.kr/appsite/company/callSubPage?code1=3000&code2=3400
 	- 1-2번과 동일한 shortening URL 확인 : http://localhost/XXXXXXXX