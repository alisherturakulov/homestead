class Player extends Entity{
  int hunger;
  int hydration;
  Inventory backpack;
  boolean wki, aki, ski, dki;
  int speed = 2;
  boolean outer = false;
  //moves the players view
  float xview =1250;
  float yview =1250;
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
   /*}else{
     if(wki){
        yview -= vspeed;
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
   }*/
   // move the view bounds when the players trying to go in that direction
   if(position.x < 0){
     if(m.row_start != 0){
       --m.row_start;
     }
     position.x = 10; //to prevent going out of bounds again
   }
   if(position.x > width){
     if(m.row_start != 40){
       ++m.row_start;
     }
     position.x = width - 10;
   }
   if(position.y < 0){
     if(m.col_start != 0){
       --m.col_start;
     }
     position.y = 10;
   }
   if(position.y > height){
     if(m.col_start != 40){
       ++m.col_start;
     }
     position.y = height -10;
   }
  }
  
  //will change the value of the boolean incr for each direction
  //based on the boolean, the move() method will increment player's x or y
  void keyPressed(){
    //println(keyCode + " " + key);
    if(key == 'w'){
      wki = true;
    }else if( key == 'a'){
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
