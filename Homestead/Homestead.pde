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
}

//calls players corresponding keypressed/released
//functions
void keyPressed(){}

void keyReleased(){}

void mousePressed(){}

void mouseReleased(){}
