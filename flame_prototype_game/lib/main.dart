import 'package:flame/flame.dart';
import 'package:flame_prototype_game/flame_prototype.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();

  FlamePrototype game = FlamePrototype();
  runApp(GameWidget(game: kDebugMode ? FlamePrototype(): game));
}


