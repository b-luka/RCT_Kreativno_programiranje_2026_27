class Trail {
  Circle[] circles;
  int count;
  
  Trail(int _count, float _maxSize, color _trailColor) {
    count = _count;
    circles = new Circle[count];
    
    for (int i = 0; i < count; i++) {
      float s = _maxSize * (1.0 - (float) i / count);
      circles[i] = new Circle(0, 0, s, _trailColor);
    }
  }
  
  void update() {
    for (int i = count - 1; i > 0; i--) {    // obavezno unazad!
      circles[i].x = circles[i - 1].x;
      circles[i].y = circles[i - 1].y;
    }
    
    circles[0].x = mouseX;
    circles[0].y = mouseY;
  }
  
  void display() {
    for (int i = count - 1; i >= 0; i--) circles[i].display();
  }
}
