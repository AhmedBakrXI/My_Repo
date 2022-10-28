import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyBirthdayCard());
}

class MyBirthdayCard extends StatelessWidget {
  const MyBirthdayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffD2BCD5),
        body: Center(
          child: Image(
            image: AssetImage('images/Birthday.png'),
          ),
        ),
      ),
    );
  }
}
