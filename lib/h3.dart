/*

write aprogram to take anumbers from user and check if it >=4 print"GOOD MORNING" else print 
"GOOD NIGHT" use short hand if only

 */

import 'dart:io';

void main() {
  print("Enter number");
  int num1 = int.parse(stdin.readLineSync()!);

  print(num1 >= 4 ? "GOOD MORNING" : "GOOD NIGHT");
}
