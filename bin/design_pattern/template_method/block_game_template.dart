library block_game_template;

import 'dart:io';

part 'block_game_a.dart';
part 'block_game_z.dart';

class _BlockGameTemplate {
  void start() {
    print(getTitle);

    for (int i = 0; i < getHeight; i++) {
      for (int j = 0; j < getWidth; j++) {
        stdout.write(getCharacter);
      }
      stdout.write('\n\r');
    }

    print("Finish" + getTitle);
  }

  String get getTitle => 'Block Game';

  int get getHeight => 10;

  int get getWidth => 10;

  String get getCharacter => 'O';
}
