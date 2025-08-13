/*


Write a Dart program to create a recursive function to find the factorial of a given number.
Test Data:
Enter a number: 5






 */

import 'dart:io';

int fact(int num) {
  if (num == 0) {
    return 1;
  } else if (num == 1 || num == 2) {
    return num;
  }

  return num * fact(num - 1);
}

void main() {
  print("Enter number");
  int num = int.parse(stdin.readLineSync()!);

  print("the factorial is: ${fact(num)}");
}
