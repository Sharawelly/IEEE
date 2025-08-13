/*

Write a program in DART to display the n terms of even natural number and their sum.
Test Data :
Input number of terms : 5
Expected Output :
The even numbers are :2 4 6 8 10
The Sum of even Natural Number upto 5 terms : 30




 */

import 'dart:io';

void main() {
  print("Enter number of terms");
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 2; i <= num * 2; i += 2) {
    print(i);
    sum += i;
  }
  print("Sum is: $sum");
}
