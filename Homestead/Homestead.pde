//Homestead
int day;
Map m;
Player p;
ArrayList<Plant> plantList = new ArrayList<Plant>();
int WINDOW_WIDTH  = 500;
int WINDOW_HEIGHT = 500;

//String[] plantTypes = {"Wheat", "Tree", "Strawberry"}; will use an integer
void setup(){
  p = new Player();
  m = new Map();
  day = 1;
  //record values into map array from file
  //will initialize and add plants with specified row values
  //plantList.add(new Plant());
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
