// import 'dart:io';
//
// void section3() {
//   // for (int i = 0; i < 15; i++) {
//   //   if (i == 5) {
//   //     // break;
//   //     continue;
//   //   }
//   //   print(i);
//   // }
//
//   //for...in:  (it is a loop)
//   // List<int> numbers = [10, 20, 30, 40, 50];
//   // int sum = 0;
//   // for (var ele in numbers) {
//   //   sum += ele;
//   // }
//   // print(sum);
//
//   //forEach: (it is a method)
//   // List<int> numbers = [10, 20, 30, 40, 50];
//   // numbers.forEach((ele) {
//   //   print(ele);
//   // });
//
//   //While:
//   // int i = 0;
//   // while (i < 10) {
//   //   print(i);
//   //   i++;
//   // }
//
//   //Do-While:
//   // int i = 0;
//   // do {
//   //   print(i);
//   //   // i++;
//   // } while (i >15);
//
//   //functions:
//   // print(add(10, 20));
//   // addNumbers(10, 30);
//   // data(name: "Ahmed");
//   // print(add(10, 20));
//
//   //to do app:
//   // List<String> tasks = []; // List to store tasks
//   // int choice;
//   //
//   // do {
//   //   print("\n1- Add Task");
//   //   print("2- Remove Task");
//   //   print("3- View Tasks");
//   //   print("4- Exit");
//   //   stdout.write("Enter your choice: ");
//   //
//   //   choice = int.tryParse(stdin.readLineSync()!) ?? 0;
//   //
//   //   switch (choice) {
//   //     case 1:
//   //       stdout.write("Enter task: ");
//   //       String task = stdin.readLineSync()!;
//   //       tasks.add(task);
//   //       print("Task added successfully!");
//   //       break;
//   //
//   //     case 2:
//   //       if (tasks.isEmpty) {
//   //         print("No tasks to remove!");
//   //       } else {
//   //         int removeIndex;
//   //         do {
//   //           print("\nTasks:");
//   //           printList(tasks);
//   //           stdout.write("Enter task number to remove: ");
//   //           removeIndex = int.tryParse(stdin.readLineSync()!) ?? 0;
//   //
//   //           if (removeIndex < 1 || removeIndex > tasks.length) {
//   //             print("Invalid task number! Please enter a valid task number.");
//   //           }
//   //         } while (removeIndex < 1 ||
//   //             removeIndex >
//   //                 tasks.length); // Keep asking until a valid number is entered
//   //
//   //         print("Removed: ${tasks.removeAt(removeIndex - 1)}");
//   //       }
//   //       break;
//   //
//   //     case 3:
//   //       if (tasks.isEmpty) {
//   //         print("No tasks available!");
//   //       } else {
//   //         print("\nYour Tasks:");
//   //         printList(tasks);
//   //       }
//   //       break;
//   //
//   //     case 4:
//   //       print("Exiting... Goodbye!");
//   //       break;
//   //
//   //     default:
//   //       print("Invalid choice! Please enter a number between 1 and 4.");
//   //   }
//   // } while (choice != 4);
// }
//
// // void printList(List list) {
// //   for (int i = 0; i < list.length; i++) {
// //     print("${i + 1}- ${list[i]}");
// //   }
// // }
//
// //1-
// // int add(int a, int b) {
// //   return a + b;
// // }
//
// //2-
// // void addNumbers(int a, int b) {
// //   print(a + b);
// // }
//
// //optional parameter: [int? c] or [int c=0]
//
// //named parameter:
// // void data({required String name, int? age}) {
// //   print("Name: $name, Age: $age");
// // }
//
// //arrow function:
// // int add(int a, int b) => a + b;

//Task 3:
import 'dart:io';

void section3() {
  //1:
  List<int> numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for (var ele in numbers) {
    if (ele < 5) {
      print(ele);
    }
  }
  print("---------------------------------------------------------");
  //2:
  for (int i = 1; i <= 100; i++) {
    if (i == 41) {
      continue;
    }
    print(i);
  }
  print("---------------------------------------------------------");
  //3:
  evenNumbers(start: 10, end: 20);
  print("---------------------------------------------------------");
  //4:
  print("The area of the circle is: ${areaOfCircle(radius: 5)}");
  print("---------------------------------------------------------");
  //5:
  List<String> tasks = []; // List to store tasks
  int choice;

  do {
    print("\n1- Add Task");
    print("2- Remove Task");
    print("3- View Tasks");
    print("4- Exit");
    stdout.write("Enter your choice: ");

    choice = int.tryParse(stdin.readLineSync()!) ?? 0;

    switch (choice) {
      case 1:
        stdout.write("Enter task: ");
        String task = stdin.readLineSync()!;
        tasks.add(task);
        print("Task added successfully!");
        break;

      case 2:
        if (tasks.isEmpty) {
          print("No tasks to remove!");
        } else {
          int removeIndex;
          do {
            print("\nTasks:");
            viewList(tasks);
            stdout.write("Enter task number to remove: ");
            removeIndex = int.tryParse(stdin.readLineSync()!) ?? 0;

            if (removeIndex < 1 || removeIndex > tasks.length) {
              print("Invalid task number! Please enter a valid task number.");
            }
          } while (removeIndex < 1 ||
              removeIndex >
                  tasks.length); // Keep asking until a valid number is entered

          print("Removed: ${tasks.removeAt(removeIndex - 1)}");
        }
        break;

      case 3:
        if (tasks.isEmpty) {
          print("No tasks available!");
        } else {
          print("\nYour Tasks:");
          viewList(tasks);
        }
        break;

      case 4:
        print("Exiting... Goodbye!");
        break;

      default:
        print("Invalid choice! Please enter a number between 1 and 4.");
    }
  } while (choice != 4);
  print("---------------------------------------------------------");
//6:
  stdout.write("Enter a String: ");
  String? word = stdin.readLineSync()!;

  if (word.trim().isEmpty) {
    print("Invalid input! Please enter a valid string.");
    return;
  }

  print(isPalindrome(word)
      ? "$word is a Palindrome"
      : "$word is Not a Palindrome");
  print("---------------------------------------------------------");
//7:
  int rows = 4;
  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    print("");
  }
  print("---------------------------------------------------------");
}

//----------------------------------Methods----------------------------------

//3:
void evenNumbers({required int start, required int end}) {
  for (int i = start; i <= end; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

// 4:
double areaOfCircle({required double radius}) {
  return 3.14 * radius * radius;
}

//5:
void viewList(List list) {
  for (int i = 0; i < list.length; i++) {
    print("${i + 1}- ${list[i]}");
  }
}

// 6:
bool isPalindrome(String str) {
  str = str.toLowerCase().trim();
  for (int i = 0; i < str.length ~/ 2; i++) {
    if (str[i] != str[str.length - i - 1]) {
      return false;
    }
  }
  return true;
}

//another solution for question 6:

bool isPalindrome2(String str) {
  str = str.toLowerCase().trim();
  return str == str.split('').reversed.join('');
}
