import 'package:flutter/material.dart';
import 'package:portfolio/commons/titles.dart';
import 'package:portfolio/theme/color.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          buildTitle(
            context: context,
            number: "01.  ",
            title: "About Me",
          ),
          buildDetail(context),
        ],
      ),
    );
  }

  buildDetail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      "Hello! I'm Namrata, a Flutter Developer based in Ahmedabad, IN "
                      "\n\nI enjoy creating things that live on the internet, "
                      "whether that be websites, applications, or anything in between. "
                      "My goal is to always build products that provide pixel-perfect, "
                      "performant experiences."
                      "\n\nI have completed BE in Electronics & Communication from Government Engineering College, Rajkot."
                      "\n\nCurrently I am working at IndiaNIC Infotech Limited, Ahmedabad."
                      "\n\nHere are s few technologies I've been working with recently:"
                      "\n\n\n  * Dart\n  * Flutter\n  * Firebase\n  * API",
                      style: TextStyle(
                          fontSize: ScreenHelper.isDesktop(context) ||
                                  ScreenHelper.isTablet(context)
                              ? 18
                              : 16,
                          color: kCaptionColorOp),
                    ),
                  ),
                ),
              ),
              ResponsiveVisibility(
                visible: false,
                visibleWhen: [
                  Condition.largerThan(name: MOBILE),
                ],
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 50, right: 20),
                    child: Container(
                      height: 500,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 60, left: 120),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.19,
                              height: 450,
                              //  height: MediaQuery.of(context).size.height * 0.53,
                              decoration: BoxDecoration(
                                  color: kBackgroundColor,
                                  border: Border.all(
                                      color: kPrimaryColor, width: 2)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 90),
                            child: Image(
                              width: MediaQuery.of(context).size.width * 0.19,
                              height: 450,
                              image: AssetImage("assets/images/mypic3.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ResponsiveVisibility(
            visible: false,
            visibleWhen: [
              Condition.smallerThan(name: TABLET),
            ],
            child: Container(
              // height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 40, left: 40, bottom: 20),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 300,
                        //  height: MediaQuery.of(context).size.height * 0.53,
                        decoration: BoxDecoration(
                            color: kBackgroundColor,
                            border: Border.all(color: kPrimaryColor, width: 2)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Image(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 300,
                        image: AssetImage("assets/images/mypic2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
