import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget buildTiming({required String text}) {
    return Container(
        child: Text(text,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center),
        padding: EdgeInsets.all(10),
        height: 58,
        width: 365,
        alignment: Alignment.center,
        margin: EdgeInsets.all(0.2),
        color: Color.fromARGB(96, 147, 198, 222));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 51, 61, 87),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Icon(Icons.add_alarm_outlined, color: Colors.white),
                  Container(
                    child: Text('العاصمة',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25, color: Colors.white)),
                    height: 55,
                    width: 320,
                    padding: EdgeInsets.only(top: 20),
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                  )
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          '12:28',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        height: 100,
                        width: 375)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.all(5),
                        child: Text(
                          '   باقي على الأذان',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        height: 70,
                        width: 365)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [buildTiming(text: '<  ١٤ سبتمبر -  ١٨ صفر  >')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTiming(text: '4:12 AM                           الفجر')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTiming(text: '5:32 AM                         الشروق')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child: Text('11:44 AM                         الظهر',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            textAlign: TextAlign.center),
                        padding: EdgeInsets.all(10),
                        height: 58,
                        width: 365,
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(0.2),
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTiming(text: '3:13 PM                         العصر')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTiming(text: '5:55 PM                         المغرب')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTiming(text: '7:13 PM                         العشاء')
                  ],
                )
              ],
            ),
          )),
    );
  }
}
