import serial

ser = serial.Serial('/dev/cu.usbmodem1411',9600)

while True:
    temp = str(ser.readline())
    lines = temp[2:3]
    print(lines)
    with open('lick.csv','a') as f:
        f.write(lines+','+'\n')
        

ser.close