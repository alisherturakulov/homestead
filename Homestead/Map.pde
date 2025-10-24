class Map{
  //will hold the different places on the map; may change to a single scrollable map
  int[][] map;
  PVector plPos;
  
  Map(){
    plPos = p.position;
    map = new int[40][40];
  }
  
  void display(){
    fill(10, 180, 20);
    for(int i = 0; i< map.length; ++i){
      for(int j =0 ; j < map[0].length; ++j){
       square(j*40,i*40,40);
      }
    }
    fill(0);
  }

}
