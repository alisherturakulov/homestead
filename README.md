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
	int hunger, hydration;
	PVector position, velocity
	move() void
}

class Plant{
	int growth
	int r, c
	
	grow() void
	harvest(p: Player) void
	setState() void
	type() void
}

Class Player{
	int food, water
	int crops
	
	move() void
	harvestPlant(r, c) void
	waterPlant(r, c) void
	keyPressed() void
	keyReleased() void
	mousePressed() void
	mouseReleased() void
}


Homestead "1" --o "1" Map 
Homestead "1" --o "0...n" Entity
Player <|--Entity
Plant <|-- Entity


```

## Timeline

  ### Week 1
    -player movement, map display system, 
