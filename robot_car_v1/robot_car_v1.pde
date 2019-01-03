//This has pings coming back.


#This code isn't producing an image but is pinging so let's leave this for now. 


list = []
#mine...ends
    
print("start")


port="/dev/tty.HC-06-DevB"
bluetooth=serial.Serial(port,9600)
print("Connected")
bluetooth.flushInput()
for i in range(50): #send 10 pings to the blutooth
    print("ping")
    
    bluetooth.write(b"BOOP "+str.encode(str(i))) #these need to be bytes not unicode, plus a number
    input_data=bluetooth.readline()
    print(input_data.decode()) #these bytes are coming in
    
    #mine...
    s = int(input_data.decode())
    make_image(s)
    #end
    
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
