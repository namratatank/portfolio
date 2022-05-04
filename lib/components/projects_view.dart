import 'package:flutter/material.dart';
import 'package:portfolio/commons/titles.dart';
import 'package:portfolio/utils/screen_helper.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({Key? key}) : super(key: key);

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
          SizedBox(height: 80),
          buildDetail(context),
        ],
      ),
    );
  }

  buildDetail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: ScreenHelper.isDesktop(context) ? MediaQuery.of(context).size.width*0.5 : MediaQuery.of(context).size.width*0.85,
                height: ScreenHelper.isDesktop(context) ? MediaQuery.of(context).size.width*0.3 : MediaQuery.of(context).size.width*0.5,
                child: Image.asset("assets/images/My Nursery.png", fit: BoxFit.fill,),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.width*0.1),
          Row(
            children: [
              Container(
                width: ScreenHelper.isDesktop(context) ? MediaQuery.of(context).size.width*0.5 : MediaQuery.of(context).size.width*0.85,
                height: ScreenHelper.isDesktop(context) ? MediaQuery.of(context).size.width*0.3 : MediaQuery.of(context).size.width*0.5,
                child: Image.asset("assets/images/ODE.png",fit: BoxFit.fill,),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.width*0.1),
          Row(
            children: [
              Container(
                width: ScreenHelper.isDesktop(context) ? MediaQuery.of(context).size.width*0.5 : MediaQuery.of(context).size.width*0.85,
                height: ScreenHelper.isDesktop(context) ? MediaQuery.of(context).size.width*0.3 : MediaQuery.of(context).size.width*0.5,
                child: Image.asset("assets/images/Ask_nano.png",fit: BoxFit.fill,),
              ),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
