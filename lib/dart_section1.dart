import 'dart:io';

void section1() {
//1:
  print("---------------------------------------------------------");
  String text = '"Hello Dart"';
  print(text);
  print("---------------------------------------------------------");

//2:
  int num1 = 2, num2 = 3;
  print("first number is $num1 and second number is $num2.");
  print("---------------------------------------------------------");

//3:
  print("Enter a number:");
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    int? number = int.tryParse(input);
    if (number != null) {
      int square = number * number;
      print("the square of $number is $square.");
    } else {
      print("The number is not valid! Please enter a valid number.");
    }
  } else {
    print("The number can't be empty!");
  }
  print("---------------------------------------------------------");

//4:
  double celsius = 25.0;
//convert from celsius to fahrenheit:
  double fahrenheit = (celsius * 9 / 5) + 32;
  print("NN°C: $celsius° is equal to NN°F: $fahrenheit°.");
//convert from fahrenheit to celsius:
  double celsiusConverted = (fahrenheit - 32) * 5 / 9;
  print("NN°F: $fahrenheit° is equal to NN°C: $celsiusConverted°.");
  print("---------------------------------------------------------");

//5:
  const double rating1 = 2.0, rating2 = 3.0, rating3 = 4.0;
  const double average_Rating = (rating1 + rating2 + rating3) / 3;
  print("The average rating is $average_Rating.");
  print("---------------------------------------------------------");

//6:
  int birthYear = 2000;
  int futureYear = 2030;
  int age = futureYear - birthYear;
  print("I will be $age in year $futureYear.");
  print("---------------------------------------------------------");

//7:
  String x = "5";
  int convertToInt = int.parse(x);
  print("$x is String but $convertToInt is integer.");
  print("---------------------------------------------------------");

//8:
  double y = 4.5;
  int convertToInteger = y.toInt();
  print("$y is double but $convertToInteger is integer.");
  print("---------------------------------------------------------");
}
