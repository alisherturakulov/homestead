class Map{
  //will hold the different places on the map; may change to a single scrollable map
  int[][] map = new int[40][40];
  PVector plr = Homestead.p.position;
  Map(){
    current = plr;
  }
  
  void display(){}

}
