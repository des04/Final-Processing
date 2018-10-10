


//SETTING VARIABLES FOR THE GAME:

//variable for gallery image
PImage gallery;

//angry eyebrows
boolean angry = false;

//sound
import ddf.minim.*;


Minim minim;
AudioPlayer song;

//viewing areas
boolean streetView = true;
boolean motelView = false;
boolean greyBuildingView = false;
boolean epicView = false;

//variables for gravity in minigame
float gravity = 0;
float gravity2 = 0;
float gravity3 = 0;
float gravity4 = 0;
float gravity5 = 0;
float gravity6 = 0;
float gravity7 = 0;
float gravity8 = 0;

//boolean for when you touch a triangle
boolean uLose = false;

//variables for movement in minigame
int Xpos = 1000;
int score = 0;

//instructions guide
boolean instructions = false;

//setting the font variable
PFont font;

//variables that change their backgrounds
float sky = 0;

//flickering light;
int light = 255;

//variable for moving car
int vroom = 1;


//variable for mouth movement
int mouth = 775;

//variable for eye movement
int offsetX;
int offsetY;

//variable for car colour
float colour = random(0, 256);
float colour2 = random(0, 256);
float colour3 = random(0, 256);



//SETTING UP THE GAME START (THE STUFF THAT WON'T CHANGE DURING THE GAME)

//everything in this set of brackets will not need to be changed throughout the game
void setup() {

  //making it so the game takes up the whole screen
  fullScreen();

  //making it so when I create rectangles in the future I'll do so by writing down places for two corners
  rectMode(CORNERS);

  //making it so the minim (song) variable will work
  minim = new Minim(this);

  //adding the adventure time theme song to the song variable
  song = minim.loadFile("adventure_time_island_song_with_lyrics.wav");

  //loading a picture for the background of the awesome art gallery
  gallery = loadImage("Air-de-Paris-Rob-Pruitt-1.jpg");
}

//SETTING UP THE BULK OF THE GAME (BASICALLY EVERYTHING YOU SEE)

void draw() {

  //if your guy is standing out in the street (and isn't in any of the other rooms)
  if (streetView == true && motelView == false && greyBuildingView == false && epicView == false) {


    //make the outline of all shapes a thickness of five
    strokeWeight(5);

    //make the outline of all shapes black
    stroke(0);

    //setting the colour of the sky
    background(sky, 0, 75);

    //making it so the sky changes colour slowly (getting brighter and brighter)
    sky += 0.1;

    //if the sky gets too bright
    if (sky >= 200) {

      //make it dark again
      sky = 0;
    }

    //setting the size of the text for the instructions to fifty
    textSize(50);

    //setting the colour of the text for the instructions to black
    fill(255);

    //adding the text that says "CLICK HERE FOR INSTRUCTIONS" and chooosing where it is
    text("CLICK HERE \n FOR INSTRUCTIONS", 2100, 100);

    //if someone decided to click on the previously mentioned text
    if (instructions == true) {

      //set the text size to thirty
      textSize(30);

      //show the following messages under one another
      text("CLICK ON ANY DOOR \n TO ENTER THE BUILDING", 2100, 300);
      text("PRESS ANY KEY \n TO YELL AT CARS", 2100, 500);
      text("CLICK ON THE RADIO \n TO PLAY MUSIC, THE \n RADIO IS IN THE MOTEL", 2100, 700);
    } 


    //setting the colour for the sidewalk
    fill(200);

    //setting the shape, whereabouts, and size of the sidewalk
    rect(0, 1000, width, 1100);
    line(400, 1000, 200, 1100);
    line(700, 1000, 500, 1100);
    line(1000, 1000, 800, 1100);
    line(1300, 1000, 1100, 1100);
    line(1600, 1000, 1400, 1100);
    line(1900, 1000, 1700, 1100);
    line(2200, 1000, 2000, 1100);
    line(2500, 1000, 2300, 1100);
    line(2800, 1000, 2600, 1100);

    //setting the colour for the alley floor in the background
    fill(60, 30, 0);

    //setting the shape, whereabouts, and size of the sidewalk
    rect(0, 900, width, 1000);

    //setting the colour for the grey building in the background
    fill(150);

    //creating the rectangular base for the grey building in the background
    rect(0, 0, 500, 1000);

    //setting the colour of the windows for the grey building in the background
    fill(0, 0, 255);

    //setting the shape, size, and whereabouts for all of the windows on the grey building in the background
    rect(200, 30, 400, 200);
    rect(200, 250, 400, 420);
    rect(200, 470, 400, 650);
    rect(0, 30, 50, 200);
    rect(0, 470, 50, 650);
    rect(0, 250, 50, 420);

    //setting the colour for the windowless wall of the grey building in the background (the part that makes it 3d)
    fill(125);

    //setting the shape, size and whereabouts of the windowless wall of the grey building in the background
    beginShape();
    vertex(500, 1000);
    vertex(700, 900);
    vertex(700, 0);
    vertex(500, 0);
    endShape(CLOSE);


    //setting a colour for the door of the grey building in the background
    fill(150);

    //setting the shape, size, and whereabouts of the door of the grey building in the background
    rect(0, 700, 300, 1000);
    line(120, 700, 120, 1000);
    ellipse(160, 850, 50, 50);
    ellipse(80, 850, 50, 50);

    //setting the colour of the black part of of the road
    fill(50);

    //setting the shape, size, and whereabouts of the black part of the road
    rect(0, 1100, width, height);

    //setting the colour of the yellow lines on the road
    stroke(150, 130, 0);

    //setting the thickness of the yellow lines on the road
    strokeWeight(50);

    //setting the length and where abouts of the yellow lines
    line(100, 1450, 300, 1450);
    line(500, 1450, 700, 1450);
    line(900, 1450, 1100, 1450);
    line(1300, 1450, 1500, 1450);
    line(1700, 1450, 1900, 1450);
    line(2100, 1450, 2300, 1450);
    line(2500, 1450, 2700, 1450);


    //setting the thickness of all outlines after this to five 
    strokeWeight(5);

    //setting the colour of all outlines to black
    stroke(0);

    //setting the colour of the motel
    fill(75);

    //setting the shape, size, and whereabouts of the motel
    rect(800, 0, 1800, 1000);

    //setting the colour of the text on the motel
    fill(0, 0, 0);

    //loading a font to the font vairable created earlier
    font = createFont("BARK.ttf", 150);

    //setting the font for all of the text to the font that was just added
    textFont(font);

    //setting the whereabouts of the "MOTEL" text
    text("MOTEL", 1000, 150);

    //if the light variable reached more than 255
    if (light >= 255) {

      //set the light variable back to 150
      light = 150;

      //if the light variable equals 155
    } else if (light >= 155) {

      //set the light variable to 255
      light = 255;

      //if the light variable is any other number
    } else {

      //up the light variable by one
      light += 1;
    }

    //setting the colour of the flickering window
    fill(light, light, 0);

    //setting the wherabouts and size of the other motel windows
    rect(900, 200, 1200, 400);
    fill(255, 255, 0);
    rect(1300, 200, 1600, 400);
    rect(900, 450, 1200, 650);
    rect(1300, 450, 1600, 650);

    //setting the colour for the windowless motel wall
    fill(50);

    //setting the size for the windowless motel wall
    beginShape();
    vertex(1800, 1000);
    vertex(2000, 900);
    vertex(2000, 0);
    vertex(1800, 0);
    endShape(CLOSE);

    //setting the door colour for the motel
    fill(75);

    //setting the size and whereabouts of the door
    rect(1250, 700, 1450, 1000);
    ellipse(1300, 850, 25, 25);

    //crating your guys' arms
    strokeWeight(25);
    stroke(25);
    line(1000, 900, 950, 1000);
    line(1000, 900, 1050, 1000);

    //creating your guys' legs
    stroke(0, 100, 0);
    line(970, 800, 930, 880);
    line(1030, 800, 1070, 880);
    strokeWeight(0);
    stroke(0);

    //creating your guys' body
    fill(0, 100, 0);
    rect(970, 760, 1030, 900);
    fill(255, 218, 185);

    //creating your guys' head
    ellipse(1000, 750, 100, 100);
    //hands
    ellipse(930, 880, 30, 30);
    ellipse(1070, 880, 30, 30);

    //creating your guys' eyes
    offsetX = (mouseX+62500)/65;
    fill(0);
    ellipse(offsetX, 750, 35, 35);
    ellipse(offsetX+40, 750, 35, 35);

    //creating your guys' mouth
    rect(offsetX, 770, offsetX+45, mouth);
    if (angry == true) {
      stroke(0);
    } else {
      stroke(255, 218, 185);
    }
    strokeWeight(7);
    line(970, 720, 980, 725);
    line(1030, 720, 1020, 725);
    strokeWeight(5);
    stroke(0);


    //upping the vroom variable for the car
    vroom += 30;

    //if the vroom variable is more tor equal to 3500
    if (vroom >= 3500) {

      //set the vroom variable to -800
      vroom = -800;

      //make the car a random new colour
      colour = random(0, 256);
      colour2 = random(0, 256);
      colour3 = random(0, 256);
    }

    //setting the car colour
    fill(colour, colour2, colour3);

    //setting the shape, size, and whereabouts of the car
    beginShape();
    vertex(vroom, 1500);
    vertex(vroom+10, 1490);
    vertex(vroom+20, 1480);
    vertex(vroom+30, 1470);
    vertex(vroom+40, 1460);
    vertex(vroom+40, 1330);
    vertex(vroom+30, 1320);
    vertex(vroom+20, 1310);
    vertex(vroom+10, 1300);
    vertex(vroom, 1290);
    vertex(vroom-300, 1290);
    vertex(vroom-300, 1100);
    vertex(vroom-500, 1100);
    vertex(vroom-700, 1300);
    vertex(vroom-700, 1500);
    endShape();

    //setting the colour, shape, size, and whereabouts of the windshield
    beginShape();
    fill(0, 100, 255);
    vertex(vroom-150, 1290);
    vertex(vroom-300, 1290);
    vertex(vroom-300, 1100);
    endShape();

    //setting the colour, shape, size, and whereabouts of the car's wheels
    fill(80);
    ellipse(vroom-600, 1500, 100, 100);
    ellipse(vroom-100, 1500, 100, 100);
  }







  //if your guys isn't standing in the street and is in his motel room and isn't attempting to bypass security and isn't at the epic panda gallery
  if (streetView == false && motelView == true && greyBuildingView == false && epicView == false) {

    //setting the background colour to a gross yellow
    background(120, 120, 0); 

    //making the door
    fill(100, 100, 0);
    rect(200, 400, 1100, height);
    fill(75, 75, 0);
    ellipse(1000, 1100, 100, 100);
    //adding the text on the door
    text("ROOM 201", 230, 550);

    //making the radio
    strokeWeight(25);
    fill(150);
    rect(1500, 1000, 2100, 1300);
    fill(90);
    ellipse(1650, 1150, 150, 150);
    ellipse(1950, 1150, 150, 150);
    line(1630, 1000, 1630, 900);
    line(1630, 900, 1930, 900);
    line(1930, 900, 1930, 1000);  
    fill(100, 100, 0);
    strokeWeight(10);
    ellipse(1770, 1150, 40, 40);
    ellipse(1830, 1150, 40, 40);
    fill(20, 20, 100);
    rect(1750, 1200, 1850, 1240);

    //making the table
    strokeWeight(5);
    fill(50, 50, 0);
    rect(1200, 1300, 2200, 1400);
    rect(1200, 1400, 1300, height);
    rect(2100, 1400, 2200, height);

    //creating your guy's arms
    strokeWeight(75);
    stroke(0, 100, 0);
    line(400, 900, 300, 1200);
    line(600, 900, 700, 1200);
    strokeWeight(5);
    stroke(0);

    //creating his body
    stroke(0, 100, 0);
    fill(0, 100, 0);
    rect(400, 800, 600, 1450);
    fill(255, 218, 185);
    stroke(0);

    //creating his head
    ellipse(500, 750, 300, 300);
    //hands
    ellipse(300, 1200, 80, 80);
    ellipse(700, 1200, 80, 80);

    //creating his eyes
    offsetX = (mouseX+7500)/20;
    fill(0);
    ellipse(offsetX, 750, 100, 100);
    ellipse(offsetX+110, 750, 100, 100);

    //creating his mouth
    rect(offsetX, 820, offsetX+110, 830);

    //creating his legs
    strokeWeight(75);
    stroke(0);
    line(440, 1450, 440, height);
    line(560, 1450, 560, height);
    strokeWeight(0);
    stroke(0);
    fill(0);
    rect(400, 1300, 600, 1460);
  }


  //if you click on the grey building
  if (greyBuildingView == true) {

    //set the background to black
    background(0);

    //creating the ball of awesome
    fill(random(0, 256), random(0, 256), random(0, 256));
    ellipse(Xpos, 1700, 200, 200);

    //creating the instructions for game
    text("OH NO! IT LOOKS LIKE THIS\n BUILDING HAS SOME SECURITY. YOU \nWILL HAVE TO BEAT THIS MINIGAME\n TO PASS. DO NOT TOUCH THE\n TRIANGLES!\n (EVERYTIME YOUR BALL GOES OFF\n THE END OF THE SCREEN ON THE \nLEFT SIDE YOU GET A POINT) GET A \nSCORE OF 5 TO PASS\n YOUR SCORE IS ON THE\n TOP LEFT SIDE OF THE SCREEN.\n (USE ARROW KEYS TO MOVE)", 700, 80);
    textSize(100);
    text(score, 200, 200);


    //creating the colour, size, and whereabouts for a row of eight white triangles falling at different screens
    fill(255);
    triangle(500, gravity, 600, gravity+100, 400, gravity+100);
    triangle(500, gravity2, 600, gravity2+100, 400, gravity2+100);
    triangle(500, gravity3, 600, gravity3+100, 400, gravity3+100);
    triangle(500, gravity4, 600, gravity4+100, 400, gravity4+100);
    triangle(500, gravity5, 600, gravity5+100, 400, gravity5+100);
    triangle(500, gravity6, 600, gravity6+100, 400, gravity6+100);
    triangle(500, gravity7, 600, gravity7+100, 400, gravity7+100);
    triangle(500, gravity8, 600, gravity8+100, 400, gravity8+100);

    //if the variable that represents the ball of awesome's position is less than zero
    if (Xpos <= 0) {

      //up the score by one
      score += 1;

      //put the ball of awesome back on the right side of the screen
      Xpos = 2300;
    }

    //if statements that make it so when you touch a triangle you lose the game
    if (Xpos >= 500 && Xpos <= 700 && gravity >= 1700) {
      uLose = true;
    }
    if (Xpos >= 500 && Xpos <= 700 && gravity2 >= 1700) {
      uLose = true;
    }
    if (Xpos >= 500 && Xpos <= 700 && gravity3 >= 1700) {
      uLose = true;
    }
    if (Xpos >= 500 && Xpos <= 700 && gravity4 >= 1700) {
      uLose = true;
    }
    if (Xpos >= 500 && Xpos <= 700 && gravity5 >= 1700) {
      uLose = true;
    }
    if (Xpos >= 500 && Xpos <= 700 && gravity6 >= 1700) {
      uLose = true;
    }
    if (Xpos >= 500 && Xpos <= 700 && gravity7 >= 1700) {
      uLose = true;
    }
    if (Xpos >= 500 && Xpos <= 700 && gravity8 >= 1700) {
      uLose = true;
    }

    //if the uLose variable is true (if you lose)
    if (uLose == true) {

      //show text that rubbs the fact that you lost in your face and tells you to click anywhere to return to the street
      textSize(100);
      text("YOU TOUCHED A TRIANGLE AND LOST!\n PRESS ANYWHERE TO RETURN\n TO THE STREET", 50, 600);

      //make your ball of awesome dissapear and make your score a ridiculously low number
      score = -99999;
      Xpos = 9999;
    }

    //making the different gravity variables different speeds
    gravity += 1;
    gravity2 += 2;
    gravity3 += 3;
    gravity4 += 4;
    gravity5 += 5;
    gravity6 += 6;
    gravity7 += 7;
    gravity8 += 8;

    //variables that make it so if the triangles make it to the bottom of the screen they go back to the top of the screen
    if (gravity >= height) {
      gravity = 0;
    }
    if (gravity2 >= height) {
      gravity2 = 0;
    }
    if (gravity3 >= height) {
      gravity3 = 0;
    }
    if (gravity4 >= height) {
      gravity4 = 0;
    }
    if (gravity5 >= height) {
      gravity5 = 0;
    }
    if (gravity6 >= height) {
      gravity6 = 0;
    }
    if (gravity7 >= height) {
      gravity7 = 0;
    }
    if (gravity8 >= height) {
      gravity8 = 0;
    }

    //if your score is equal or more than
    if (score >= 5) {

      //take your character to the awesome gallery
      greyBuildingView = false;
      epicView = true;
    }
  }



  //if your guy is in the epic gallery
  if (epicView == true) {

    //adding the awesome background
    image(gallery, 0, 0, width, height);

    //adding the text
    fill(0);
    text("WELCOME TO THE BEST GALLERY EVER", 200, 200);
    fill(0, 53, 255);
    rect(900, 1400, width, height-100);
    fill(0);
    textSize(50);
    text("WOAH THIS IS LAGGY. CLICK THIS BOX IF YOU WANT TO LEAVE.", 1000, 1500);

    //creating you
    //arms
    strokeWeight(75);
    stroke(0, 100, 0);
    line(400, 900, 300, 1200);
    line(600, 900, 700, 1200);
    strokeWeight(5);
    stroke(0);
    //body
    stroke(0, 100, 0);
    fill(0, 100, 0);
    rect(400, 800, 600, 1450);
    fill(255, 218, 185);
    stroke(0);
    //head
    ellipse(500, 750, 300, 300);
    //hands
    ellipse(300, 1200, 80, 80);
    ellipse(700, 1200, 80, 80);
    //eyes
    offsetX = (mouseX+7500)/20;
    fill(0);
    ellipse(offsetX, 750, 100, 100);
    ellipse(offsetX+110, 750, 100, 100);
    //mouth
    rect(offsetX, 820, offsetX+110, 830);
    //legs
    strokeWeight(75);
    stroke(0);
    line(440, 1450, 440, height);
    line(560, 1450, 560, height);
    strokeWeight(0);
    stroke(0);
    fill(0);
    rect(400, 1300, 600, 1460);
  }
}

//IF THE MOUSE IS PRESSED
void mousePressed() {

  //if your guy is standing in the street
  if (streetView == true) {

    //if your mouse is over the hotel doors
    if (mouseX >= 1250 && mouseX <= 1450 && mouseY >= 700 && mouseY <= 1000) {

      //take your guy to his motel room
      streetView = false;
      motelView = true;
    }

    //if your mouse is over the instructions text
    if (mouseX >= 2100 && mouseY >= 100 && mouseX <= 2400 && mouseY <= 400) {

      //show the instructions
      if (instructions == false) {
        instructions = true;
      }
    }
    
    //if the mouse if over the door to the grey building
    if (mouseX >=0 && mouseY >=700 && mouseX <= 300 && mouseY <= 1000) {
      
      //show the minigame
      streetView = false;
      greyBuildingView = true;
    }
  }
  
  //if your guy is in the motel
  if (motelView == true) {
    
    //if the mouse is over the door that leads out
    if (mouseX >= 200 && mouseY >= 400 && mouseX <= 1100 && mouseY <= height) {
      
      //go back to the street
      motelView = false;
      streetView = true;
    }

    //making it so when you click on the radio the adventure time theme song plays
    if (mouseX >= 1500 && mouseY >= 1000 && mouseX <= 2100 && mouseY <= 1300) {
      song.play();
    }
  }
  
  //if your in the minigame
  if (greyBuildingView == true) {
    
    //if your lose
    if (uLose == true) {
      
      //if you click anywhere
      if (mouseX >= 0 && mouseY >= 0) {
        
        //take your guy back to the street and set the score back to 0 and the ball of awesome's position back to the middleish of the screen
        greyBuildingView = false;
        streetView = true;
        uLose = false;
        score = 0;
        Xpos = 1000;
      }
    }
  }
  
  //if your guy is in the epic gallery
  if (epicView == true) {
    
    //if your mouse is over the blue rectangle
    if (mouseX >= 900 && mouseY >= 1400 && mouseX <= width && mouseY <= height-100) {
      
      //take your guy back to the street
      epicView = false;
      streetView = true;
    }
  }
}

//making it so the music actually stops when the program stops
void stop() {
  song.close();
  minim.stop();
  super.stop();
}

                                                                        //WHEN A KEY IS PRESSED
void keyPressed() {
  
  //make your guy look angry
  mouth += 50;
  angry = true;
  if (mouth >= 850) {
    angry = false;
    mouth = 775;
  }
  
  //if the arrow keys for left/right are pressed make the ball go left/right
  if (key == CODED) {
    if (keyCode == LEFT) {
      Xpos += -20;
    } 
    if (keyCode == RIGHT) {
      Xpos += 20;
    }
  }
}

/** Multiline comment
 1) A car that I made using vertex, instructions on how to play the minigame,
 instructions on how to play the game, triangles in the minigame. I made two
 buildings as well as doors to go with them using rectangles. The doors both
 had ellipsed for doorhandles. The buildings each
 had a shaded wall that was made using vertex. I don't know if this counts but
 I made many lines on the side walk as well as thick yellow lines for the road.
 
 2) Music plays when you click the radio.
 
 3)Eyes that follow the xPosition of the mouse, triangles that fall at different 
 speeds, a car that constantly is driving across the screen and changes colour,
 a ball that moves when you press the left and right arrow keys. I'm not sure if
 this counts but the scenery changes everytime you click on a door. 
 
 4)When you press any key, your guy becomes angry. There is also the minigame where
 the left and right arrow keys move the ball back and fourth accross the screen.
 
 5)When you click on any door, you can leave or exit buildings. When you click
 on the text that says "CLICK HERE FOR INSTRUCTIONS" on the street view a row of 
 instructions appear telling you how to play.
 */
 
 
 
