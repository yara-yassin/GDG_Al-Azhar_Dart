////Encapsulation
////1:
// class Human {
//   int? _numberOfArms;
//
//   set numberOfArms(int value) {
//     if (value < 0 || value > 2) {
//       _numberOfArms = 2;
//     } else {
//       _numberOfArms = value;
//     }
//   }
//
//   int get numberOfArms => _numberOfArms!;
// }
////--------------------------------------------------------
////Inheritance:
////types:

////1- Single Inheritance
////2-Multilevel Inheritance
////3-Hierarchical Inheritance

////2:
////Parent Class == Super Class for Student Class and Master Class
// class Human {
//   String? name;
//   int? age;
//
//   void eat() {
//     print("Eating");
//   }
// }
//
// //Multilevel Inheritance:  a class that inherit from a class and another class inherit from it.
// //child == sub Class
// // Parent Class == Super Class also for Master Class
// class Student extends Human {
//   String? studyAt;
// }
//
// //child == sub Class
// class Master extends Human {
//   String? workAt;
// }
////--------------------------------------------------------
// //Inheritance with Constructor in the Parent:
// class Human {
//   String? name;
//   int? age;
//
//   void eat() {
//     print("Eating");
//   }
//
//   Human(this.name, this.age);
// }
//
// class Student extends Human {
//   String? studyAt;
//
//   Student(super.name, super.age);
// }
//
// class Master extends Human {
//   String? workAt;
//
//   Master(super.name, super.age);
// }
////--------------------------------------------------------
////3:
////Override:
// class Human {
//   String? name;
//   int? age;
//
//   void speak() {
//     print("Human Speaking");
//   }
// }
//
// class Student extends Human {
//   String? studyAt;
//
//   @override
//   void speak() {
//     print("Student Speaking");
//   }
// }
////--------------------------------------------------------
////4:
////Abstraction:

//// abstract class can't make an object from it.
// abstract class Human {
//   String? name;
//   int? age;

//// Abstract Method: a method without a body;
//   void speak();
// }
//
// class Student extends Human {
//   String? studyAt;
//
//   @override
//   void speak() {
//     print("Student Speaking");
//   }
// }
////--------------------------------------------------------
////5:
////Polymorphism:
//
// class Animal {
//   void eat() {
//     print("Animal Eating");
//   }
// }
//
// class Lion extends Animal {
//   @override
//   void eat() {
//     print("Lion Eating");
//   }
// }
//
// class Cat extends Animal {
//   @override
//   void eat() {
//     print("Cat Eating");
//   }
// }

////6:
////Mixins:
// mixin CanFly {
//   void fly() {
//     print("Can Fly");
//   }
// }
// //// this method will only appear if the the class extends Animal:
// mixin CanRun on Animal {
//   void run() {
//     print("Can Run");
//   }
// }
//
// class Animal {}
//
// class Dog extends Animal with CanFly, CanRun {}
//
// class Bird with CanFly {}

//Task4:
//1:
class Car {
  final String name, model, color;

  Car({required this.name, required this.model, required this.color});
}

//2:
class BankAccount {
  String? _name, _accountNumber, _accountType;
  double? _balance;

  BankAccount(
      {required String name,
      required String accountNumber,
      required String accountType,
      required double balance}) {
    _name = name;
    _accountNumber = accountNumber;
    _accountType =
        (accountType.toUpperCase() == 'S' || accountType.toUpperCase() == 'C')
            ? accountType.toUpperCase()
            : throw ArgumentError(
                "Invalid account type! Use 'S' for Saving or 'C' for Current.");
    _balance = balance >= 1000
        ? balance
        : throw ArgumentError("Minimum balance must be 1000.");
  }

  // Getters:
  String get name => _name!;

  String get accountNumber => _accountNumber!;

  String get accountType => _accountType!;

  double get balance => _balance!;

  //Setters:
  set name(String newName) => _name = newName;

  set accountNumber(String newAccountNumber) =>
      _accountNumber = newAccountNumber;

  set accountType(String newAccountType) {
    if (newAccountType.toUpperCase() == 'S' ||
        newAccountType.toUpperCase() == 'C') {
      _accountType = newAccountType.toUpperCase();
    } else {
      throw ArgumentError(
          "Invalid account type! Use 'S' for Saving or 'C' for Current.");
    }
  }

  void deposit(double amount) {
    if (amount > 0) {
      _balance = _balance! + amount;
      print("Deposit successful! New balance: $_balance");
    } else {
      print("Invalid deposit amount. Amount must be greater than 0.");
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && (_balance! - amount) >= 1000) {
      _balance = _balance! - amount;
      print("Withdrawal successful! New balance: $_balance");
    } else {
      print("Invalid withdrawal amount or insufficient balance.");
    }
  }

  void display() {
    print("\nAccount Details:");
    print("Name: $_name");
    print("Account Number: $_accountNumber");
    print("Account Type: $_accountType");
    print("Balance: $_balance");
  }
}

//3:
class Rectangle {
  double? _width, _height;

  Rectangle({required double width, required double height}) {
    _width =
        (width > 0) ? width : throw ArgumentError("Width cannot be negative");
    _height = (height > 0)
        ? height
        : throw ArgumentError("Height cannot be negative");
  }

  double get width => _width!;

  double get height => _height!;

  set width(double newWidth) {
    if (newWidth > 0) {
      _width = newWidth;
    } else {
      throw ArgumentError("Width cannot be negative");
    }
  }

  set height(double newHeight) {
    if (newHeight > 0) {
      _height = newHeight;
    } else {
      throw ArgumentError("Width cannot be negative");
    }
  }

  double get area => _width! * _height!;
}

//4:
// abstract class Shape {
//   double _width = 0, _height = 0;
//
//   void setValues(double width, double height) {
//     if (width < 0 || height < 0) {
//       throw ArgumentError("Width and height can't be Negative.");
//     }
//     _width = width;
//     _height = height;
//   }
//
//   double get width => _width;
//
//   double get height => _height;
//
//   double area();
// }
//
// class Rectangle extends Shape {
//   @override
//   area() {
//     return width * height;
//   }
// }
//
// class Triangle extends Shape {
//   @override
//   area() {
//     return 0.5 * width * height;
//   }
// }

//5:
// abstract class Shape {
//   double width;
//   double height;
//
//   // Constructor with validation
//   Shape({required this.width, required this.height}) {
//     if (width < 0 || height < 0) {
//       throw ArgumentError("Width and height can't be negative.");
//     }
//   }
//
//   double area();
// }
//
// class Rectangle extends Shape {
//   String color;
//
//   Rectangle(
//       {required double width, required double height, required this.color})
//       : super(width: width, height: height);
//
//   @override
//   double area() {
//     return width * height;
//   }
//
//   void display() {
//     print(
//         "Rectangle : Width: $width, Height: $height, Color: $color, Area: ${area()}");
//   }
// }
//
// class Square extends Shape {
//   String color;
//
//   Square({required double width, required this.color})
//       : super(width: width, height: width);
//
//   @override
//   double area() {
//     return width * width;
//   }
//
//   void display() {
//     print(
//         "Square : Width: $width, Height: $height, Color: $color, Area: ${area()}");
//   }
// }
