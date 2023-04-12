import 'package:flutter/material.dart';
import 'package:portfolio/utils/launch_url.dart';
import 'package:portfolio/theme/color.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroView extends StatelessWidget {
  const IntroView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            buildIntro(context),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

buildButton() {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: SizedBox(
      height: 65,
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: kBackgroundColor, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.0),
            side: BorderSide(color: kPrimaryColor))),
        onPressed: () {
          LaunchMethod().launchURL(
              "https://www.linkedin.com/in/namrata-tank-62555b208/");
        },
        child: Text(
          "Get In Touch",
          style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),
        ),
      ),
    ),
  );
}

buildIntro(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(height: 30),
      Text(
        "Hi, my name is",
        style: TextStyle(
            fontSize: 16, color: kPrimaryColor, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Text(
        "NAMRATA TANK",
        style: TextStyle(
          fontSize: ScreenHelper.isDesktop(context) || ScreenHelper.isTablet(context) ? 50 : 40,
          color: kNameColor,
          fontWeight: FontWeight.bold,
          height: 1.3,
        ),
      ),
      SizedBox(height: 10),
      Text(
        "I build things for the android, ios and web",
        style: TextStyle(
          fontSize: ScreenHelper.isDesktop(context) || ScreenHelper.isTablet(context)  ? 30 : 20,
          color: kCaptionColor,
          fontWeight: FontWeight.bold,
          height: 1.0,
        ),
      ),
      SizedBox(height: 20),
      Text(
        "I'm a Flutter Developer based in Ahmedabad, IN \nspecializing in building websites, applications and everything in between",
        style: TextStyle(
          fontSize: 16,
          color: kCaptionColorOp,
          fontWeight: FontWeight.bold,
          height: 1.0,
        ),
      ),
    ],
  );
}
