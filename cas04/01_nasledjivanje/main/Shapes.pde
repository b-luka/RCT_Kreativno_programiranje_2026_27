abstract class Shape {
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

  color getCurrentColor() {
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
  
  boolean mouseCollision() {
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
  
  boolean mouseCollision() {
    return abs(mouseX - x) <= size / 2 && abs(mouseY - y) <= size / 2;
  }
}
