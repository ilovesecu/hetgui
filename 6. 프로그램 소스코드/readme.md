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

# 모바일 어플리케이션
<img src='https://user-images.githubusercontent.com/86318450/125183639-32f4d080-e253-11eb-9335-a250375914e1.png' width=200px height=380px/> <img src='https://user-images.githubusercontent.com/86318450/125183667-67688c80-e253-11eb-960b-1781b12983e4.png' width=200px height=380px/> <img src='https://user-images.githubusercontent.com/86318450/125183670-68012300-e253-11eb-8cbb-77273d7656b4.png' width=200px height=380px/>

모바일 어플리케이션 구성도입니다.
1. 지도화면
2. 사이렌, 플래시화면
3. 도움화면

<img src='https://user-images.githubusercontent.com/86318450/125183845-89aeda00-e254-11eb-8e40-a6e9dd83c43e.jpg' width=200px height=380px/> <img src='https://user-images.githubusercontent.com/86318450/125183847-8a477080-e254-11eb-9960-5a600c1b5e41.jpg' width=200px height=380px/> <img src='https://user-images.githubusercontent.com/86318450/125183848-8ae00700-e254-11eb-8d3d-69bb1c13d5f6.jpg' width=200px height=380px/>

* 모바일 어플리케이션을 실행 후 블루투스 권한을 받고, 비콘의 신호를 받으면 스캔하여 서버로 전송하고 위치정보를 받아와 화면에 표시해줍니다.

<img src='https://user-images.githubusercontent.com/86318450/125183667-67688c80-e253-11eb-960b-1781b12983e4.png' width=200px height=380px/> <img src='https://user-images.githubusercontent.com/86318450/125183935-0f328a00-e255-11eb-9aa1-d825156612ec.jpg' width=200px height=380px/>

* 사이렌버튼, 플래시버튼을 이용하여 각 기능을 On, Off 할 수 있습니다.

<img src='https://user-images.githubusercontent.com/86318450/125183670-68012300-e253-11eb-8cbb-77273d7656b4.png' width=200px height=380px/> <img src='https://user-images.githubusercontent.com/86318450/125184046-b4e5f900-e255-11eb-8899-c5fd1cd66d78.jpg' width=130px height=220px/> <img src='https://user-images.githubusercontent.com/86318450/125184047-b57e8f80-e255-11eb-9c49-89f86c1a1dd1.jpg' width=130px height=220px/> <img src='https://user-images.githubusercontent.com/86318450/125184048-b6172600-e255-11eb-9019-218190c16495.jpg' width=130px height=220px/> <img src='https://user-images.githubusercontent.com/86318450/125184065-da730280-e255-11eb-8bb8-80615322e324.jpg' width=130px height=220px/>

* 각각의 버튼은 대피상황에 맞는 사이트를 연결하고, 긴급전화 버튼으로 119로 통화가 가능합니다.

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
