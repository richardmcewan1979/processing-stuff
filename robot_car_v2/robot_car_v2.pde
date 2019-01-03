//this code needs to be changed to java


#using conda ready bluetooth arduino script
#This sorts of works. But lags and doesn't print balls till it's finished. 

import serial
import time
from vpython import *


#import datetime
#import random
#import matplotlib.pyplot as plt

# make up some data
#x = [datetime.datetime.now() + datetime.timedelta(hours=i) for i in range(12)]
#y = [i+random.gauss(0,1) for i,_ in enumerate(x)]

# plot
#plt.plot(x,y)
# beautify the x-labels
#plt.gcf().autofmt_xdate()
#plt.show()
canvas()

box()

#mine...
def make_image(signal):
    s = str(signal)
    s=int(s)
    ball=sphere(pos=vector(s,0,0), color=color.green)
    return ball
    #end

list = []
#mine...ends
    
print("start")

#while True: 
port="/dev/tty.HC-06-DevB"
bluetooth=serial.Serial(port,9600)
#print("Connected")
bluetooth.flushInput()
for i in range(50): #send 10 pings to the blutooth
    #print("ping")    
    bluetooth.write(b"BOOP "+str.encode(str(i))) #these need to be bytes not unicode, plus a number
    input_data=bluetooth.readline()
    #print(input_data.decode()) #these bytes are coming in
    
    #mine...
    signal = input_data.decode()
    make_image(signal)
    


    
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
