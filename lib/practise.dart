import 'dart:io';
import 'dart:math';
/*
Exercise-5:
Take two lists, for example:


a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
and write a program that returns a list that contains only the elements that are common between them
(without duplicates). Make sure your program works on two lists of different sizes.*/
/*void main() {
 List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  List<int>b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int>c=[];
  for(int i in a){
    for(int j in b){
      if(i==j){
        c.add(i);
      }
    }
  }
  print(c);
}*/


/*
Exercise:6
 Ask the user for a string and print out whether this string is a palindrome or not.

A palindrome is a string that reads the same forwards and backwards
*/
/*
void main(){
  print("enter value for check palindrome");
  String value=stdin.readLineSync()!;
  String checkPalindrome=value.toLowerCase().split("").reversed.join("");
  if(value==checkPalindrome){
    print("$value is palindrome");
  }else{
    print("$value is not palindrome");
  }
}*/

/*
Let’s say you are given a list saved in a variable:

a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.

*//*
void main(){
  List<int>a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int>evenList=[];
  for (int i in a){
    if(i.isEven){
      evenList.add(i);
    }


  }

}*/
/*
Exercise-9
Ask the user for a number and determine whether the number is prime or not.
*/
/*

void main(){
  print("enter a number for check prime");
  int number=int.parse(stdin.readLineSync()!);
  checkPrime(number);
}
void checkPrime(int number){
  List<int>a=[for(var i=1;i<=number;i++)if(number%i==0)i];

  a.length==2?print("$number is prime"):
      print("Number is not prime");
}
*/



// //find fibonacci series
// void main(){
//   print("range of fiboncci series number :");
//   int rangeNumber=int.parse(stdin.readLineSync()!);
//   print("$rangeNumber this fibonacci series ${fibonacciSeries(rangeNumber)} ");
// }
// List<int>fibonacciSeries(int rangeNumber){
//   List<int>fibonnaciList=[0,1];
//   for(int i=0;i<=rangeNumber;i++){
//     fibonnaciList.add(fibonnaciList[i]+fibonnaciList[i+1]);
//   }
//   return fibonnaciList;
// }


//
// //remove duplicate from list
// void main(){
//   Random random=Random();
//   List<int>randomList=List.generate(10, (_) => random.nextInt(10),);
//   print("original list$randomList");
//
//   print("remove duplicate form list ${removeDuplicate(randomList)}");
// }
// List<int>removeDuplicate(List<int>list){
//   return list.toSet().toList();
// }
/*

Write a program (using functions!) that asks the user for a long string containing multiple words. Print back to the user the same string, except with the words in backwards order.

For example, say I type the string:

ex:input: My name is Michele
Then I would see the string:

ex output: Michele is name My
*/
// void main(){
//   print("Enter long string with multipule words");
//   String multipuleWords=stdin.readLineSync()!;
//   print("original string value: ${multipuleWords}");
//   print("after reverse value: ${reverseString(multipuleWords)}");
// }
// String reverseString(String value){
//   return value.split(" ").reversed.join(' ');
// }

import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("How strong a password do you want? Weak, Medium or Strong: ");
  String choice = stdin.readLineSync()!.toLowerCase();

  passwordGenerator(choice);
}

// Create a random sequence of characters
void shuffleGenerator(int strength) {
  final random = Random.secure();
  List<int> intList = List.generate(strength, (_) => random.nextInt(255));
  List charList = base64UrlEncode(intList).split('').toList();
  print("char list $charList");
  charList.shuffle();
  print("\nYour password is: ${charList.join('')}\n");
}

void passwordGenerator(String strength) {
  if (strength == "weak") {
    shuffleGenerator(5);
  } else if (strength == "medium") {
    shuffleGenerator(15);
  } else if (strength == "strong") {
    shuffleGenerator(25);
  } else {
    print("Incorrect word is given");
  }
}
