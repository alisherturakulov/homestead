//Homestead
int day;
Map m;
Player p;

void setup(){
  p = new Player();
  m = new Map();
  day = 1;
  size(500, 500);
}

void draw(){
  background(255);
  m.display();
  p.display();
  p.move();
  
}

//calls players corresponding keypressed/released
//functions
void keyPressed(){
    p.keyPressed();
}

void keyReleased(){
    p.keyReleased();
}


//for plant and animal interactions
void mousePressed(){}

void mouseReleased(){}
