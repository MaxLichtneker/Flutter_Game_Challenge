import 'package:flutter/material.dart';
import 'package:flame/game.dart';

void main() {
  runApp(GameWidget(game: FlameGame(world: MyWorld())));
}


class MyWorld extends World{
  @override
  Future<void>onLoad()async{
    add(Player(position:Vector2(0, 0)))
  }
}
