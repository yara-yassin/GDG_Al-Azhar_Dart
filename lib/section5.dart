
void section5() {
  ////1:
  // Human yara= Human();
  // yara.numberOfArms=1;
  // print(yara.numberOfArms);
  ////2:
  // Student s1 = Student();
  // s1.name = "yara";
  // s1.age = 20;
  // s1.eat();
  // s1.studyAt = "Ädk";
  // print(s1.name);
  // print(s1.age);
  // Master m1 = Master();
  // m1.name = "yara";
  // m1.age = 20;
  // m1.eat();
  // m1.workAt = "gdsc";
  // print(m1.name);

  ////3,4:
  // Student s1 = Student();
  // s1.speak();

  ////5:
  // Animal a1 = Lion();
  // a1.eat();
  // Lion l1 = Lion();
  // Cat c1 = Cat();
  // List<Animal> zoo = [l1, c1];

  ////6:
  // Dog d1 = Dog();
  // d1.run();
  // d1.fly();
  // Bird b1 = Bird();
  // b1.fly();

////Task5:
  ////1:
//   stdout.write("Enter the Car name: ");
//   String name = stdin.readLineSync() ?? '';
//   stdout.write("Enter the Car model: ");
//   String model = stdin.readLineSync() ?? '';
//   stdout.write("Enter the Car color: ");
//   String color = stdin.readLineSync() ?? '';
//   Car car = Car(name: name, model: model, color: color);
//   print(
//       "The car name is ${car.name} and the model is ${car.model} and the color is ${car.color}");
// print("---------------------------------------------------------");
////2:
//   List<BankAccount> customers = [];
//   stdout.write("Enter the number of customers: ");
//   int numberOfCustomers = int.parse(stdin.readLineSync() ?? '');
//   for (int i = 0; i < numberOfCustomers; i++) {
//     stdout.write("Enter the customer name: ");
//     String name = stdin.readLineSync() ?? '';
//     stdout.write("Enter the customer account number: ");
//     String accountNumber = stdin.readLineSync() ?? '';
//     stdout.write("Enter the customer account type: ");
//     String accountType = stdin.readLineSync() ?? '';
//     stdout.write("Enter the customer balance: ");
//     double balance = double.parse(stdin.readLineSync() ?? '');
//     try {
//       BankAccount customer = BankAccount(
//           name: name,
//           accountNumber: accountNumber,
//           accountType: accountType,
//           balance: balance);
//       customers.add(customer);
//     } catch (e) {
//       print("Error :$e");
//       i--;
//     }
//   }
//   for (BankAccount customer in customers) {
//     customer.display();
//   }
//   print("---------------------------------------------------------");
//   stdout.write(
//       "\nEnter Customer Index (1 to ${customers.length}) for Transactions: ");
//   int customerIndex = int.parse(stdin.readLineSync() ?? '1') - 1;
//   if (customerIndex >= 0 && customerIndex < customers.length) {
//     BankAccount selectedCustomer = customers[customerIndex];
//     stdout.write("Enter amount to deposit: ");
//     double depositAmount = double.parse(stdin.readLineSync() ?? '0');
//     selectedCustomer.deposit(depositAmount);
//     stdout.write("Enter amount to withdraw: ");
//     double withdrawAmount = double.parse(stdin.readLineSync() ?? '0');
//     selectedCustomer.withdraw(withdrawAmount);
//     print("\nFinal Balance:");
//     selectedCustomer.display();
//   } else {
//     print("Invalid Customer Index!");
//   }
//   print("---------------------------------------------------------");

////3:
//   try {
//     Rectangle rectangle = Rectangle(width: 10, height: 10);
//     print("Initial Values Area: ");
//     print("The area of the rectangle is ${rectangle.area}");
//     rectangle.width = 10;
//     rectangle.height = 5;
//     print("Updated Values Area: ");
//     print("The area of the rectangle is ${rectangle.area}");
//   } catch (e) {
//     print("Error: $e");
//   }
//   print("---------------------------------------------------------");

////4:
//   try {
//     Rectangle rect = Rectangle();
//     stdout.write("Enter the width of the rectangle: ");
//     double rectWidth = double.parse(stdin.readLineSync() ?? '0');
//     stdout.write("Enter the height of the rectangle: ");
//     double rectHeight = double.parse(stdin.readLineSync() ?? '0');
//     rect.setValues(rectWidth, rectHeight);
//     print("\nRectangle Area: ${rect.area()}");
//
//     Triangle tri = Triangle();
//     stdout.write("\nEnter the base of the triangle: ");
//     double triWidth = double.parse(stdin.readLineSync() ?? '0');
//     stdout.write("Enter the height of the triangle: ");
//     double triHeight = double.parse(stdin.readLineSync() ?? '0');
//     tri.setValues(triWidth, triHeight);
//     print("\nTriangle Area: ${tri.area()}");
//   } catch (e) {
//     print("Error: $e");
//   }
//   print("---------------------------------------------------------");
////5:
//   try {
//     stdout.write("Enter the width of the Rectangle: ");
//     double rectWidth = double.parse(stdin.readLineSync() ?? '0');
//     stdout.write("Enter the height of the Rectangle: ");
//     double rectHeight = double.parse(stdin.readLineSync() ?? '0');
//     stdout.write("Enter the color of the Rectangle: ");
//     String rectColor = stdin.readLineSync() ?? 'Unknown';
//     Rectangle rectangle =
//         Rectangle(width: rectWidth, height: rectHeight, color: rectColor);
//     rectangle.display();
//
//     // Creating a Square
//     stdout.write("\nEnter the side length of the Square: ");
//     double squareSide = double.parse(stdin.readLineSync() ?? '0');
//     stdout.write("Enter the color of the Square: ");
//     String squareColor = stdin.readLineSync() ?? 'Unknown';
//
//     Square square = Square(width: squareSide, color: squareColor);
//     square.display();
//   } catch (e) {
//     print("Error: $e");
//   }
//   print("---------------------------------------------------------");
}
