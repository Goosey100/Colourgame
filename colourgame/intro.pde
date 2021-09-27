void intro() {
     points = 0;
     timer = 200;
     
        textAlign(CORNER, CORNER);
  fill (225);
  //image (front, 0,0,800,800);
  image(front[currentPic], 0,0,800,500);
  currentPic++;
  if(currentPic >= 7) {
    currentPic = 0;
  
}

textFont(font);
fill (#F5F2D7);
text("Colour theory",60,140);
fill (0);
strokeWeight (8);
stroke (#47EAD6);
pain (215,445,260,350);
rect(215,260,230,90);
fill ( 255);
textFont (font2);
fill (#C1FFF7);
text("START!",245, 320);

}

void introClicks() {
if (mouseX > 215 && mouseX < 445 && mouseY > 260 && mouseY < 350 ){
    mode = GAME;
  }
}
