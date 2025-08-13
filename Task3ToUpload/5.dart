/*

Write a Dart function to take the name of the user and their age, and display them.

 */

import 'dart:io';

void displayNameAndAge(String name, int age) {
  print("My name is: $name and my age is: $age");
}

void main() {
  print("Enter your name");
  String name = stdin.readLineSync()!;
  print("Enter your age");
  int age = int.parse(stdin.readLineSync()!);

  displayNameAndAge(name, age);
}
