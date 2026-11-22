Trail trail;

void setup() {
  size(640, 320);
  trail = new Trail(5, 35, color(0, 0, 255));
}

void draw() {
  background(25);
  trail.update();
  trail.display();
}
