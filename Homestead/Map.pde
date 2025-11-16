class Map{
  //map to hold tile information for map
  //Key: 0 = Grass; 1 = Barrier; 2 = dirt; 3 = water; and >= 4 = Plants
  int[][] map;
  //will change with wasd key presses
  int row_start = 20;
  int col_start = 20; 
  final int NUM_ROWS = 50;
  final int NUM_COLS = 50;
  
  Map(){
    map = new int[NUM_ROWS][NUM_COLS];
    map[0][0] = 1;
    map[49][49] = 1;
  }
  
  void display(){
    
    stroke(0,50,5);
    /* Old algorithm for map scrolling
    //will keep track of the location of this 10x10 box within the larger map which is 50 by 50.
    float player_x = p.xview;
    float player_y = p.yview;
    int xstart_index = (int) (player_x / 2500 * 49) - 5;
    int ystart_index = (int) (player_y / 2500 * 49) - 5;
    println("x" + xstart_index);
    println("y" + ystart_index);
    int mapRow = ystart_index;
    int mapCol = xstart_index;
    
    if(ystart_index < 0 || xstart_index < 0){
      mapCol = 0;
      mapRow = 0;
      p.outer=true;
    }else if(xstart_index >= (width-10) || ystart_index >=(height-10)){
      mapRow = 39;
      mapCol = 39;
      p.outer=true;
    }else{
      p.outer=false;
    }
    */
    
    //10x10 box displays; separate variables track the corresponding map indices
    for(int i =  0; i< 10; ++i){
      for(int j = 0; j < 10; ++j){
        //rectMode(0);
        fill(182, 220, 118);
        int value = map[i+row_start][j+col_start];
        if(value == 1){
          fill(48, 54, 51);
        }else if(value == 2){
          fill(48, 54, 51);
        }else if(value == 3){
          fill(117, 182, 219);
        }//note: put the ifs for plants first
        
        square(j*50,i*50,50);
      // if(mapCol < 49)++mapCol;
      }
      //if(mapRow < 49)++mapRow;
    }
    //}
    fill(0);
  }

}
