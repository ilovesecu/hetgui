//참고사이트 https://www.teachmemicro.com/use-mq-7-carbon-monoxide-sensor/
//  https://m.blog.naver.com/PostView.nhn?blogId=jyoun&logNo=221423420449&proxyReferer=https:%2F%2Fwww.google.com%2F
//구한 R0를 통해 현재 장소의 일산화탄소 농도 ppm을 구하는 코드
float sensor_volt = 0;
float RS_gas = 0;
float ratio = 0;
float sensorValue = 0;
float R0 = 13000; // R0 구하는 코드로 현재 장소의 R0를 구한다.  

  
  void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void loop() {
  int sensorValue = analogRead(A0);
  sensor_volt = (float)sensorValue/1024*5.0;
  RS_gas = (5.0-sensor_volt)/sensor_volt;
  ratio = RS_gas/R0;
  float x = 1536.46 * ratio;
  float ppm = pow(x, -1.709);
  Serial.print("PPM: ");
  Serial.println(ppm);
  delay(1000);
}
