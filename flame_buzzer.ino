
#include <pitches.h>           //라이브러리 불러오기 
int flame;
int buzzer = 13;               //부저를 13번 핀에 연결


void setup() {
  pinMode(buzzer, OUTPUT);     //부저를 출력으로 설정
  Serial.begin(9600); 
}

void loop() {
  flame = analogRead(A1);      //불꽃 감지 센서를 아두이노 A1 핀에 연결
  delay(100);
  Serial.print("Flame = ");
  Serial.println(flame);
  delay(100);

  if(flame < 900){              //900은 설정한 값이므로 변경해도 상관없음 최대값은 1000 
    Serial.println("Warning"); //화재가 감지되었을경우 시리얼모니터 출력
    tone(buzzer, 4000 ,50);    //부저 울림
    delay(50);
    tone(buzzer, 2000 ,50);    //부저 울림을 다른소리와 겹치게 함
    delay(100);
  }
  else{
    noTone(buzzer);            //부저 울리지 않음
    delay(100);
  }
}
