abstract class Shape {    // apstraktna klasa služi da bi se iz nje izvele konkretne klase koje imaju zajednička svojstva
  float x;
  float y;
  float size;
  color shapeColor;
  
  Shape(float _x, float _y, float _size, color _shapeColor) {
    x = _x;
    y = _y;
    size = _size;
    shapeColor = _shapeColor;
  }
  
  abstract void display();
  
  abstract boolean mouseCollision();

  color getCurrentColor() {  // ako je miš na objektu, promeni mu boju
    if (mouseCollision()) return lerpColor(shapeColor, color(255), 0.4);
    return shapeColor;
  }
}

class Circle extends Shape {
  Circle(float _x, float _y, float _size, color _shapeColor) {
    super(_x, _y, _size, _shapeColor);
  }
  
  void display() {
    fill(getCurrentColor());
    ellipse(x, y, size, size);
  }
  
  // poziciju miša čitamo kroz globalne promenljive mouseX i mouseY
  boolean mouseCollision() {        // dist za udaljenost od centra
    return dist(mouseX, mouseY,
                x, y) <= size / 2;
  }
}

class Square extends Shape {
  Square(float _x, float _y, float _size, color _shapeColor) {
    super(_x, _y, _size, _shapeColor);
  }
  
  void display() {
    fill(getCurrentColor());
    rectMode(CENTER);
    rect(x, y, size, size);
  }
  
  boolean mouseCollision() { // pripada kvadratu ako su x i y udaljene maksimalno size / 2 od centra
    return abs(mouseX - x) <= size / 2 && abs(mouseY - y) <= size / 2;
  }
}
