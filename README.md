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

# ⚡추진배경
|연도|화재건수|**사망**|**부상**|인명피해|부동산피해(천원)|재산피해(천원)|
|---:|---:|---:|---:|---:|---:|---:|
|2018|28,013|**316**|**1,915**|2,231|228,397,458|495,032,462|
|2019|26,025|**216**|**1,777**|1,993|202,282,084|552,840,022|
|2020|24,929|**300**|**1,583**|1,883|222,754,093|532,754,002|
|합계|78,967|**832**|**5,275**|6,107|653,433,635|1,580,626,486|

<center><표1 2018년 ~ 2020년 건축, 구조물 화재 건수 및 인명피해, 부동산 피해 규모><center><br>

* 화재 사전 경보기와 사람들의 인식 변화로 인해 건축,구조물에 대한 화재 건수는 줄어들고 있는 양상이지만 아직까지도 많은 화재가 발생하고 있으며 그에 따라 인명피해도 꾸준히 발생하고 있는 상황입니다. (표1 참고.) 이런 상황에서 Hot source팀은 한명의 인명 피해라도 줄이고자 건물 내부에 IoT를 활용한 스마트 손전등을 만들어 보았습니다.
  
* 기존 비상 손전등은 특별한 기능 없이 그저 손전등 기능한 하여 구조 요청자나 구조자에게 좀 더 직접적인 영향을 주지 못하였습니다. 그것을 보완하게 위해 

# Features
1. HM-10 Bluetooth module supports Bluetooth 4.0BLE, is low power efficient, and is easy to install due to miniaturization.

2. A beacon scanner is mounted on a flashlight to deliver information to the outside world where you are currently in the process of escaping the building.

3. Considering that the building's network will be paralyzed, the LTE cat.m1 module can be used to transmit location information to the server using its own network.

4. Firefighters and rescuers can find out where survivors are by viewing this information on the web or on an app, allowing them to conduct rescue operations more quickly.

# Main Modules Used
* RasberryPi 4 Model B
* Arduino UNO
* Codezoo LTE CAT.M1
* HM-10 Bluetooth module
* Piezo buzzer
* KY-026 Flame sensor
