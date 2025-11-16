  class Plant{
  int growth;
  int r, c;
  int type;
  //plant key: 4 = wheat; 5 = tree; 6 = strawberry
  Plant(int r, int c, int type){
    this.r = r;
    this.c = c;
    try{
      m.map[r][c] = type;
    }catch(IndexOutOfBoundsException e){
      e.printStackTrace();
      System.exit(1);
    }
  }
  
  Plant(int r, int c){
    this(r, c, 4);
  }
  
  void grow(){}
  void harvest(Player p){}
  void setState(){}
  void type(){}
}
