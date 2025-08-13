/*

Write a dart program to check two given numbers where one is less than 100 and the other is greater than 200.
Sample Output:
Input a first number(<100): 75
Input a second number(>100): 250
True

 */

import 'dart:io';

void main() {
  print("Enter first number");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter second number");
  int num2 = int.parse(stdin.readLineSync()!);

  if (num1 < 100 && num2 > 200) {
    print(true);
  } else {
    print(false);
  }
}
