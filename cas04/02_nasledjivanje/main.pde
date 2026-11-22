Shape[] shapes;    // Circle i Square proširuju istu klasu Shape

void setup() {
  size(640, 320);
  shapes = new Shape[2];
  // shapes[0] = new Shape(100, 100, color(0)); će izazvati grešku, ne može se napraviti objekat apstraktne klase
  shapes[0] = new Circle(213, height / 2, 80, color(255, 0, 0));
  shapes[1] = new Square(417, height / 2, 80, color(0, 255, 0));
}

void draw() {
  background(255);
  for (int i = 0; i < 2; i++) shapes[i].display();
}
