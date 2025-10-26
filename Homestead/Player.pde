class Player extends Entity{
  int hunger;
  int hydration;
  Inventory backpack;
  boolean wki, aki, ski, dki;
  int speed = 2;
  boolean outer = false;
  //moves the players view
  int xview =1250;
  int yview =1250;
  int vspeed = 10;
  Player(){
    super(250, 250, 100, 100);
    hunger = 100;
    hydration = 100;
    backpack= new Inventory();
  }
  
  void display(){
    fill(0, 10, 130);
    circle(position.y, position.x, 20);
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
   if(outer){ 
     if(wki){
       position.x -= speed;
     }
     if(aki){
       position.y -= speed;
     }
     if(ski){
       position.x += speed;
     }
     if(dki){
       position.y += speed;
     }
   }else{
     if(wki){
       xview -= vspeed;
     }
     if(aki){
       yview -= vspeed;
     }
     if(ski){
       xview += vspeed;
     }
     if(dki){
       yview += vspeed;
     }
   }
   if(position.x < 0){
     position.x = width;
   }
   if(position.x > width){
     position.x = 0;
   }
   if(position.y < 0){
     position.y = width;
   }
   if(position.y > width){
     position.y = 0;
   }
  }
  
  //will change the value of the boolean incr for each direction
  //based on the boolean, the move() method will increment player's x or y
  void keyPressed(){
    //println(keyCode + " " + key);
    if(key == 'w'){
      wki = true;
    }else if(key == 'a'){
      aki = true;
    }else if(key == 's'){
      ski = true;
    }else if(key == 'd'){
      dki = true;
    }
  }
  
  void keyReleased(){
    if(key == 'w'){
      wki=false;
    }else if(key == 'a'){
      aki = false;
    }else if(key == 's'){
      ski = false;
    }else if(key == 'd'){
      dki = false;
    }
  }
}
