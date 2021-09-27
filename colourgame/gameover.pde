void gameover() {
correct = true;
  background (0);
  fill(255);
text("GAME OVER",width/2,100);

fill (#FF6C6C);
text ("HIGH SCORE: " +highscore, width/2,200);
fill (255);
text ("POINTS: " + points, width/2, 350);
}
void gameoverClicks() {
  mode = 1;
}
