# Labyrinth Explorer

A 2D maze exploration game built with C++ and SFML where players navigate through procedurally generated mazes while collecting items and avoiding enemies.

## Features

- Procedurally generated mazes using a modified Prim's algorithm
- Player movement with WASD controls
- Collectible items:
  - Swords for fighting enemies
  - Potions for healing
  - Keys for revealing the path to exit
- Enemy encounters
- Inventory system using AVL Tree data structure
- Path-finding visualization using Dijkstra's algorithm
- Health system
- Score tracking

## Prerequisites

To build and run this game, you'll need:

- C++ compiler with C++11 support
- SFML 2.x library

## Building

### On Linux/macOS:
```bash
g++ -c .cpp
g++ .o -o labyrinth -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio
```

### On Windows (with MinGW):
```cmd
g++ -c .cpp -I<path_to_SFML>/include
g++ .o -o labyrinth -L<path_to_SFML>/lib -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio
```
## Controls

- W - Move Up
- A - Move Left
- S - Move Down
- D - Move Right
- H - Use Key (Shows path to exit)
- P - Use Potion (Heals 20 HP)
- ESC - Pause/Menu
- Enter - Select/Continue

## Gameplay

1. Navigate through the maze using WASD keys
2. Collect items:
   - Swords protect you from enemies
   - Potions restore health
   - Keys reveal the path to exit
3. Avoid or fight enemies
4. Find the exit (bottom-right corner) to win

## Game Elements

- Green Circle: Player
- Red Squares: Enemies
- Blue Items: Collectibles
- White Lines: Maze Walls
- Black Line: Path hint (when using key)

## Technical Details

The game uses several key data structures and algorithms:

- AVL Tree for inventory management
- Prim's Algorithm for maze generation
- Dijkstra's Algorithm for pathfinding
- SFML for graphics and window management

## Project Structure

- `main.cpp` - Entry point
- `Game.cpp/h` - Main game logic
- `Maze.cpp/h` - Maze generation and pathfinding
- `Player.cpp/h` - Player movement and collision
- `Enemy.cpp/h` - Enemy behavior
- `AVLTree.cpp/h` - Inventory system
- `Menu.cpp/h` - Menu system
- `Utils.cpp/h` - Utility functions and constants

## Credits

Created as a data structures and algorithms project demonstrating:
- Graph algorithms (maze generation, pathfinding)
- Tree data structures (AVL tree)
- Game development concepts
- SFML library usage