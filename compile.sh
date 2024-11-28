#!/bin/bash
sources=("AVLTree.cpp" "Enemy.cpp" "Game.cpp" "Maze.cpp" "Menu.cpp" "Player.cpp" "Treasure.cpp" "Utils.cpp" "main.cpp")

for src in "${sources[@]}"; do
    g++ -c "$src" -o "${src%.cpp}.o"
done

g++ *.o -o librinth -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

rm *.o

./librinth

