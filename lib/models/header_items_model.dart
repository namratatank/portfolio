

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/globals.dart';
import 'package:portfolio/utils/launch_url.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderItems {
  final String title;
  final VoidCallback? ontap;
  final bool isButton;

  HeaderItems({required this.title, this.ontap, this.isButton = false});

}
List<HeaderItems> headerItems = [
  HeaderItems(
    title: 'ABOUT',
    ontap: () {
      Scrollable.ensureVisible(Globals.aboutKey.currentContext!, curve: Curves.fastOutSlowIn, duration: Duration(seconds: 1));
    },
  ),
  HeaderItems(
    title: 'EXPERIENCE',
    ontap: () {
      Scrollable.ensureVisible(Globals.experienceKey.currentContext!, curve: Curves.fastOutSlowIn, duration: Duration(seconds: 1));
    },
  ),
  HeaderItems(
    title: 'WORK',
    ontap: () {
      Scrollable.ensureVisible(Globals.workKey.currentContext!, curve: Curves.fastOutSlowIn, duration: Duration(seconds: 1));
    },
  ),
  HeaderItems(
    title: 'CONTACT',
    ontap: () {
      Scrollable.ensureVisible(Globals.contactKey.currentContext!, curve: Curves.fastOutSlowIn, duration: Duration(seconds: 1));
    },
  ),
  HeaderItems(
    title: 'RESUME',
    ontap: () {
      LaunchMethod().launchURL("https://raw.githubusercontent.com/namratakacha/portfolio/ac9fcc4722d5e11ccce2474a8e95730b50d5c573/assets/images/resume.pdf");
    },
    isButton: true,
  ),
];
