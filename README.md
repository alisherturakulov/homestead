# Homestead
  - A game about the day to day life on a farm in the countryside
  
## Features
  - The map will be 2d, and involve multiple places that can be traveled to
  - There will be farming mechanics, as well an inventory for tools
  - Events and actions take place over the course of a day on the farm
  - It will be roguelike, so the game restarts on another day; crop/livestock states will be maintained
  - Prototyped in Processing IDE
  
## UML Diagrams
  

  
```mermaid
---
config:
  class:
    hideEmptyMembersBox: true
---
classDiagram
direction LR

class Homestead{
	int day
	Map m
	Player p
	
	setup() void
	draw() void
	keyPressed() void
	keyReleased() void
	mousePressed() void 
	mouseReleased() void
}

class Map{
	int current
	int[][] map
	
	display() void
}

class Entity{
  <<abstract>>
	int maxHP, HP;
	PVector position, velocity
	move() void
	moveTo() void
}

class Plant{
	int growth
	int r, c
	int type
	String[] types
	grow() void
	harvest(p: Player) void
	setState() void
	type() void
	
}

class CookBook{
	unordered_map<String, int> foodCookBook
	String[] ingredients 
	
	
	makeFood(type: String,materialSum: int) bool
}

class Inventory{
	unordered_map<int, int> materials
	CookBook cBook
	
}

Class Player{
	int hunger, hydration
	Inventory backpack
	
	move() void
	harvestPlant(r, c) void
	waterPlant(r, c) void
	eat(plant: Plant) void
	
	keyPressed() void
	keyReleased() void
	mousePressed() void
	mouseReleased() void
}

class Animal{
	int food, water
	
	display() void
	moveTo(y: int, x: int) void
}

Homestead "1" --o "1" Map 
Homestead "1" --o "1" Player
Homestead "1" --o "0...n" Plant
Homestead "1" --o "0...n" Animal
Inventory "1" --o "1" CookBook
Player "1" --o "1" Inventory
Player <|--Entity
Plant <|-- Entity
Animal <|-- Entity


```

## Timeline

  ### Week 1
    - Classes: Entity, Homestead, Map, Plants, Animals
	- Player Movement, harvesting
	- Map display
	- Plants class with plant locations
  ### Week 2
	- player interactions with plants/animals
	- player eating/drinking types of food
  ### Week 3
    - Add day/night progression system
	- Add player CookBook; cooking functionality
