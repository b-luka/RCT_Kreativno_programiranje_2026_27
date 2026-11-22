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

  color getCurrentColor() {
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
}
