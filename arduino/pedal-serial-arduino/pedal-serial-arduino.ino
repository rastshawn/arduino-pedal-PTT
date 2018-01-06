//#include <Keyboard.h>


const int buttonPin = 4;
const int ledPin = 2;
void setup() {
  // put your setup code here, to run once:
  pinMode(buttonPin, INPUT);
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
  //Keyboard.begin();


  delay(1000);
}


int buttonState = 0;
int key = ';';

void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(buttonPin);
  if (buttonState == HIGH) {
    Serial.write(1);
    digitalWrite(ledPin, HIGH);
    //Keyboard.press(key);
  } else if (buttonState == LOW) {
    Serial.write(0);
    digitalWrite(ledPin, LOW);
    //Keyboard.releaseAll();
  }
  delay(100);
}
