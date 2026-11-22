class Circle {
  float x;
  float y;
  float size;
  color shapeColor;
  
  Circle(float _x, float _y, float _size, color _shapeColor) {
    x = _x;
    y = _y;
    size = _size;
    shapeColor = _shapeColor;
  }
  
  void display() {
    fill(shapeColor);
    ellipse(x, y, size, size);
  }
}

class Square {
  float x;
  float y;
  float size;
  color shapeColor;
  
  Square(float _x, float _y, float _size, color _shapeColor) {
    x = _x;
    y = _y;
    size = _size;
    shapeColor = _shapeColor;
  }
  
  void display() {
    fill(shapeColor);
    rectMode(CENTER);
    rect(x, y, size, size);
  }
}
