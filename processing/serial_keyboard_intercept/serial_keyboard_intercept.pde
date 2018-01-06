import processing.serial.*;
import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.IOException;

Serial myPort;

Robot robot;

void setup() {
  myPort = new Serial(this, Serial.list()[1], 9600);
  size(1,1);
  try {
    robot = new Robot();
    robot.delay(1000);
  } catch (Exception e) {
    
  }
}

int value = 0;
boolean isPressed = false;
void draw() {

 if (myPort.available() > 0) {
   value = myPort.read();
    
    
   try {
     if (!isPressed && value == 1){
         robot.keyPress(KeyEvent.VK_SEMICOLON);
         isPressed = true; 
          print(value);
       } 
       else if (isPressed && value == 0) {
         robot.keyRelease(KeyEvent.VK_SEMICOLON);
         isPressed = false;
          print(value);
       }
   } catch (Exception e) {
      print(e);     
   }
  

 }
}