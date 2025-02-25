import 'dart:io';

void section2() {
  //1
  print("Enter a number:");
  String? input = stdin.readLineSync()!;
  if (input.isNotEmpty) {
    int? number = int.tryParse(input);
    if (number != null) {
      print("$number is ${number.isEven ? "Even" : "Odd"}");
    } else {
      print("The number is not valid! Please enter a valid number.");
    }
  } else {
    print("The number can't be empty!");
  }
  print("---------------------------------------------------------");

  //2:
  print("Enter a Character:");
  String? inputChar = stdin.readLineSync()!;
  if (inputChar.isNotEmpty) {
    if (int.tryParse(inputChar) != null) {
      print("$inputChar is a Number, not a Character!");
    } else if (inputChar == 'a' ||
        inputChar == 'e' ||
        inputChar == 'i' ||
        inputChar == 'o' ||
        inputChar == 'u') {
      print("$inputChar is a Vowel.");
    } else {
      print("$inputChar is a Consonant.");
    }
  } else {
    print("The character can't be empty!");
  }
  print("---------------------------------------------------------");

  //3:
  print("Enter a number:");
  String? inputNumber = stdin.readLineSync()!;
  if (inputNumber.isNotEmpty) {
    int? numberPositive = int.tryParse(inputNumber);
    if (numberPositive != null) {
      if (numberPositive < 0) {
        print("$numberPositive is a Negative Number.");
      } else if (numberPositive == 0) {
        print("$numberPositive is Zero.");
      } else {
        print("$numberPositive is a Positive Number.");
      }
    } else {
      print("The number is not valid! Please enter a valid number.");
    }
  } else {
    print("The number can't be empty!");
  }
  print("---------------------------------------------------------");

  //4:
  print("Enter a number:");
  String? inputPrimeNumber = stdin.readLineSync()!;
  if (inputPrimeNumber.isNotEmpty) {
    int? numberPrime = int.tryParse(inputPrimeNumber);
    if (numberPrime != null) {
      bool isPrime = true;
      for (int i = 2; i < numberPrime; i++) {
        if (numberPrime % i == 0) {
          isPrime = false;
          break;
        }
      }
      if (isPrime) {
        print("$numberPrime is a Prime Number.");
      } else {
        print("$numberPrime is not a Prime Number.");
      }
    } else {
      print("The number is not valid! Please enter a valid number.");
    }
  } else {
    print("The number can't be empty!");
  }
  print("---------------------------------------------------------");

  //5:
  print("1. Add");
  print("2. Subtract");
  print("3. Multiply");
  print("4. Divide");

  print("Enter your choice: ");
  String? choice = stdin.readLineSync();

  if (choice == null || choice.isEmpty) {
    print("Error: Choice cannot be empty.");
    return;
  }

  int? choiceNumber = int.tryParse(choice);
  if (choiceNumber == null || choiceNumber < 1 || choiceNumber > 4) {
    print("Error: Invalid choice. Please enter a number between 1 and 4.");
    return;
  }

  print("Enter first number: ");
  String? num1 = stdin.readLineSync();
  print("Enter second number: ");
  String? num2 = stdin.readLineSync();

  if (num1 == null || num2 == null || num1.isEmpty || num2.isEmpty) {
    print("Error: Input cannot be empty.");
    return;
  }

  double? number1 = double.tryParse(num1);
  double? number2 = double.tryParse(num2);

  if (number1 == null || number2 == null) {
    print("Invalid input. Please enter Numbers");
    return;
  }

  double result;

  switch (choiceNumber) {
    case 1:
      result = number1 + number2;
      print("Result: $result");
      break;
    case 2:
      result = number1 - number2;
      print("Result: $result");
      break;
    case 3:
      result = number1 * number2;
      print("Result: $result");
      break;
    case 4:
      if (number2 == 0) {
        print("Error: Cannot divide by zero.");
      } else {
        result = number1 / number2;
        print("Result: $result");
      }
      break;
  }
  print("---------------------------------------------------------");

  //6:
  List<int> numbersList = [7, 2, 6, 3, 9, 4, 5];
  print(
      "The Sum of the first and last element is ${numbersList.first + numbersList.last} .");
  numbersList.add(18);
  print("The new list is $numbersList");
  print("---------------------------------------------------------");

  //7:
  List<int> listOfNumbers = [1, 2, 3, 4, 5, 6, 2, 5];
  print("The list is $listOfNumbers");
  Set<int> setNumbers = listOfNumbers.toSet();
  print("The list without duplicates is $setNumbers");
  listOfNumbers = setNumbers.toList();
  print("The New list is $listOfNumbers");
  Map<int, int> mapNumbers = {
    listOfNumbers[0]: listOfNumbers[0] * listOfNumbers[0],
    listOfNumbers[1]: listOfNumbers[1] * listOfNumbers[1],
    listOfNumbers[2]: listOfNumbers[2] * listOfNumbers[2],
    listOfNumbers[3]: listOfNumbers[3] * listOfNumbers[3],
    listOfNumbers[4]: listOfNumbers[4] * listOfNumbers[4],
    listOfNumbers[5]: listOfNumbers[5] * listOfNumbers[5],
  };
  print("Map {Number : Square}: $mapNumbers");
  print("---------------------------------------------------------");
}
