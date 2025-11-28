import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flame_prototype_game/levels/level.dart';

class FlamePrototype extends FlameGame{

  late final CameraComponent cam;

  @override
  final world = Level();

  @override
  FutureOr<void> onLoad() {

    cam = CameraComponent.withFixedResolution(world: world,width: 640,height: 360);

    cam.viewfinder.anchor = Anchor.topLeft;
    addAll([cam, world]);
    return super.onLoad();
  }
}