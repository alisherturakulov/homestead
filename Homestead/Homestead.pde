//Homestead
int day;
Map m;
Player p;

void setup(){
  p = new Player();
  m = new Map();
  day = 1;
  size(800, 800);
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
  if(keyCode == 'w' ||keyCode == 'a' || keyCode == 's' || keyCode == 'd'){
    p.keyPressed();
  }
}

void keyReleased(){
  if(keyCode == 'w' || keyCode == 'a' || keyCode == 's' || keyCode == 'd'){
    p.keyReleased();
  }
}


//for plant and animal interactions
void mousePressed(){}

void mouseReleased(){}
