/*

a dart program to check if an integer (from the two given integers) is in the range -10 to 10.
Sample Output:
Input a first number: -5
Input a second number: 8
True


 */

import 'dart:io';

void main() {
  print("Enter first number");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter second number");
  int num2 = int.parse(stdin.readLineSync()!);

  if ((num1 >= -10 && num1 <= 10) || (num2 >= -10 && num2 <= 10)) {
    print(true);
  } else {
    print(false);
  }
}
