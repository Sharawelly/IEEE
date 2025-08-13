/*


Write a Dart program to create a recursive function to find the factorial of a given number.
Test Data:
Enter a number: 5






 */

import 'dart:io';

int fib(int num) {
  if (num == 0 || num == 1) {
    return num;
  }

  return fib(num - 2) + fib(num - 1);
}

void main() {
  print("Enter number");
  int num = int.parse(stdin.readLineSync()!);

  print("the fib is: ${fib(num)}");
}
