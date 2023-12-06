import 'dart:io';

class calc {
  double? num1;
  double? num2;
  calc(this.num1, this.num2);

  double add() {
    return num1! + num2!;
  }

  double sub() {
    return num1! - num2!;
  }

  double mult() {
    return num1! * num2!;
  }

  dynamic divid() {
    try {
      return num1! / num2!;
    } catch (err) {
      return 'Error:$err';
    }
  }
}

void main() {
  print("Enter num1: ");
  double? x = double.parse(stdin.readLineSync()!);
  print("Enter num2: ");
  double? y = double.parse(stdin.readLineSync()!);
  calc calculator = new calc(x, y);
  print("........chose operrator.......");
  print("1. Addition \n2. Subtraction \n3. Multiplication \n4. Division");
  int? choice = int.parse(stdin.readLineSync()!);
  dynamic result;
  switch (choice) {
    case 1:
      result=calculator.add();
      break;
    case 2:
      result=calculator.sub();
      break;
    case 3:
      result=calculator.mult();
      break;
    case 4:
      result=calculator.divid();
      break;
    default:
      print("invalid input");
  }
  Future.delayed(Duration(seconds: 5),()=>print("Result: $result"));
}
