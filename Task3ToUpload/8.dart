/*


Write a Dart program to create a function to check whether a number is prime or not.
Test Data:
Input a number : 31
Expected Output:
31 is a prime number





 */

import 'dart:io';

bool isPrime(int num) {
  for (int i = 2; i * i < num; i++) {
    if (num % i == 0) {
      print("The number $num is not a prime number");
      return false;
    }
  }
  return true;
}

void main() {
  print("Enter number");
  int num = int.parse(stdin.readLineSync()!);

  print(isPrime(num) ? "isPrime" : "isNotPrime");
}
