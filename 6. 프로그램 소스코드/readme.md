# 👨🏻‍💻개발 툴 및 프레임워크
* 백엔드
  * Spring Framework 4.3 버전
  * JDK 1.8 버전
  * Eclipse Jee 2019-03
* 프론트엔드
  * WEB
    * BootStrap 4
    * HTML / CSS / JavaScript
  * Mobile Web
    * JDK 1.8
    * Android Studio
  * Flash Light
    * Python 3
    * Arduino Sketch

# 제품 구성 요소
<img src='https://user-images.githubusercontent.com/77472995/125168325-0489dd80-e1e0-11eb-960e-ba17dc32d3c3.png' width=700px height=350px/>

제품은 크게 5가지로 구성됩니다.
1. 비콘 신호 발생기
2. 위치알림 비상손전등 거치대
3. 위치알림 비상손전등
4. 위치알림 모바일 어플리케이션
5. 관리자 웹 페이지(구조 요청자 위치 확인 및 손전등, 비콘 관리)

# 위치알림 비상손전등 구성요소
<img src='https://user-images.githubusercontent.com/77472995/125168502-cf31bf80-e1e0-11eb-8413-769ed20f53c1.png' width=700px height=350px/>


# 서비스 처리 흐름
<img src='https://user-images.githubusercontent.com/77472995/125168283-becd1500-e1df-11eb-9dc8-e2d397770773.png' width=700px height=350px/>

* 전체적인 흐름도 입니다. 세부흐름도는 아래와 같습니다.<br>

## 위치알림 비상손전등 세부흐름도
<img src='https://user-images.githubusercontent.com/77472995/125168545-04d6a880-e1e1-11eb-9f18-0ccd9980010d.png' width=700px height=350px/>

* 라즈베리파이는 DHT11 센서에서 센서값을 계속 취득합니다.<br><br>

<img src='https://user-images.githubusercontent.com/77472995/125168549-0902c600-e1e1-11eb-953e-386ccd639185.png' width=700px height=350px/>

* 그러는 도중 새로운 비콘 신호가 잡힌다면 CAT.M1을 통해 LTE 통신을 하여 서버에 uuid(위치정보를 가짐), flashid(현재 손전등 식별), humidity, temperature(온습도)정보를 보냅니다.<br><br>

## 위치알림 비상손전등 거치대 세부흐름도
<img src='https://user-images.githubusercontent.com/77472995/125168550-0a33f300-e1e1-11eb-8360-bbd11d89532c.png' width=700px height=350px/>

* 화재감지 센서를 통해 화재가 감지된다면 건물 내부 사람들에게 알리기 위해 피에조가 울립니다.<br><br>

# 웹 사이트
<img src='https://user-images.githubusercontent.com/77472995/125169482-584af580-e1e5-11eb-9071-5f710f2f3b8f.png' width=700px height=350px/>
 
웹 사이트 메인화면 구성도입니다.
1. 사이드 메뉴바
2. 현재 비콘, 손전등 수
3. 손전등 사용자의 위치를 알 수 있는 지도

<img src='https://user-images.githubusercontent.com/77472995/125169608-f474fc80-e1e5-11eb-8e31-b5b01e8fd500.png' width=700px height=350px/>

* 누군가가 손전등을 들어올리면 관리자가 알 수 있도록 메인화면의 맨 위(header)가 빨간색으로 점등 합니다.

<img src='https://user-images.githubusercontent.com/77472995/125169605-f212a280-e1e5-11eb-85c5-dc14e80e0140.png' width=700px height=350px/>

* 비콘을 관리할 수 있는 화면입니다. 비콘을 추가하거나 수정, 삭제할 수 있습니다. 또한 페이징 처리가 되어있어서 관리할 비콘의 수가 많은 경우에도 좀 더 편리하게 볼 수 있습니다.

<img src='https://user-images.githubusercontent.com/77472995/125169607-f3dc6600-e1e5-11eb-899d-250e5c0a7de1.png' width=700px height=350px/>

* 비콘 추가 화면입니다. 

※ 손전등 관리화면은 비콘과 대부분 동일하므로 생략하였습니다.
