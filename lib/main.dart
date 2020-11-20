import 'package:flutter/material.dart';
import 'package:workout_app/screens/about.dart';
import 'package:workout_app/screens/details_train_screen.dart';
import 'package:workout_app/screens/home_screen.dart';
import 'package:workout_app/screens/train_screen.dart';
import 'package:workout_app/screens/workout_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WorkoutScreen(),
    );
  }
}
