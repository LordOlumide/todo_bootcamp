import 'package:bootcamp_1/screens/todo_splash_screen.dart';
import 'package:flutter/material.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoSplashScreen()),
                );
              },
              child: Text('Todo App', style: TextStyle(fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}
