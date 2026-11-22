Circle c;
Square s;

void setup() {
  size(640, 320);
  c = new Circle(213, height / 2, 80, color(255, 0, 0));
  s = new Square(416, height / 2, 80, color(0, 255, 0));
}

void draw() {
  background(255);
  c.display();
  s.display();
}
