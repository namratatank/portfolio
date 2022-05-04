import 'package:flutter/cupertino.dart';

class WorkModelItems {
  final String title;
  final String detail;

  WorkModelItems({required this.title, required this.detail});
}

List<WorkModelItems> workItems = [
  WorkModelItems(
      title: 'IndiaNIC Infotech Ltd, Ahmedabad',
      detail:
          "I am currently working as a Flutter Developer at indiaNic Infotech Ltd, Ahmedabad"
          "\nFeb 2022 - present"),
  WorkModelItems(
      title: 'ILDC - IndiaNIC Infotech Ltd, Ahmedabad',
      detail:
      "The complete 2021 Flutter + Dart at ILDC training center of indiaNic Infotech Ltd, Ahmedabad,"
          "\ncovering all the fundamental concepts for Flutter development"
          "\nAug 2021 - Nov 2021"),
  WorkModelItems(
      title: 'Oxford School Of Science, Amreli',
      detail:
      "I have worked as Computer Teacher in std. 6 to 8 at Oxford School Of Science, Amreli"
          "\nJune 2018 - Sep 2020"),
  WorkModelItems(
      title: "Smt. S. S. Ajmera Girls' High School, Amreli",
      detail:
      "I have worked as Computer Teacher in std. 9 & 10 at Ajmera Girls' High School, Amreli"
          "\nJune 2014 - April 2017"),
];
