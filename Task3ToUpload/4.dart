/*

Write a Dart function to check whether a number is even or odd.

 */

import 'dart:io';

bool isEven(int number) {
  return number % 2 == 0;
}

void main() {
  print("Enter number");
  int num1 = int.parse(stdin.readLineSync()!);
  if (isEven(num1)) {
    print("Even");
  } else {
    print("Odd");
  }
}
