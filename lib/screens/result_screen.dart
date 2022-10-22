import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
final int score;

  const ResultScreen(this.score,{ Key? key, }) : super(key: key);
  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    Color mainColor = Color(0xff252c4a);
 Color secondColor = Color(0xff11eeb);
    return Scaffold(
       backgroundColor: mainColor,
       body: Column(mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [Center(
          child: Text("Поздравляем", style: TextStyle(
            color: Colors.white,
           fontSize: 40, 
          fontWeight: FontWeight.bold),
          ),
        ),
        Text("Ваш результат:", 
        style: TextStyle(fontSize: 25, 
        color: Colors.white, 
        fontWeight: FontWeight.bold),),
        SizedBox(height: 50,
          child: Text("${widget.score}", 
          style: TextStyle(
            fontSize: 30, 
          color: Colors.orange),),
        )
        ],
       ),
    );
  }
}