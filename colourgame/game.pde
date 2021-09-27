void game (){
        textAlign(CORNER, CORNER);
  textFont(font);
background(0);
fill (255);
 rect (width/2,0, 500,500);
 text (points, 100,100);
  fill (colors [c]);
  textAlign(CENTER, CENTER);
  text (words [w], width/2,height/2);
  //text(frameCount, 0,200);


//timer


 stroke(#EAE4AA);
 fill (#EAE4AA);
 strokeWeight(4);
 

    if (frameCount % 1 == 0){
   timer= timer -4;
 }
 
 //IF TIMER HITS END:
if (timer <-220){
 mode = 3;
}

//TIMER
rect(190,320,420,30);
fill(colors[c]);
stroke (colors [c]);
rect (timer,325,395,20);
stroke(0);
fill(0);
rect(190,310,-200,60);
stroke (255);

//================================================================

//YES NO BUTTON
 fill(255);
 text ("yes!", 180, 440);
 fill (0);
  text ("no.", 580, 440);
 
}



void gameClicks(){
 
 
  //CONSEQUENCES + OUTCOMES
   if (mouseX < width/2 && w == c) {
correct = true;

   } else if (mouseX > width/2 && w!=c) {// puzle is not matching, bad consequence
correct = true;
   
   
 
   //check w + c variables, if w + c are the same then it should be right.

   }
   
   if (correct){
      timer = 200;
      //50/50
       int ok = int(random (6));
       x = int(random(0,2));
     if (x == 0) {// 0 = right
  ok = int(random (6));
      w = ok;
      c = ok;
     }
if (x == 1) {// 1 = NOT RIGHT
  ok = int(random (6));
      w = ok;
      c = int(random(6));
    do {
      ok = int(random(6));
    }while (ok == w);
   c = ok;
    
    
    }
     points = points + 1;
    
   }else{
        timer = 0;
       mode = 3;
   }
   
  if (mouseX> width/2 && w == c) { //puzzle is matching
  correct = false;
  
}else { //puzzle is not matching
if (mouseX<width/2 && w!=c);
correct = false;

//highscore
if(points < highscore) {
   highscore = highscore;
 } else if 
 (points> highscore)
   highscore = points;



}



}





  
