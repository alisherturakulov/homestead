class Map{
  //will hold the different places on the map; may change to a single scrollable map
  int[][] map;
  
  Map(){
    map = new int[50][50];
    map[0][0] = 1;
    map[49][49] = 1;
  }
  
  void display(){
    fill(10, 180, 20);
    stroke(0,50,5);
    //will keep track of the location of this 10x10 box within the larger map which is 50 by 50.
    float player_x = p.xview;
    float player_y = p.yview;
    int xstart_index = (int) (player_x / 50)-5;
    int ystart_index = (int) (player_y / 50) - 5;
    int mapRow = ystart_index;
    int mapCol = xstart_index;
    
    if(ystart_index < 0 || xstart_index < 0){
      mapCol = 0;
      mapRow = 0;
    }else if(xstart_index >= (width-10) || ystart_index >=(height-10)){
      mapRow = 39;
      mapCol = 39;
    }
    
    
    //10x10 box displays; separate variables track the corresponding map indices
    for(int i =  0; i< 10; ++i){
      for(int j = 0; j < 10; ++j){
        //rectMode(0);
        if(map[mapRow][mapCol] == 1){
          fill(255);
        }
       square(j*50,i*50,50);
       ++mapCol;
      }
      ++mapRow;
    }
    //}
    fill(0);
  }

}
