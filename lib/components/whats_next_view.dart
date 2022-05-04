import 'package:flutter/material.dart';
import 'package:portfolio/commons/titles.dart';
import 'package:portfolio/theme/color.dart';

class WhatsNextView extends StatelessWidget {
  const WhatsNextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 200),
            Text(
              "What's Next?",
              style: TextStyle(color: kPrimaryColor, fontSize: 14),
            ),
            SizedBox(height: 20),
            Text(
              "Get In Touch",
              style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 40,
                  color: kCaptionColor,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Text(
                "Although I'm currently looking for new opportunities,"
                " my inbox is always open.\nWhether you have a question or just want to say hi,"
                " \nI'll try my best to get back to you!",
                style: TextStyle(color: kCaptionColorOp, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
