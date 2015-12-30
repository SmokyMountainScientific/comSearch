void setupRun(){
  boolean wait = true;
  while (wait == true){
    if(Serial.available() > 0) {
      int starti = Serial.read();
      ////// start code ///////////
      if(starti == '*') {           // Gui transmits * looking for com port
        Serial.println('&');         // LaunchPad responds to Gui with &
        digitalWrite(RED_LED,HIGH);
        delay(500);
        digitalWrite(RED_LED,LOW);
        wait = false;
      }
    }
  }
}

