abstract class Entity{
  int maxHP, HP;
  PVector position, velocity;
  
  Entity(int xpos, int ypos){
    position= new PVector(xpos, ypos);
    velocity = new PVector();
  }
  
  Entity(int xpos, int ypos, int HP, int maxHP){
    this(xpos, ypos);
    this.HP = HP;
    this.maxHP = maxHP;
  }
  
  void display(){}
  
  //for controlled movement
  void move(){}
  
  //for pre-programmed movement
  void moveTo(){}
  

}
