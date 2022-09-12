import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  child: Image.asset(
                    '/Users/fatmaalrasheed/Desktop/flutter_application_cw4/assets/koala.JPG',
                    width: 200,
                    height: 200,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                      child: Text(
                        'Koalas',
                        style: TextStyle(fontSize: 20),
                      ),
                      color: Colors.teal[300]),
                )
              ],
            ),
            Container(
              child: Text(
                'Name: koala ',
                style: TextStyle(fontSize: 25),
              ),
              color: Colors.teal[300],
            ),
            Container(
              child: Text(
                'Age: 3 ',
                style: TextStyle(fontSize: 25),
              ),
              color: Colors.teal[300],
            ),
            Container(
              child: Text(
                'Gender: male',
                style: TextStyle(fontSize: 25),
              ),
              color: Colors.teal[300],
            )
          ],
        )),
      ),
    );
  }
}
