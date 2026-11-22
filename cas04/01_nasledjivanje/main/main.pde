Shape[] shapes;
Trail trail;

void setup() {
  size(640, 320);
  shapes = new Shape[2];
  shapes[0] = new Circle(160, height / 2, 80, color(255, 0, 0));
  shapes[1] = new Square(320, height / 2, 80, color(0, 255, 0));
  trail = new Trail(5, 35, color(0, 0, 255));
}

void draw() {
  background(255);
  for (int i = 0; i < 2; i++) shapes[i].display();
  trail.update();
  trail.display();
}
