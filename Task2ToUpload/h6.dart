/*

Write a DART program to read 10 numbers and find their average and sum.
Test Data :
Input the 10 numbers :
Number-1 :2
...
Number-10 :2
Expected Output :
The sum of 10 no is : 51
The Average is : 5.100000


 */

import 'dart:io';

void main() {
  print("Enter 10 numbers");
  int sum = 0;
  for (int i = 0; i < 10; i++) {
    int x = int.parse(stdin.readLineSync()!);
    sum += x;
  }
  double avg = sum / 10;
  print("The sum of 10 numbers is: $sum");
  print("The avg of 10 numbers is: $avg");
}
