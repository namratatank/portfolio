import 'package:flutter/material.dart';
import 'package:portfolio/commons/titles.dart';

class BuildAppView extends StatelessWidget {
  const BuildAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          buildTitle(
            context: context,
            number: "03.  ",
            title: "Some Things I've Built",
          ),
          //buildDetail(context),
        ],
      ),
    );
  }
}
