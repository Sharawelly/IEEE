/*

Write a DART program to display the n terms of odd natural numbers and their sums.
Test Data
Input number of terms : 10
Expected Output :
The odd numbers are :1 3 5 7 9 11 13 15 17 19
The Sum of odd Natural Number upto 10 terms : 100



 */

import 'dart:io';

void main() {
  print("Enter number of terms");
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 1; i < num * 2; i += 2) {
    print(i);
    sum += i;
  }
  print("Sum is: $sum");
}
