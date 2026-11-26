ParticleSystem ps;

int score = 0;
int lives = 3;
boolean gameOver = false;
boolean gameWon = false;

void setup() {
  size(640, 440);
  ps = new ParticleSystem();
}

void draw() {
  background(25);
  
  fill(230);
  textSize(16);
  textAlign(LEFT, TOP);
  text("Points: ", 15, 12);
  textAlign(RIGHT, TOP);
  text("Lives: ", width - 15, 12);
  
  ps.update();
  ps.display();
}

void mousePressed() {
  ps.burst(mouseX, mouseY, 50, color(250, 140, 25));
} 
