//참고사이트 https://www.teachmemicro.com/use-mq-7-carbon-monoxide-sensor/
//  https://m.blog.naver.com/PostView.nhn?blogId=jyoun&logNo=221423420449&proxyReferer=https:%2F%2Fwww.google.com%2F
//현재 장소의 R0를 구하기 위한 코드
float sensor_volt;
float RS_gas; 
float R0;
int R2 = 2000;
  
void setup() {
 Serial.begin(9600);
}
 
void loop() {
  int sensorValue = analogRead(A0);
  sensor_volt=(float)sensorValue/1024*5.0;
  RS_gas = ((5.0 * R2)/sensor_volt) - R2;
  R0 = RS_gas / 1;
  Serial.print("R0: ");
  Serial.println(R0);
}
