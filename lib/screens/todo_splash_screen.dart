import 'package:bootcamp_1/screens/todo_screen.dart';
import 'package:flutter/material.dart';

class TodoSplashScreen extends StatelessWidget {
  const TodoSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to\nTODO App',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TodoScreen();
                    },
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white),
              ),
              child: Text(
                'Start',
                style: TextStyle(fontSize: 21, color: Colors.blueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
