import 'package:flutter/material.dart';

import 'package:flame/flame.dart';
import 'package:tiled_test/tiled_game.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Flame.util.fullScreen();

  await loadAssets();


  runApp(TiledGame().widget);
}

Future<void> loadAssets() async {
  await Flame.images.loadAll([
    'HexTilesetv3.png',
  ]);
}

