void SceneOne(){                                
  image(background, -offset,0);                 //Display background
  image(background, background.width-offset,0); //Repeat background to the right
  image(walkingframes[index],150,430);          //Size of the stickman walking
  index=(index+1)%8;                            //Index gives the number of sprite image to show
  offset=(offset+5)%background.width; 
}
   
   
   
   
   
   
