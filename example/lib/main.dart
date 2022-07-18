import 'package:clock_analog/clock_analog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clock Analog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Clock Analog"),
        ),
        body: ClockAnalog(
          initialTime: TimeOfDay.now(),
          onChanged: (value) {
            if (kDebugMode) {
              print(value);
            }
          },
        ),
      ),
    );
  }
}