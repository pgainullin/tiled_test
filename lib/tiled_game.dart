import 'dart:ui';

import 'package:flame/components/text_component.dart';
import 'package:flame/game.dart';
import 'package:flame_tiled/flame_tiled.dart';

class TiledGame extends BaseGame  {

  @override
  void render(Canvas canvas){
    super.render(canvas);
    TextComponent(this.fps().toString()).render(canvas);
  }
  
  TiledGame() {
    final TiledComponent tiledMap =
        TiledComponent('image_src_map.tmx', Size(32.0, 32.0));
    // final TiledComponent tiledMap = TiledComponent('tsx_src_map.tmx', Size(32.0, 32.0));
    // E/flutter ( 7199): [ERROR:flutter/lib/ui/ui_dart_state.cc(177)] Unhandled Exception: NoSuchMethodError: The getter 'source' was called on null.

    add(tiledMap);
  }
}
