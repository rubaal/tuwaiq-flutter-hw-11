import 'dart:convert';
import 'dart:io';
import 'dart:math';


main(){
allergys();//1
print("------------------------------");//2  
printList();
print("------------------------------");//3
print("Enter word you need to check the palindrome");
var word= stdin.readLineSync();
palindrome(word);
print("------------------------------");//4
print("Enter any number");
int? enterNumber= int.parse(stdin.readLineSync()!);
divisors(enterNumber);
print("------------------------------");//5
print("Guess the number from 1-50 the computer chooses");
int? guessNumber= int.parse(stdin.readLineSync()!);
guess(guessNumber);
print("------------------------------");//6
compareList();
print("------------------------------");//7
print("Enter string:");
 word= stdin.readLineSync();
reverseWord(word);
print("------------------------------");//8
gameGuess();
print("------------------------------");//9
game();
print("------------------------------");//10
passwordGenerator();
print("------------------------------");//11
print("Enter friend name:");
 word= stdin.readLineSync();
trackfriendbirthdays(word);
print("------------------------------");//12
fristLastElementList();
}
//_____________________1_____________________
void allergys(){

  print("Enter The allergy do you have:\n 1.ggs\n 2.peanuts\n 3.shellfish\n 4.strawberries\n 5.tomatoes\n 6.chocolate\n 7.pollen\n 8.cats");
  int? allergys= int.parse(stdin.readLineSync()!);

// enum allergy {eggs, peanuts, shellfish, strawberries, tomatoes, chocolate, pollen, cats}
//  allergy scores (int score ){
//  switch(score ){
//   case 1:
//   return score.eggs;
//   case 2:
//   return score.peanuts;
//   case 3:
//   return score.shellfish;
//   case 4:
//   return score.strawberries;
//   case 5:
//   return score.tomatoes;
//   case 6: 
//   return score.chocolate;
//   case 7:
//   return score.pollen;
//   case 8:
//   return score.cats;
//   default:
//   throw Exception("error");
// }
// }
}
//_____________________2_____________________
// write a program that prints out all the elements of the list that are less than 3, and the total of all the elements in the list greater than 5.
printList(){
List <int> number= [1,4,3,6,8,2,2,3,7];
var updateNumber=0;
var sumUpdateNumber=0;
print([for(var i in number)if(i<3)i]);
for(var i=0; i<number.length;i++){
  // if(number[i]<3){
  //   print("List of element less than 3 = ${number[i]}");
  // }
  if (number[i]>5){
     sumUpdateNumber+=number[i];
  }
}
  print("Totle of elements grater than 5 = ${sumUpdateNumber}");
}
//_____________________3_____________________
//write a program that that take a string from the user, and print out whether this string is a palindrome or not. A palindrome is a string that reads the same forwards and backwards for example: reviver is a palindrome.
void palindrome(var input) {
  var char = input.split('');
  var charupdate= char.reversed.join();
  if(input==charupdate){
    print("Yes, This string is a palindrome");
  }else{
    print("No, This string is not a palindrome");
  }
}
//_____________________4_____________________
//Create a program that asks the user for a number and then prints out a list of all the divisors of that number.
void divisors (int enterNumber){
  for(var i=1; i<=enterNumber; i++){
    if(enterNumber%i==0)
    {
      print(i);
    }
  }
}
//_____________________5_____________________
//Generate a random number between 1 and 50. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.
guess(int guessNumber){
  final randomNumber =Random();
  int number=randomNumber.nextInt(50);
  print("The computer guess number ${number}");
  if(guessNumber == number){
    print("exactly right");
  }else if(guessNumber > number){
    print("too high");
  }else{
    print("too low");
  }
}
//_____________________6_____________________
//Write a program that returns a list that contains only the elements that are common between them (without duplicates). Make sure your program works on two lists of different sizes.
compareList(){
  List <int> group1=[1,5,4,7,99];
  List <int> group2=[6,99,33,5,7,47,1,45];
  Set <int> collectList={};
  for(var i in group1 ){
    for(var j in group2){
      if(i==j){
        collectList.add(i);
      }
    }
  }
  print(collectList);
}
//_____________________7_____________________
//Using functions write a program that asks the user for a multiple words string. Print the words in backwards order to the user.
void reverseWord(var input){
  var char = input.split('');
  var charupdate= char.reversed.join();
    print("String is ${input}, the backwards order of string is ${charupdate}");
}
//_____________________8_____________________
//Create a program that will play a game with the user. 
gameGuess(){
  final randomNumber =Random();
  String number=(randomNumber.nextInt(8999)+1000).toString();
  print("The computer guess number ${number}");
  while(true){
    int countCorrect=0;
    int countWrong=0;
    print("Guess the number from 4 digit");
    String guessNumber= stdin.readLineSync()!;
    if(guessNumber == number){
      print("You Win!!! End the game");
      break;
    } else if(guessNumber=="Exit"){
      print("Exit from game");
    }else if(guessNumber.length!= number.length){
      print("shoud enter 4 digit");
      continue;
    }
    for(var i=0;i<number.length;i++){
      if(guessNumber[i]==number[i]){
        countCorrect+=1;
      }else if(number.contains(guessNumber[i])){
        countWrong-=1;
      }
    }
    print("bouns= $countCorrect, mines= $countWrong");
  }
}
//_____________________9_____________________
//Make a two-player Rock-Paper-Scissors game against the computer
game(){
  final random= Random();
  List <String> option=["rock","paper","scissors"];
  int userPoint=0;
  int computerPoint=0;
  Map<String,String> rule={"rock":"scissors", "scissors":"paper", "paper":"rock"};
  while(true){
    String guessOption= option[random.nextInt(option.length)];
     print(guessOption);
    print("choose: Rock, Paper or Scissors:");
    String guessOptionUser= stdin.readLineSync()!.toLowerCase();
    if(guessOptionUser=="exit"){
      print("Exit of game");
      break;
    }
    if(!option.contains(guessOptionUser)){
      print("error!! shoud choose Rock, Paper or Scissors:");
    }else if(guessOptionUser==guessOption){
      print("We have a tie!");
    }else if (rule[guessOption]==guessOptionUser){
      print("Computer Win: the computer guess ${guessOption}, and the user enter ${guessOptionUser}");
      computerPoint++;
    }else if(rule[guessOptionUser]==guessOption){
      print("User Win: the computer guess ${guessOption}, and the user enter ${guessOptionUser}");
      userPoint++;
    }
}
}
//_____________________10_____________________
//password generator 
 passwordGenerator(){
  bool newPassword = true ;
  while(newPassword){
    final random = Random();
    List<int> numberList = List.generate(26, (h)=> random.nextInt(255));
    List charList = base64UrlEncode(numberList).split('').toList();
    charList.shuffle();
  print('Your Generated strong passwrd is: ${charList.join('')}');
  print("To generator new strong password enter 1 or 2 to Exit");
  int input = int.parse(stdin.readLineSync()!);
  (input == 2 ) ? newPassword = false : newPassword = true ;
  }
 }
 //_____________________11_____________________
//keep track of when your friend’s birthdays 
trackfriendbirthdays(var Name){
  // Map<String,DateTime> BODmap={"Ruba":DateTime.parse("2000-02-02"), "Sara":DateTime.parse("1999-11-05"), "Mada":DateTime.parse("1995-07-29")};
   Map<String,int> BODmap={"Ruba":2000-02-02, "Sara":1999-11-05, "Mada":1995-07-29};
  print(BODmap[Name]);
}
 //_____________________12_____________________
 //makes a new list of only the first and last elements of the given list.
 fristLastElementList(){
  List numberOfList=[];
  List number=[5,73,2,6,9,1];
  int FristElement= number.first;
  int lastElement= number.last;
  numberOfList.add(FristElement);
  numberOfList.add(lastElement);
  print(numberOfList);
 }