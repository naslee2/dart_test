// import 'dart:math' show Random;

//This is a test of the Dart programming language, using an attempt to do OOP using Dart. 
//Main class calls FirstClass which calls SecondClass which in turn calls ThirdClass. Both SecondClass and ThirdClass are extends of FirstClass
//ThirdClass is calling LastClass which is a extend of Thirdclass.


main() async{
  print("this is a test run!");
  FirstClass.firstprint();

}

abstract class FirstClass{
  static firstprint(){
    print("Running in the First Class!");
    SecondClass().SecondPrint();
    ThirdClass().ThirdPrint();
  }
}

class SecondClass extends FirstClass{
  SecondPrint(){
    String secondString = "Running the Second String!";
    print(secondString);
  }
  
}

class ThirdClass extends FirstClass{
  ThirdPrint(){
    String thirdClass = "Running the Third String!";
    print(thirdClass);
    LastClass().LastPrint();
  }
  
}

class LastClass extends ThirdClass{
  LastPrint(){
    print("This is the Last Class called! Ending!");
  }
  
}