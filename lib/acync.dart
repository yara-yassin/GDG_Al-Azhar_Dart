import 'dart:async';

void asynchronous() {
  // Future.delayed(Duration(seconds: 5), () {
  //   return int.parse("5k");
  // }).then((value) {
  //   print("Value: $value");
  // }).catchError((error) {
  //   print("Error: $error");
  // });

  // try {
  //   print("Value: ${int.parse("5k")}");
  // } on FormatException {
  //   print("Invalid Format");
  // } catch (e) {
  //   print("Error: $e");
  // }

  //Date and Time:
  // DateTime now = DateTime.now();
  // print(now);

  // DateTime now = DateTime(2025,11,16);
  // print(now.isBefore(DateTime.now()));

  //clock:
  var currentTime;
  Timer.periodic(Duration(seconds: 1), (timer) {
    currentTime = DateTime.now();
    print(currentTime.toString());
    print(currentTime.toString().substring(11, 19));
  });
}
