import 'package:flutter/material.dart';
import 'package:portfolio/commons/titles.dart';
import 'package:portfolio/models/project_detail_model.dart';
import 'package:portfolio/theme/color.dart';
import 'package:portfolio/utils/launch_url.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
        padding: const EdgeInsets.only(left: 10, right: 20),
        child: Column(
          children: projectItems
              .map<Widget>((e) => projectDetail(context, e))
              .toList(),
        ));
  }

  projectDetail(BuildContext context, ProjectDetailModel item) {
    return Container(
      height: ScreenHelper.isDesktop(context)
          ? MediaQuery.of(context).size.height * 0.9
          : MediaQuery.of(context).size.width * 0.8,
      width: ScreenHelper.isDesktop(context)
          ? MediaQuery.of(context).size.width - 100
          : MediaQuery.of(context).size.width * 0.85,
      child: ScreenHelper.isDesktop(context)
          ? Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.02,
                  left: 30.0,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        barrierColor: Colors.black87,
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            contentPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            content: Container(
                              child: InteractiveViewer(
                                panEnabled: true,
                                scaleEnabled: true,
                                minScale: 0.5,
                                maxScale: 2,
                                child: Image(
                                  image: AssetImage(item.assetName),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.6,
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Image.asset(
                        item.assetName,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 6,
                  right: 20.0,
                  child: projectDecs(context, item),
                ),
                Positioned(
                  top: 15.0,
                  right: 20.0,
                  child: Wrap(
                    alignment: WrapAlignment.end,
                    children: [
                      Text(
                        item.title,
                        style: TextStyle(
                            color: kCaptionColor,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.36,
                  right: 20.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        item.type1 ?? "",
                        style: TextStyle(color: kCaptionColor, fontSize: 14),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        item.type2 ?? "",
                        style: TextStyle(color: kCaptionColor, fontSize: 14),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        item.type3 ?? "",
                        style: TextStyle(color: kCaptionColor, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height * 0.39,
                    right: 20.0,
                    child: GestureDetector(
                        onTap: () {
                          LaunchMethod().launchURL(item.url ?? "");
                        },
                        child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Image.asset(
                              "assets/images/github.png",
                              height: 30,
                              width: 30,
                            )))),
              ],
            )
          : Container(
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.width * 0.5,
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          barrierColor: Colors.black87,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              content: Container(
                                child: InteractiveViewer(
                                  panEnabled: true,
                                  scaleEnabled: true,
                                  minScale: 0.5,
                                  maxScale: 2,
                                  child: Image(
                                    image: AssetImage(item.assetName),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Image.asset(
                        item.assetName,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.02,
                    top: MediaQuery.of(context).size.width * 0.48,
                    child: projectDecs(context, item),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.width * 0.1,
                    right: 25.0,
                    child: Wrap(
                      alignment: WrapAlignment.end,
                      children: [
                        Text(
                          item.title,
                          style: TextStyle(
                              color: kCaptionColor,
                              fontSize:
                                  ScreenHelper.isMobile(context) ? 24 : 28,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
    );
  }

  projectDecs(BuildContext context, ProjectDetailModel item) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        ScreenHelper.isDesktop(context)
            ? Condition.largerThan(name: TABLET)
            : Condition.smallerThan(name: DESKTOP)
      ],
      child: Container(
        alignment: Alignment.center,
        height: ScreenHelper.isDesktop(context)
            ? MediaQuery.of(context).size.height * 0.18
            : MediaQuery.of(context).size.width * 0.15,
        width: ScreenHelper.isDesktop(context)
            ? MediaQuery.of(context).size.width * 0.30
            : MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: kPrDetailColor,
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            item.detail,
            style: TextStyle(
                fontSize: ScreenHelper.isMobile(context) ? 14 : 16,
                color: kCaptionColorOp),
          ),
        ),
      ),
    );
  }
}
