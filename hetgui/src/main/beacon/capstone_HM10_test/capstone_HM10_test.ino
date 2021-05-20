#include <SoftwareSerial.h>
#define RXD1 2
#define TXD1 3
#define RXD2 4
#define TXD2 5
SoftwareSerial HM10(TXD1,RXD1);

void setup() {
  Serial.begin(9600);
  Serial.println("hello");
  HM10.begin(9600);
}
 
void loop() {
  while(HM10.available()){
    byte data=HM10.read();
    Serial.write(data);
  }
  while(Serial.available()){
    byte data=Serial.read();
    HM10.write(data);
  }
}

//hm10 uuid 변경하는 at commands : at+ibe0[8자], at+ibe1[8자], at+ibe2[8자], at+ibe3[8자]
//hm10 uuid 확인 하는 at command : at+ibe0?, at+ibe1?, at+ibe2?, at+ibe3?
//>> AT+RENEW //공장초기화
//>> AT+RESET //모듈 리셋
//>> AT //모듈 응답 확인
//>> AT+MARJ0x1234 //비콘의 MAJOR (비콘을 특정GROUP으로 묶을 때 사용)NUMBER설정 (0x1234는 임의 설정 가능)
//>> AT+MINO0xFA01 //비콘의 MINOR(GROUP내에 있는 개별 비콘을 구별할 때 사용) NUMBER설정 (0xFA01은 임의 설정 가능)
//>> AT+ADVI5 //신호 송출 주기를 5로 설정 
//>> AT+NAMECOPPER //모듈의 이름 설정(COPPER부분은 임의 설정 가능)
//>> AT+ADTY3 //전원 절약을 위해 Advertising Type을 3으로 설정
//>> AT+IBEA1 //Ibeacon활성화
//>> AT+DELO2 //Ibeacon을 BroadCast전용 모드로 세팅
//>> AT+PWRM0 //모듈을 Auto-Sleep모드로 설정(절전효과)
/>> AT+RESET //모듈을 재부팅
