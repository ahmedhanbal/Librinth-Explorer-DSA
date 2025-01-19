#!/bin/bash
sources=("AVLTree.cpp" "Enemy.cpp" "Game.cpp" "Maze.cpp" "Menu.cpp" "Player.cpp" "Treasure.cpp" "Utils.cpp")

mkdir -p build 
for src in "${sources[@]}"; do
    g++ -c "src/$src" -o "build/${src%.cpp}.o"
done

g++ main.cpp build/*.o -o librinth -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

rm build/*.o

./librinth