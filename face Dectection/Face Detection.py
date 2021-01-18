import numpy as np
import cv2
import os
import time

index = 0
arr = []
while True:
    cap = cv2.VideoCapture(index)
    if not cap.read()[0]:
        break
    else:
        arr.append(index)
    cap.release()
    index += 1
    print(arr)


detector= cv2.CascadeClassifier('haarcascades/haarcascade_frontalface_default.xml')
# smileDetector= cv2.CascadeClassifier('haarcascades/haarcascade_smile.xml')
detectorEyes = cv2.CascadeClassifier('haarcascades/haarcascade_eye.xml')
cap = cv2.VideoCapture(0)
eyeFace = False
c = 0

while(True):
    ret, img = cap.read()
    time.sleep(1)
    gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    faces = detector.detectMultiScale(gray, 1.3, 5)
    eyes = detectorEyes.detectMultiScale(gray, 1.3, 5)
#     smiles = smileDetector.detectMultiScale(gray,1.3,5)
    
#     for (x,y,w,h) in eyes:
#         cv2.rectangle(img,(x,y),(x+w,y+h),(0,0,0),-1)

    for (x,y,w,h) in faces:
         cv2.rectangle(img,(x,y),(x+w,y+h),(0,0,0),-1)

        


    cv2.imshow('face detection -- this is on',img)
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break
    
cap.release()
cv2.destroyAllWindows()