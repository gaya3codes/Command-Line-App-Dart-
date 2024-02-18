import 'dart:io';
import 'dart:math';

enum Inputs { rock, paper, scissors }

void main() {
  final rng = Random();
  while (true) {
    stdout.write('Rock, paper or scissors? (r/p/s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerInput;
      if (input == 'r') {
        playerInput = Inputs.rock;
      } else if (input == 'p') {
        playerInput = Inputs.paper;
      } else {
        playerInput = Inputs.scissors;
      }
      final random = rng.nextInt(3);
      final aiInput = Inputs.values[random];
      print('You played: $playerInput');
      print('AI played: $aiInput');
      if (playerInput == aiInput) {
        print("It's a draw");
      } else if (playerInput == Inputs.rock && aiInput == Inputs.scissors ||
          playerInput == Inputs.paper && aiInput == Inputs.rock ||
          playerInput == Inputs.scissors && aiInput == Inputs.paper) {
        print("You win");
      } else {
        print("You lose");
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
    }
  }
}
