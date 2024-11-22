void setup() {
  size(500, 500);
  ship = new Ship();
}
Ship ship;
void draw() {
  background(100);
  strokeWeight(5);
  ship.draw();
  ship.rotate();
  ship.tick();
}

void keyPressed() {
  if (key == 'w') {
    ship.directed_impulse(0, 1);
  }
}
