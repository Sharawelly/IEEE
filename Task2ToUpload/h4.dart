/*

write a program to take a number from user and check if it even or odd

 */

import 'dart:io';

void main() {
  print("Enter number");
  int num1 = int.parse(stdin.readLineSync()!);

  print((num1 & 1 == 1) ? "Odd" : "Even");
}
