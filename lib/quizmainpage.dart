import 'package:flutter/material.dart';
import 'package:flutter_application_1/question/vopros.dart';
import 'package:flutter_application_1/screens/nextquizz.dart';
import 'package:flutter_application_1/screens/result_screen.dart';

class FlashClass extends StatefulWidget {
  const FlashClass({Key? key}) : super(key: key);

  @override
  State<FlashClass> createState() => _FlashClassState();
}

class _FlashClassState extends State<FlashClass> {
 Color mainColor = Color(0xff252c4a);
 Color secondColor = Color(0xff11eeb);
  PageController _controller = PageController(initialPage: 0);
  bool isPressed = false;
  Color isTrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Color(0xff117eed);
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        
        child: PageView.builder(
          physics: NeverScrollableScrollPhysics(),
          controller: _controller,
          onPageChanged: (page) {
            setState(() {
              isPressed = false;
            });
          },
          itemCount: question.length,
          // ignore: missing_return
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Суроо ${index + 1} / ${question.length}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                      fontSize: 30,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                  height: 14,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  question[index].questions,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                for (int i = 0; i < question[index].answer.length; i++)
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(bottom: 18.0),
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(vertical: 30),
                      color: isPressed
                          ? question[index].answer.entries.toList()[i].value
                              ? isTrue
                              : isWrong
                          : btnColor,
                      onPressed: isPressed
                          ? () {}
                          : () {
                              setState(() {
                                isPressed  = true;
                              });
                              if (question[index]
                                  .answer
                                  .entries
                                  .toList()[i]
                                  .value) {
                                score += 10;
                                print(score);
                              }
                            },
                      child: Text(
                        question[index].answer.keys.toList()[i],
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 100.0,
                    ),
                    OutlinedButton(
                      // ignore: dead_code
                      onPressed: isPressed
                          ? index + 1 == question.length
                          ?(){
                            Navigator.push(context, MaterialPageRoute(builder:
                             (context)=>
                                 ResultScreen(score)),);
                          }:
                          () {
                              _controller.nextPage(
                                  duration: const Duration(milliseconds: 550),
                                  curve: Curves.easeInOutCirc);
                            }
                          : null,
                      child:  Text(
                        index + 1 == question.length
                        ? "Посмотреть результат"
                        :"Следуюший вопрос",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
