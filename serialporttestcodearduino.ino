String val;
int cnt;
void setup() {
  Serial.begin(9600);
}

void loop(){
  while(Serial.available()!='\0')
  {
    char rxval=Serial.read();
    val=val+(rxval);
  }

delay(500);
Serial.print(val);
delay(10);
val="";

}




