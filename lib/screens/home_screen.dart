import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF333333), // ARGB = 0 - 255 = 00 - FF
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Lord Olumide', style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        color: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 35, vertical: 50),
        margin: EdgeInsets.symmetric(horizontal: 35, vertical: 50),
        child: Text('name', style: TextStyle(fontSize: 20)),
      ),
      // body: Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //   child: Column(
      //     children: [
      //       // Container(
      //       //   color: Colors.red,
      //       //   child: Row(
      //       //     mainAxisSize: MainAxisSize.min,
      //       //     mainAxisAlignment: MainAxisAlignment.start,
      //       //     crossAxisAlignment: CrossAxisAlignment.start,
      //       //     children: [
      //       //       Container(width: 50, height: 100, color: Colors.green),
      //       //       Container(width: 90, height: 200, color: Colors.blue),
      //       //       Container(width: 60, height: 150, color: Colors.white),
      //       //     ],
      //       //   ),
      //       // ),
      //       // Container(
      //       //   color: Colors.red,
      //       //   child: Row(
      //       //     mainAxisAlignment: MainAxisAlignment.start,
      //       //     crossAxisAlignment: CrossAxisAlignment.start,
      //       //     children: [
      //       //       Container(width: 50, height: 100, color: Colors.green),
      //       //       Container(width: 90, height: 200, color: Colors.blue),
      //       //       Container(width: 60, height: 150, color: Colors.white),
      //       //     ],
      //       //   ),
      //       // ),
      //       // Row(
      //       //   mainAxisAlignment: MainAxisAlignment.start,
      //       //   crossAxisAlignment: CrossAxisAlignment.start,
      //       //   children: [
      //       //     Container(width: 50, height: 100, color: Colors.green),
      //       //     Container(width: 90, height: 200, color: Colors.blue),
      //       //     Container(width: 60, height: 150, color: Colors.white),
      //       //   ],
      //       // ),
      //     ],
      //   ),
      // ),
    );
  }
}

// 0b11111111 = 0d255 = 0xFF
