import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BusinesCardApp());
}

class BusinesCardApp extends StatelessWidget {
  const BusinesCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff2b475e),
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
              ),
              CircleAvatar(
                  radius: 100,
                  backgroundColor: Color(0xffffffff),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/naruto.png'),
                    radius: 90,
                  )),
              Text(
                'Naruto abo 7iat',
                style: TextStyle(
                    color: Colors.white, fontSize: 32, fontFamily: 'Pacifico'),
              ),
              Text(
                'hello, ninja⚔',
                style: TextStyle(
                  color: Colors.white30,
                  fontSize: 22,
                  fontFamily: 'Pacifico',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Text('  '),
                      Icon(
                        Icons.phone,
                        size: 29,
                        color: Color(0xff2b475e),
                      ),
                      Text(
                        '      +20 1225730050',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 29,
                          fontFamily: 'Pacifico',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Text('  '),
                      Icon(
                        Icons.email,
                        size: 29,
                        color: Color(0xff2b475e),
                      ),
                      Text(
                        '      bakrahmed440@gmail.com',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 22,
                          fontFamily: 'Pacifico',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
