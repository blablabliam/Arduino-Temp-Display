/*
 * Thermistor Temperature Sensor Displayed on 4 Digit 7 segment display
 * Created by Liam Plybon, blablabliam.github.io
 * 
 * Temperature is read from a thermistor to an Arduino Nano, calculated with general 
 * data for a 10k NTC Thermistor, and transmitted bitwise to a shift register and 
 * 7 segment display with four digits. 
 */

/*
 * temp control to get temp in K.
 */

int ThermistorPin = 0;
int Vo;
float R1 = 10000;
float logR2, R2, T;
float c1 = 1.009249522e-03, c2 = 2.378405444e-04, c3 = 2.019202697e-07;

/*
 * Display control
 * This determines how digits will be displayed bitwise, as well as the pins for the 
 * shift registor and digit pins. 
 */


const int digitPins[4] = {
  4,5,6,7};                 //4 common anode pins of the display
const int clockPin = 11;    //74HC595 Pin 11 
const int latchPin = 12;    //74HC595 Pin 12
const int dataPin = 10;     //74HC595 Pin 14
const byte digit[10] =      //seven segment digits in bits
{
  B11000000, //0 B00111111
  B11111001, //1 B00000110
  B10100100, //2 B10100100
  B10110000, //3 B10110000
  B10011001, //4 B10011001
  B10010010, //5 B10010010
  B10000010, //6 B10000010
  B11111000, //7 B11111000
  B10000000, //8 B10000000
  B10010000  //9 B10010000
};

int digitBuffer[4] = {
  0};
int digitScan = 0, flag=0,  soft_scaler = 0;
;

/*
 * Setup pins
 */

void setup(){                
  for(int i=0;i<4;i++)
  {
    pinMode(digitPins[i],OUTPUT);
  }
  pinMode(latchPin, OUTPUT);
  pinMode(clockPin, OUTPUT);
  pinMode(dataPin, OUTPUT);  

}
 
//writes the temperature to display
void updateDisp(){
  //Set all digits to off
  for(byte j=0; j<4; j++)  
    digitalWrite(digitPins[j], HIGH);
  //send clear to shift register
  digitalWrite(latchPin, LOW);  
  shiftOut(dataPin, clockPin, MSBFIRST, B00000000);
  digitalWrite(latchPin, HIGH);
  //wait for digit to clear
  delayMicroseconds(100);
  digitalWrite(digitPins[digitScan], LOW); 
 
  digitalWrite(latchPin, LOW);  
  if(digitScan==2)
    shiftOut(dataPin, clockPin, MSBFIRST, ~(digit[digitBuffer[digitScan]] | B10000000)); //print the decimal point on the 3rd digit
  else
    shiftOut(dataPin, clockPin, MSBFIRST, ~digit[digitBuffer[digitScan]]);
 
  digitalWrite(latchPin, HIGH);
  digitScan++;
  if(digitScan>3) digitScan=0; 
}
 
void loop(){ 
  //calculates the temp in K, then writes the temp to the display  
  Vo = analogRead(ThermistorPin);
  R2 = R1 * (1023.0 / (float)Vo - 1.0);
  logR2 = log(R2);
  T = (1.0 / (c1 + c2*logR2 + c3*logR2*logR2*logR2));
  //Convert to Celcius
  T = T - 273.15;
  //Farenheit conversion
  //T = (T * 9.0)/ 5.0 + 32.0;  
  digitBuffer[3] = int(T)/1000;
  digitBuffer[2] = (int(T)%1000)/100;
  digitBuffer[1] = (int(T)%100)/10;
  digitBuffer[0] = (int(T)%100)%10;
  updateDisp();
  delay(2);
}
