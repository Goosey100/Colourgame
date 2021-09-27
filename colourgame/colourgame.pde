//Catherine Guo 
//Colour clicker 
//September 17 2021
PImage [] front;
int currentPic = 0;
String leadingZeroes ="0";
String [] words;
color[] colors; 
color red = (#EA243E);
color orange = (#EA841C);
color yellow = (#FFF064);
color green = (#64E859);
color blue = (#45C4F5);
color purple = (#8023A5);
color grey = (#626262);

//mode stuff
final int INTRO = 1;
final int GAME = 2;
final int GAMEOVER = 3;
int mode;
PFont font;
PFont font2;
int w = int (random (0,6));
int c = int (random (0,6));
int r = int (random (0,6));
int timer;
int x;
int points;
int highscore;
boolean correct = false;



//void setup 
void setup() {
  words = new String [6];
  colors = new color [6];
  words[0] = "red";
  colors[0] = red;
  words [1] = "orange";
  colors[1] = orange;
  words [2] = "yellow";
  colors[2] = yellow;
  words [3] = "green";
  colors[3] = green;
  words [4] = "blue";
  colors[4] = blue;
  words [5] = "purple";
  colors[5] = purple;
  //words [6] = "grey";
 // colors[6] = grey;
  //words[6] = "black";
  //colors[6] = black;
  frameRate(40);
highscore = 0;
points = 0;
int timer = 200;
int x = int(random(2));
  
  
  //gif
  front = new PImage[7];
  int index1 = 0;
  while (index1 < 7) {
  if (index1 < 10) leadingZeroes = "0";
  else leadingZeroes = "";
  front [index1] = loadImage("front/frame_"+leadingZeroes + (index1) + "_delay-0.2s.gif");
  index1++;
  }
  
 

      
  
     size (800,500);
mode = INTRO;


//font
font = createFont ("Reglisse.ttf",45);
font2 = createFont ("yay.ttf",30);
  
  }
  
  void draw() {

    {
     if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else 
    println ("Mode error:" + mode);
  }
  
  }
  

 
  
  
  
  
  
  
  
