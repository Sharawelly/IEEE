/*


Write a Dart program to create a function to calculate the sum of the individual digits of a given number.
Test Data:
Enter a number: 1234
Expected Output:
The sum of the digits of the number 1234 is : 10





 */

import 'dart:io';

int sumofDigits(String num) {
  int sum = 0;

  for (int i = 0; i < num.length; i++) {
    sum += int.parse(num[i]);
  }
  return sum;
}

void main() {
  print("Enter number");
  String num = stdin.readLineSync()!;

  print("the sum of digits is: ${sumofDigits(num)}");
}
