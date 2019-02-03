// import 'dart:math' show Random;

//This is a test of the Dart programming language, using an attempt to do OOP using Dart. 
//Main class calls FirstClass which calls SecondClass which in turn calls ThirdClass. Both SecondClass and ThirdClass are extends of FirstClass
//ThirdClass is calling LastClass which is a extend of Thirdclass.


main() async{
  print("this is a test run! Calling the First Class right now!");
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
    String secondString = "Running the Second Class!";
    print(secondString);
  }
  
}

class ThirdClass extends FirstClass{
  ThirdPrint(){
    String thirdClass = "Running the Third Class!";
    print(thirdClass);
    LastClass().LastPrint();
  }
  
}

class LastClass extends ThirdClass{
  LastPrint(){
    String lastString = "This is the Last Class called! Ending!";
    print(lastString);
  }
  
}