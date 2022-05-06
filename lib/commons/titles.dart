import 'package:flutter/material.dart';
import 'package:portfolio/theme/color.dart';
import 'package:responsive_framework/responsive_framework.dart';

buildTitle(
{
  required BuildContext context,
  String? number,
  required String title,
}
    ) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, top: 100),
    child: Row(
      children: [
        Text(
          number ?? "",
          style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 30,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 30,
              color: kCaptionColor,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 10),
        ResponsiveVisibility(
          visible: false,
          visibleWhen: [
            Condition.largerThan(name: MOBILE),
          ],
          child: Padding(
            padding: EdgeInsets.only(right: 20),
            child: Container(
              color: kCaptionColorOp,
              height: 1,
              width: MediaQuery.of(context).size.width * 0.1,
            ),
          ),
        ),
        // SizedBox(
        //   width: MediaQuery.of(context).size.width * 0.22,
        // ),
      ],
    ),
  );
}