import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatefulWidget {
  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
  //const pointsCounter({super.key});
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamAPoints',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(150, 50),
                        ),
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        child: Text(
                          'Add 2 points',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(150, 50),
                        ),
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        child: Text(
                          'Add 3 points',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(150, 50),
                        ),
                      ),
                      // Spacer(
                      //   flex: 12,
                      // )
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  child: VerticalDivider(
                    color: Colors.grey,
                    indent: 50,
                    endIndent: 50,
                  ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$teamBPoints',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(150, 50),
                        ),
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        child: Text(
                          'Add 2 points',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(150, 50),
                        ),
                      ),
                      // Spacer(
                      //   flex: 1,
                      // ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        child: Text(
                          'Add 3 points',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          fixedSize: Size(150, 50),
                        ),
                      ),
                      // Spacer(
                      //   flex: 12,
                      // )
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrangeAccent,
                fixedSize: Size(150, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
