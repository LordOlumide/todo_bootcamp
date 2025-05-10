import 'package:bootcamp_1/screens/choice_screen.dart';
import 'package:bootcamp_1/screens/todo_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ProfileCardApp());
}

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ChoiceScreen());
  }
}
