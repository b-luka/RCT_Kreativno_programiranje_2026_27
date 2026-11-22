class ParticleSystem {
  ArrayList<Particle> particles;
  
  ParticleSystem() {
    particles = new ArrayList<Particle>();
  }
  
  void burst(float _x, float _y, int count, color _c) {
    for (int i = 0; i < count; i++) {
      particles.add(new Particle(_x, _y, _c));
    }
  }
  
  void update() {
    for (int i = particles.size() - 1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.update();
      if (p.isDead()) particles.remove(i);
    }
  }
  
  void display() {
    for (int i = 0; i < particles.size(); i++) particles.get(i).display();
  }
}
