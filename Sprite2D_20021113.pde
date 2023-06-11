//////////////////////////////////////////////////////////////////////////////////
// Simple Stickman walking Processing Sketch                                     /
// The sketch uses two image files in the data folder:                           /
//    walkingtranp.png is a sprite sheet of  8 linear stickman waling poses      /
//    background.png is a background image                                       /   
// Background music used in this animation is Happy Walk by Twisterium           /
// Credit file titled credit.txt is included in the data folder                  /
// SceneOne is the scene with the scrolling background and the stickman walking  /
// SceneTwo is the scene with the scrolling credits                              /
// The sketch animates the stickman walking while the background scrolls.        /                        
//////////////////////////////////////////////////////////////////////////////////

import processing.sound.*;
PImage background, walkingtransp;
PImage[] walkingframes = new PImage [8];
String [] credits;
SoundFile bgMusic;

int index=0;
int offset=0;
void setup(){
  size(500,750);
  frameRate(20);                                  //Adjusts the frame rate of the animation
  walkingtransp = loadImage("walkingtransp.png"); //Load stickman sprite
  background = loadImage("background.png");       //Load background
  credits = loadStrings("credit.txt");            //Load credits
  textSize(20);                                   //Text size of the credits
  bgMusic = new SoundFile(this,"Happy Walk.mp3"); //Load background music
  bgMusic.play();                                 //Play background music
  for(int n=0;n<8;n++){
    walkingframes[n]=walkingtransp.get(n*walkingtransp.width/8,0,walkingtransp.width/8,walkingtransp.height);
  }                                               //Divides the stickman sprite sheet to eight parts
}

void draw(){
  if(frameCount<900)
   SceneOne();                                    //sceneOne is executed
  else 
   SceneTwo(frameCount - 900);                    //sceneTwo is executed
  
}
