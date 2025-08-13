/*

Write a Dart function to take a number from the user and return the sum from 1 to that number.


 */

import 'dart:io';

double sum(int num) {
  return (num * (num + 1)) / 2;
}

void main() {
  print("Enter number");
  int num1 = int.parse(stdin.readLineSync()!);

  print(sum(num1));
}
