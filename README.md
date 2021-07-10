# 📣팀 소개 - 🔥HotSource Team
활활 타오르는 열정을 가지고 소스코드를 코딩하겠다는 의미를 가진 팀명입니다.

# 📣프로젝트 소개 - 🔦 Project HETGUI
* IoT를 활용한 스마트 손전등
* 구조 요청자에게 한줄기 빛이 되어주겠다는 의미로 '해가 처음 솟을 때의 빛'이라는 순우리말인 **'햇귀'** 라는 이름을 가지고 있습니다.

# 👪 함께한 팀원들
* 김선재('햇귀' 케이스 설계 / '햇귀' 조립 / 손전등 기능 구현)
* 김형도(스마트폰App 구현 / '햇귀' 케이스 설계 / '햇귀' 조립)
* 박무창(웹UI 구현 / '햇귀' 케이스 설계 / 배터리&BMS보드 조립)
* 정승주('햇귀' 위치추적 및 센싱 정보 취득을 위한 LTE 통신 구현 / 웹 서버&DB 구현)
* 최민석('햇귀' 위치추적을 위한 비콘 스캐너 구현 / 웹UI 구현)

# 💬 브레인스토밍
* 저희 팀은 브레인스토밍을 통해서 아이디어를 선정했습니다.
* 1차적으로 브레인스토밍에서 아래의 표와 같은 아이디어들을 생각하게 되었습니다.
<table>
  <tr>
    <th colspan="7">브레인스토밍 결과 리스트</th>
  </tr>
  <tr>
    <td>스마트 윈도우</td>
    <td>스마트 가든</td>
    <td>긴급차량 알리미</td>
    <td>버스 알리미</td>
    <td>유치원 버스</td>
    <td>교내버스좌석알림</td>
    <td>버스 도착 인식기</td>
  </tr>
  <tr>
    <td>스마트 화장실</td>
    <td>아기 모니터링</td>
    <td>캠핑 영역 설정</td>
    <td>위치알림 비상손전등</td>
    <td>스마트 마스크</td>
    <td>분리수거 압축기계</td>
    <td>가정용 탄소농도 측정기</td>
  </tr>
  <tr>
    <td>스마트 주유소</td>
    <td>스마트 신발</td>
    <td>투명 패트병 분리수거</td>
    <td>스마트 농구골대</td>
    <td>모니터 터치마우스</td>
    <td>부엌 온도 알리미</td>
    <td>유통기한 알리미</td>
  </tr>
  <tr>
    <td>시각장애인용 길알리미</td>
    <td>버스 개폐문 끼임방지</td>
    <td>운전자 음주상태 체크</td>
    <td>운전자 전방주시 태만 알리미</td>
    <td>자동 음량 조절 스피커</td>
    <td>스마트 자전거 잠금장치</td>
    <td>개인위생 알리미</td>
  </tr>
</table>

<img src="https://user-images.githubusercontent.com/77472995/125170231-f1c7d680-e1e8-11eb-8781-51af137018cc.png"  width="700" height="370">

* 브레인 스토밍 과정

### 1. 중간 아이디어 선정 기준
   - [x] 사회적으로 필요한 아이디어인가?
   - [x] 팀원의 최대 능력 이상을 요구하지는 않는가?
   - [x] 한정된 예산과 기간안에 할 수 있을만한 것인가?

### 2. 최종 아이디어 선정 기준
   - [x] 실생활에 바로 적용 가능할 만큼 실용적인가?
   - [x] 캡스톤 기간 내에 만들 수 있는 크기의 프로젝트인가?
   - [x] 제품의 크기가 너무 크지는 않은가?
   - [x] 하드웨어의 비중이 너무 크지는 않은가?
   - [x] 아직 이 세상에 없는 참신한 아이디어인가?

* 중간과 최종 아이디어 선정 기준을 걸쳐 확정된 최종적인 아이디어가 **위치알림 비상손전등** 입니다.

# ⚡추진배경

|연도|화재건수|**사망**|**부상**|인명피해|부동산피해(천원)|재산피해(천원)|
|---:|---:|---:|---:|---:|---:|---:|
|2018|28,013|**316**|**1,915**|2,231|228,397,458|495,032,462|
|2019|26,025|**216**|**1,777**|1,993|202,282,084|552,840,022|
|2020|24,929|**300**|**1,583**|1,883|222,754,093|532,754,002|
|합계|78,967|**832**|**5,275**|6,107|653,433,635|1,580,626,486|

<p align="center"><표1 2018년 ~ 2020년 건축, 구조물 화재 건수 및 인명피해, 부동산 피해 규모></p>
<p align="center">(출처 : 소방청 국가화재정보센터)</p>

* 화재 사전 경보기와 사람들의 인식 변화로 인해 건축,구조물에 대한 화재 건수는 줄어들고 있는 양상이지만 아직까지도 많은 화재가 발생하고 있으며 그에 따라 인명피해도 꾸준히 발생하고 있는 상황입니다. (표1 참고.) 이런 상황에서 Hot source팀은 한명의 인명 피해라도 줄이고자 건물 내부에 IoT를 활용한 **위치알림 비상손전등**을 만들어 보았습니다.
  
* 기존 비상 손전등은 특별한 기능 없이 그저 손전등 기능한 하여 구조 요청자나 구조자에게 좀 더 직접적인 영향을 주지 못하였습니다. 그것을 보완하게 위해 IoT를 도입하여 센서와 비콘 정보를 LTE모듈을 통해 인터넷에 연결하여 서버에 전달하는 손전등을 구현하였습니다.

# 📝특징
* ### 실시간 위치 추적
  * GPS를 통한 위치 추적도 있지만 GPS를 사용한다면 지하나 다층 건물에서는 구조 요청자가 어떤 위치에 있는지 정확히 알기 힘든 점에 착안하여 **비콘**을 사용하여 사용자가 몇층 어떤 구역에 있는지 알 수 있도록 하였습니다.
  * 비콘을 스캔하여 서버로 위치를 전송할 때는 사용자도 쉽게 알아차릴 수 있도록 피에조 부저를 통해서 소리가 나도록 하였습니다.

* ### 웹을 통한 손쉬운 접근
  * 전세계 인터넷만 통한다면 어디서든 접근할 수 있도록 웹을 통해서 관리자 페이지를 만들었으며, 관리자 페이지를 통해 구조요청자의 위치도 파악할 수 있습니다.

* ### 손전등이 없다면? 앱을 통한 위치 전송
  * 만약에 주변에 손전등이 없다면 스마트폰 앱을 통해서 외부로 자신의 위치를 알릴 수 있도록 스마트폰 앱을 구현하였으며, 서버 또한 손전등, 스마트폰의 신호에 대응하도록 구현 되어있습니다.

* ### 신뢰성 높은 손전등
  * 만약 라즈베리파이나 주변 IoT 기기들이 고장나 제대로 작동하지 않는다고 해도 손전등의 기본 기능인 주변을 비추는 기능은 기계적으로 구현되어있기 때문에 배터리가 모두 소모되지 않는 이상 계속하여 작동할 수 있도록 구현되어 있습니다.

# 사용된 모듈
> * 손전등에 사용된 모듈
>	> * RaspberryPi 4 Model B (비콘 스캔 / 온습도 센싱 / CAT.M1을 통한 LTE 통신)
>	>	> * Codezoo LTE CAT.M1 (인터넷에 연결될 수 있도록 하는 LTE통신 모듈)
>	>	> * Piezo buzzer (비콘을 스캔하면 사용자에게 소리로 알림을 주는 피에조)
>	>	> * DHT11 (온습도 센서)
>	>	> * 18650 battery (전원공급을 위한 배터리)
>	>	> * 18650 charge module (배터리 충전 모듈)
>	>	> * Li-io 4s BMS (배터리 과충전 보호 모듈)
>	>	> * 5v Fixed Output Drop Converter (12v의 전압을 다른 모듈과 라즈베리 파이가 사용할 수 있도록 5v로 변압)
>	>	> * SPDT switch (손전등 ON/OFF 스위치)
>	>	> * POWER LED (손전등 기능을 위한 LED)

> * 거치대에 사용된 모듈
>	> * Arduino UNO (화재 경보)
>	>	> * KY-026 Flame sensor (화재 감지 센서)

> * 외부 설치 모듈
>	> * HM-10 Bluetooth module (각 층의 특정 구역에 설치되어 사용자의 위치를 알 수 있게하는 비콘 장치)

# 손전등 회로 설계
<img src="https://user-images.githubusercontent.com/77472995/125165114-87a33780-e1d0-11eb-801f-1dff0ccc2d81.png"  width="700" height="370">

# 구현 및 테스트 과정
## 사진
<img src="https://user-images.githubusercontent.com/77472995/125169901-4ff3ba00-e1e7-11eb-80dc-5dd6e75495b3.png"  width="700" height="370">

## 동영상
[![시연연상](http://img.youtube.com/vi/jp4Qo8bUX2M/0.jpg)](https://youtu.be/jp4Qo8bUX2M) 

▲시연영상

[![시연연상](http://img.youtube.com/vi/eQN5lwGYlik/0.jpg)](https://youtu.be/eQN5lwGYlik) 

▲테스트 영상

# 🔍 좀 더 알아보기
* [시장조사](https://github.com/ilovesecu/hetgui/tree/main/1.%20%EC%95%84%EC%9D%B4%EB%94%94%EC%96%B4%20%EB%B8%8C%EB%A0%88%EC%9D%B8%EC%8A%A4%ED%86%A0%EB%B0%8D)
* [프로그램 코드](https://github.com/ilovesecu/hetgui/tree/main/6.%20%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%A8%20%EC%86%8C%EC%8A%A4%EC%BD%94%EB%93%9C) 
