import 'dart:io';
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

*/
void main(){
  List<int>a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int>evenList=[];
  for (int i in a){
    if(i.isEven){
      evenList.add(i);
    }


  }

}
