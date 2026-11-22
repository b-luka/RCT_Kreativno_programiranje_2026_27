ParticleSystem ps;

void setup() {
  size(640, 320);
  ps = new ParticleSystem();
}

void draw() {
  background(25);
  ps.update();
  ps.display();
}

void mousePressed() {
  ps.burst(mouseX, mouseY, 50, color(250, 140, 25));
} 
