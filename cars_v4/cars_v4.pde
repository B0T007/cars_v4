Cloud minCloud1;

Fuel Jerry1;

MinCar minCar1;

int timer;


// myCarx = Cars nu
Car[] Cars = new Car[25];

// state 1: gaming
// state 2: explosion
int state;


PImage maln_image;
PImage explosion;



void setup() {
  background(0);
  size(1200, 1000, P2D);

  minCloud1 = new Cloud(color(255, 255, 255), random(12, 100), random(12, 100));

  minCar1 = new MinCar(color(255, 150, 150), 10, 200, 0, 0);

  //Array
  // Cars[0] = new Car(color(255, 0, 250), 70, 300, 3);
  // Cars[1] = new Car(color(255, 0, 250), 70, 300, 3);

  for (int i = 0; i < Cars.length; i++) {
    Cars[i] = new Car(random(0,width), random(0, height), random(1,4));
  }


  //myCar1 = new Car(color(255, 0, 0), 50, 200, 1);
  //myCar2 = new Car(color(255, 255, 0), 70, 250, 2);
  //myCar3 = new Car(color(255, 0, 250), 70, 300, 3);

  state = 1;

  //  explosion = loadImage("explosion.png");
  //  explosion.resize(200, 200);
}


void draw() {

  // State 1: gaming
  if (state == 1) {
    background(0, 255, 255);

    for (int i = 0; i < Cars.length; i++) {
      Cars[i].update();
      Cars[i].render();
    }

    minCar1.update();
    minCar1.render();

    minCloud1.update();
    minCloud1.render();

    Jerry1.render();



    // State 2 : explosion
  } else if (state == 2) {
    background(0, 255, 255);

    minCar1.explode();

    minCloud1.update();
    minCloud1.render();

    if (millis() - timer > 2000) {
      state = 1;
    }
  }
}

void keyPressed() {
  if (key == 'w') {
    minCar1.yspeed = minCar1.yspeed - 1;
  }
  if (key == 's') {
    minCar1.yspeed = minCar1.yspeed + 1;
  }
  if (key == 'a') {
    minCar1.xspeed = minCar1.xspeed - 1;
  }
  if (key == 'd') {
    minCar1.xspeed = minCar1.xspeed + 1;
  }

  if (key == 'e') {
    state = 2;
    timer = millis();
  }
}
