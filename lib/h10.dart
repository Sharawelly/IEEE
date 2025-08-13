/*

write a DART program to take a number from user and print the reverse of it 
such as 123 the revers is 321




 */

import 'dart:io';

void main() {
  print("Enter number of terms");
  String num = stdin.readLineSync()!;
  String result = "";
  for (int i = num.length - 1; i >= 0; i--) {
    result += num[i];
  }
  print(result);
}
