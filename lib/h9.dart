/*

Write a DART program to determine whether a given number is prime or not.
 Test Data :
Input a number: 13
Expected Output :
13 is a prime number :
Input number of terms to display : 10
Expected Output :
Here is the Fibonacci series upto to 10 terms :
0




 */

import 'dart:io';

void main() {
  print("Enter number");
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (int i = 2; i * i < num; i++) {
    if (num % i == 0) {
      print("The number $num is not a prime number");
      return;
    }
  }
  print("The number $num is a prime number");
}
