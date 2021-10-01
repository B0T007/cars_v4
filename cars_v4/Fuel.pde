class Fuel {

  color c;
  
  float Xpos;
  float Xpos;

    Fuel(color tempC, float tempXpos, float tempYpos) {
    c = tempC
    xpos = tempXpos;
    ypos = tempYpos;
  }




  void render() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos, ypos, 20, 10);
  }
}
