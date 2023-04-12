
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/header_items_model.dart';
import 'package:portfolio/pageview/about_view.dart';
import 'package:portfolio/pageview/header.dart';
import 'package:portfolio/pageview/intro_view.dart';
import 'package:portfolio/pageview/projects_view.dart';
import 'package:portfolio/pageview/whats_next_view.dart';
import 'package:portfolio/pageview/work_view.dart';
import 'package:portfolio/utils/launch_url.dart';
import 'package:portfolio/theme/color.dart';
import 'package:portfolio/utils/globals.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_value.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Navigator.maybePop(context);
    return Scaffold(
      key: Globals.scaffoldKey,
      endDrawer: drawerView(),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Header(),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(5),
                        child: socialOptionsWeb(context)),
                    Expanded(
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context)
                            .copyWith(scrollbars: false),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IntroView(),
                              Container(
                                  key: Globals.aboutKey, child: AboutView()),
                              SizedBox(height: 100),
                              Container(
                                  key: Globals.experienceKey,
                                  child: WorkView()),
                              SizedBox(height: 100),
                              Container(
                                  key: Globals.workKey, child: ProjectsView()),
                              Container(
                                  key: Globals.contactKey,
                                  child: WhatsNextView()),
                              socialOptionsMobile(context),
                              SizedBox(height: 60),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  "Designed & Built by Namrata Tank 💙 Flutter",
                                  style: TextStyle(color: kCaptionColorOp),
                                ),
                              ),
                              SizedBox(height: 50),
                            ],
                          ),
                        ),
                      ),
                    ),
                    mailIdSideView(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  socialOptionsWeb(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: TABLET),
      ],
      child: Container(
        width: MediaQuery.of(context).size.width * 0.08,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Spacer(),
            buildSocialIcon(
              iconImage: "assets/images/gmail.png",
              onTap: () {
                LaunchMethod().launchEmail();
              },
            ),
            SizedBox(height: 30.0),
            buildSocialIcon(
              iconImage: "assets/images/github.png",
              onTap: () {
                LaunchMethod().launchURL(
                    "https://github.com/namratatank?tab=repositories");
              },
            ),
            SizedBox(height: 30.0),
            buildSocialIcon(
              iconImage: "assets/images/linkedin.png",
              onTap: () {
                LaunchMethod().launchURL(
                    "https://www.linkedin.com/in/namrata-tank-62555b208/");
              },
            ),
            SizedBox(height: 30.0),
            buildSocialIcon(
              iconImage: "assets/images/call.png",
              onTap: () {
                LaunchMethod().launchCaller();
              },
            ),
            SizedBox(height: 30.0),
            buildSocialIcon(
              iconImage: "assets/images/message.png",
              onTap: () {
                LaunchMethod().launchMessenger();
              },
            ),
            SizedBox(height: 30.0),
            Container(
              color: kCaptionColorOp,
              width: 1,
              height: 150,
            )
          ],
        ),
      ),
    );
  }

  socialOptionsMobile(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.smallerThan(name: DESKTOP),
      ],
      child: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildSocialIcon(
              iconImage: "assets/images/gmail.png",
              onTap: () {
                LaunchMethod().launchEmail();
              },
            ),
            buildSocialIcon(
              iconImage: "assets/images/github.png",
              onTap: () {
                LaunchMethod().launchURL(
                    "https://github.com/namratatank?tab=repositories");
              },
            ),
            buildSocialIcon(
              iconImage: "assets/images/linkedin.png",
              onTap: () {
                LaunchMethod().launchURL(
                    "https://www.linkedin.com/in/namrata-tank-62555b208/");
              },
            ),
            buildSocialIcon(
              iconImage: "assets/images/call.png",
              onTap: () {
                LaunchMethod().launchCaller();
              },
            ),
            buildSocialIcon(
              iconImage: "assets/images/message.png",
              onTap: () {
                LaunchMethod().launchMessenger();
              },
            ),
          ],
        ),
      ),
    );
  }

  mailIdSideView(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: TABLET),
      ],
      child: Container(
        width: MediaQuery.of(context).size.width * 0.08,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            children: [
              Spacer(),
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "tanknamrata.tn@gmail.com",
                  style: TextStyle(
                      color: kCaptionColorOp, fontSize: 14, letterSpacing: 3),
                ),
              ),
              SizedBox(height: 10),
              Container(
                color: kCaptionColorOp,
                width: 1,
                height: 150,
              )
            ],
          ),
        ),
      ),
    );
  }

  drawerView() {
    return Container(
      color: kPrimaryColor,
      child: Drawer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: ListView.separated(
                itemBuilder: (context, index) => headerItems[index].isButton
                    ? Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: kDangerColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: TextButton(
                            onPressed: headerItems[index].ontap,
                            child: Text(
                              headerItems[index].title,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    : ListTile(
                        title: Text(
                          headerItems[index].title,
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                          if (headerItems[index].ontap != null) {
                            headerItems[index].ontap!();
                          }
                        },
                      ),
                separatorBuilder: (context, index) => SizedBox(height: 20),
                itemCount: headerItems.length),
          ),
        ),
      ),
    );
  }
}

buildSocialIcon({
  required String iconImage,
  required GestureTapCallback onTap,
}) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: onTap,
      child: Image(
        width: 23,
        height: 23,
        image: AssetImage(iconImage),
        fit: BoxFit.cover,
      ),
    ),
  );
}
