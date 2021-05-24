import time


mq = MQ();
while True:
    perc = mq.MQPercentage()
    #sys.stdout.write("\r")
    #sys.stdout.write("\033[K")
    sys.stdout.write("LPG: %g ppm, CO: %g ppm, Smoke: %g ppm" % (perc["GAS_LPG"], perc["CO"], perc["SMOKE"]))
    print()
    sys.stdout.flush()
    time.sleep(1)

