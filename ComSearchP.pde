/*  Automating the com port search */

import controlP5.*;                   // needed for connect button
import processing.serial.*;

ControlP5 cp5Com;
Serial serialPort;
PFont font = createFont("arial", 20);
int bkgnd = #0B45DE;
String comStatTxt; 
String[] comList ;               // Array for ports names.
boolean Comselected = false;

void setup() {
  size(300, 100);
  setupComPort();      // defined in Com_Port tab
  connect();           // defined in Com_Port tab
}             

void draw() {
  background(bkgnd);    
  stroke(255);
  textFont(font);
  text(comStatTxt, 65, 25);
}


