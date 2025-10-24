class Player extends Entity{
  int hunger;
  int hydration;
  Inventory backpack;
  boolean wki, aki, ski, dki;
  int dx = 9;
  int dy = 9;
  Player(){
    super(400, 400, 100, 100);
    hunger = 100;
    hydration = 100;
    backpack= new Inventory();
  }
  
  void display(){
    fill(0, 10, 130);
    noStroke();
    circle(position.x, position.y, 40);
    fill(0);
  }
  
  void waterPlant(){
    println("watering a plant");
  }
  
  void harvestPlant(Plant plant){
    println("harvesting plant");
  }
  
  void eat(Plant  plant){
   println("player eats a plant");
  }
  
  void move(){
    
   if(wki){
     position.x -= dx;
   }
   if(aki){
     position.y -= dy;
   }
   if(ski){
     position.x += dx;
   }
   if(dki){
     position.y += dy;
   }
   if(position.x < 0){
     position.x = 795;
   }
   if(position.x > 800){
     position.x = 5;
   }
   if(position.y < 0){
     position.y = 795;
   }
   if(position.y > 800){
     position.y = 5;
   }
  }
  
  //will change the value of the boolean incr for each direction
  //based on the boolean, the move() method will increment player's x or y
  void keyPressed(){
    if(keyCode == 'w'){
      wki = true;
    }else if(keyCode == 'a'){
      aki = true;
    }else if(keyCode == 's'){
      ski = true;
    }else if(keyCode == 'd'){
      dki = true;
    }
  }
  
  void keyReleased(){
    if(keyCode == 'w'){
      wki=false;
    }else if(keyCode == 'a'){
      aki = false;
    }else if(keyCode == 's'){
      ski = false;
    }else if(keyCode == 'd'){
      dki = false;
    }
  }
}
