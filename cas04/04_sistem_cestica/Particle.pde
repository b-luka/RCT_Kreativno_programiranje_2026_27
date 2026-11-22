class Particle extends Circle {
  float vx;
  float vy;
  float gravity;
  float lifetime;
  float maxLifetime;

  Particle(float _x, float _y, color _shapeColor) {
    super(_x, _y, random(4, 12), _shapeColor);
    
    vx = random(-4, 4);    // random šansa za levo ili desno
    vy = random(-6, 1);    // veća šansa da leti nagore
    
    gravity = random(0.08, 0.22);
    maxLifetime = random(40, 110);
    lifetime = maxLifetime;
  }
  
  void update() {
    vy += gravity;
    x += vx;
    y += vy;
    lifetime -= 1;
  }
  
  boolean isDead() {
    return lifetime <= 0;
  }
  
  void display() {
    float alpha = 255 * (lifetime / maxLifetime);
    noStroke();
    fill(shapeColor, alpha);
    ellipse(x, y, size, size);
  }
}
