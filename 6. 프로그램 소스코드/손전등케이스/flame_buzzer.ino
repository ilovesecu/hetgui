
#include <pitches.h>           //라이브러리 불러오기 

int buzzer = 13;

int state;

void setup() {
  pinMode(buzzer,OUTPUT);
 
  Serial.begin(9600);
}


void loop() {

  state = analogRead(A1);

  noTone(buzzer);

  if (state == 0) {
    Serial.println("ON");
    tone(buzzer, 500, 100);
    delay(100); 
  }
  else {
    Serial.println("OFF");
    noTone(buzzer);
  }
  delay(100);
}
