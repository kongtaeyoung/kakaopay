# ���¿�-�系�����ý��� ������ �������� #0_urlshortening

# ���丮 ����
- WebContent
  - js
  	- jquery-3.3.1.min.js
  - main.jsp
  - ShorteningService.jsp

# ������Ʈ �Ұ�
- URL�� �Է� �޾�, Ư�� ������(http://localhost/)�� 8�ڸ� ���ڸ� �ٿ� ��� ���
  	��) https://en.wikipedia.org/wiki/URL_shortening => http://localhost/JZfOQNro

- URL �Է� ��  : URL�� ������ �̷��� ���� ���, ������ ������ URL ������ �� ���
	        : URL�� ������ �̷��� ���� ���, �ű� ���� URL ������ ���

# �����ذ� ���� 	        
- 8�ڸ� ���� 
    => ��/�ҹ��� �� ���� 62���� ���ڸ� �������� �����Ͽ� ���� 
- ������ URL ��û & ShorteningURL ��û  		
    => hashmap�� �̿��Ͽ�, ������ URL ���� ����� URL ���� üũ
    			
# ������Ʈ ����� ���� ���
- WEB-PROJECT ���� �� , "# ���丮 ����" ��� �� �� �� �����ϰ� ����/���� �߰�
- WEB-PROJECT �� TOMCAT ���� �� , TOMCAT ����

# Unit Test 
- �׽�Ʈ ȯ�� 
 : JDK1.8
 : TOMCAT8 �̻�
 
- �׽�Ʈ ���
 1.
 	- �Է� : https://kakaopay.recruiter.co.kr/appsite/company/callSubPage?code1=3000&code2=3400
 	- shortening URL Ȯ�� : http://localhost/XXXXXXXX   
 2. 
 	- shortening URL �Է� : http://localhost/XXXXXXXX
 	- �� URL Ȯ�� : https://kakaopay.recruiter.co.kr/appsite/company/callSubPage?code1=3000&code2=3400
 3.
 	- 1-1���� ������ URL �Է� : https://kakaopay.recruiter.co.kr/appsite/company/callSubPage?code1=3000&code2=3400
 	- 1-2���� ������ shortening URL Ȯ�� : http://localhost/XXXXXXXX