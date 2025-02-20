import 'package:test/test.dart';
void main() {
  group('Section 1 Tests', () {
    test('Prints "Hello Dart"', () {
      String text = '"Hello Dart"';
      expect(text, equals('"Hello Dart"'));
    });

    test('Numbers are displayed correctly', () {
      int num1 = 2, num2 = 3;
      expect("first number is $num1 and second number is $num2.",
          equals("first number is 2 and second number is 3."));
    });

    test('Square of a number', () {
      int number = 4;
      int square = number * number;
      expect(square, equals(16));
    });

    test('Celsius to Fahrenheit conversion', () {
      double celsius = 25.0;
      double fahrenheit = (celsius * 9 / 5) + 32;
      expect(fahrenheit, closeTo(77.0, 0.01));
    });

    test('Fahrenheit to Celsius conversion', () {
      double fahrenheit = 77.0;
      double celsiusConverted = (fahrenheit - 32) * 5 / 9;
      expect(celsiusConverted, closeTo(25.0, 0.01));
    });

    test('Average rating calculation', () {
      const double rating1 = 2.0, rating2 = 3.0, rating3 = 4.0;
      const double average_Rating = (rating1 + rating2 + rating3) / 3;
      expect(average_Rating, closeTo(3.0, 0.01));
    });

    test('Age calculation in a future year', () {
      int birthYear = 2000;
      int futureYear = 2030;
      int age = futureYear - birthYear;
      expect(age, equals(30));
    });

    test('String to integer conversion', () {
      String x = "5";
      int convertToInt = int.parse(x);
      expect(convertToInt, equals(5));
    });

    test('Double to integer conversion', () {
      double y = 4.5;
      int convertToInteger = y.toInt();
      expect(convertToInteger, equals(4));
    });
  });
}
