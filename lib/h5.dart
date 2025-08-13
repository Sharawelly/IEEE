/*

Write a DART program that displays the sum of n natural numbers.
Test Data : 7
Expected Output :
The first 7 natural number is :
1 2 3 4 5 6 7
The Sum of Natural Number upto 7 terms : 28


 */

import 'dart:io';

void main() {
  print("Enter number");
  int num1 = int.parse(stdin.readLineSync()!);

  print((num1 * (num1 + 1)) / 2);
}
