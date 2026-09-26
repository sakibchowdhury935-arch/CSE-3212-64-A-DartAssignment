import 'dart:io';

abstract class Playable {
  void play();
}

class Football implements Playable {
  @override
  void play() {
    print("Playing Football");
  }
}

class Cricket implements Playable {
  @override
  void play() {
    print("Playing Cricket");
  }
}

void main() {
  stdout.write("Enter game (football/cricket): ");
  String game = stdin.readLineSync()!.toLowerCase();

  Playable player;

  if (game == "football") {
    player = Football();
  } else if(game == "cricket"){
    player = Cricket();
  } else{
    print("Invalid input");
    return;
  }

  player.play();
}