import 'package:flutter/cupertino.dart';

class HeaderItems {
  final String title;
  final VoidCallback? ontap;
  final bool isButton;

  HeaderItems({required this.title, this.ontap, this.isButton = false});
}

List<HeaderItems> headerItems = [
  HeaderItems(title: 'ABOUT', ontap: (){}),
  HeaderItems(title: 'EXPERIENCE', ontap: (){}),
  HeaderItems(title: 'WORK', ontap: (){}),
  HeaderItems(title: 'CONTACT', ontap: (){}),
  HeaderItems(title: 'RESUME', ontap: (){}, isButton: true),
];