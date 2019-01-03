#using conda ready bluetooth arduino script
#This sorts of works. But lags and doesn't print balls till it's finished.
#what i want to do here is reorder the script to get the event handling right.
#there are lots of optimisation issues converting types, speed of in and out data...
#buffer size, number of calls etc plus rendingering

import serial
import time
from vpython import *


canvas()
box()

port="/dev/tty.HC-06-DevB"
bluetooth=serial.Serial(port,9600)

#mine...
def make_image(signal):
    s = str(signal)
    s=int(s)
    ball=sphere(pos=vector(s,0,0), color=color.green)
    return ball
    #end

print("start")

print("Connected")

for i in range(20): #send 10 pings to the blutooth
    bluetooth.flushInput()

    #print("ping")    
    bluetooth.write(b"BOOP "+str.encode(str(i))) #these need to be bytes not unicode, plus a number
    input_data=bluetooth.readline()
    #print(input_data.decode()) #these bytes are coming in
    
    #mine...
    signal = input_data.decode()
    make_image(signal)
    print(signal)
    time.sleep(0.1)
    
    
bluetooth.close()#otherwise the connection will remain open and clog up the devthingabob

print("Done")

#old notes
#need to go into venv due to PySerial module
#https://pypi.python.org/pypi/getkey
#source venv/bon/activate
#vpython info on this might be different approach
#http://vpython.org/contents/docs/keyboard.html
#go back to vpython and get the glowscript or whatever version they want
