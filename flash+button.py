import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)
GPIO.setwarnings(False)
GPIO.setup(23,GPIO.OUT) # LED Flash
GPIO.setup(18,GPIO.IN)  # 버튼
c = 0

GPIO.setwarnings(False)

while (True):
    button = GPIO.input(18) 
   
    if button == True: # 버튼이 눌렸을때
        c = c + 1
        time.sleep(0.5)
    elif c % 2 == 1:
        GPIO.output(23,True) # c값의 나머지가 1일경우 LED ON
        

    elif c % 2 == 0:
        GPIO.output(23,False) # # c값의 나머지가 0일경우 LED OFF       
       
while True:
    try:
        time.sleep(1)
    except KeyboardInterrupt:   # 키보드 인터럽트를 감지하면
        GPIO.cleanup()               # GPIO 핀을 초기화시키고 
        break    

    








    
