import 'package:flutter/material.dart';
// import 'package:flutter_application_1/quizmainpage.dart';
import 'package:flutter_application_1/quizmainpage.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: FlashClass(),
    );
  }
}
 



