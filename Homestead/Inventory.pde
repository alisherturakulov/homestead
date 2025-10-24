import java.util.Map;

class Inventory{
  HashMap<Integer, Integer> materials;
  CookBook cBook;
  
  Inventory(){
    materials = new HashMap<Integer, Integer>(10);
    cBook = new CookBook();
  }
}
