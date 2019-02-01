import 'dart:math' show Random;

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