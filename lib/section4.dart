//OOP:

void section4() {
  //// student task:
  // Student s1 = const Student(
  //     name: "mohamed", age: 20, grade: 90.5, phone: "01000000000");
  // s1.display();
  // Student s2 =
  //     const Student(name: "ahmed", age: 21, grade: 95.5, phone: "01100000000");
  //
  // s2.display();
  // Student s3 =
  //     const Student(name: "ali", age: 22, grade: 98.5, phone: "01200000000");
  // s3.display();

  // //Houses task:
  List<House> houses = [
    const House(id: 1, name: "house1", price: 1000000),
    const House(id: 2, name: "house2", price: 2000000),
    const House(id: 3, name: "house3", price: 3000000),
  ];
  for (House house in houses) {
    print("ID: ${house.id} Name: ${house.name} Price: ${house.price}");
  }
}
// // student task:
// class Student {
//   final String? name, phone;
//   final int? age;
//   final double? grade;
//
// //constructor in Single line :
//   const Student(
//       {required this.name,
//       required this.age,
//       required this.grade,
//       required this.phone});
//
//   void display() {
//     print(name);
//     print(age);
//     print(grade);
//     print(phone);
//   }
// }

// //house task:
class House {
  final int? id;
  final String? name;
  final double? price;

  const House({
    required this.id,
    required this.name,
    required this.price,
  });
}
