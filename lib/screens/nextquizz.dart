import 'package:flutter/material.dart';

class nextQuizz extends StatelessWidget {
  const nextQuizz({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      bool isPressed = false;
      PageController _controller = PageController(initialPage: 0);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
         SizedBox(
                    height: 100.0,
                  ),
        OutlinedButton(
          // ignore: dead_code
          onPressed: isPressed?() {
          _controller.nextPage
          (duration: const Duration(milliseconds: 750),
           curve: Curves.bounceIn);
          } : null,
          child: const Text(
            'Кийинки суроо',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
