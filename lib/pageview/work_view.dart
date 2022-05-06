import 'package:flutter/material.dart';
import 'package:portfolio/commons/titles.dart';
import 'package:portfolio/models/work_model.dart';
import 'package:portfolio/theme/color.dart';

class WorkView extends StatelessWidget {
  const WorkView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          buildTitle(
            context: context,
            number: "02.  ",
            title: "Where I've Worked",
          ),
          buildDetail(context),
        ],
      ),
    );
  }

  buildDetail(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 30, right: 20),
      child: Column(
        children:
          workItems.map<Widget>((item) => buildWorkView(item)).toList()
        
      ),
    );
  }

  buildWorkView(WorkModelItems item) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Row(
              children: [
                Icon(
                  Icons.album,
                  color: kPrimaryColor,
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Text(
                    item.title,
                    style: TextStyle(
                        color: kNameColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(item.detail, style: TextStyle(color: kCaptionColorOp, fontSize: 16),),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
