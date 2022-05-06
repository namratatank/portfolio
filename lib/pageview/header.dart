import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/models/header_items_model.dart';
import 'package:portfolio/theme/color.dart';
import 'package:portfolio/utils/globals.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_value.dart';
import 'package:responsive_framework/responsive_wrapper.dart';



class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: buildHeader(context),
        ),
        tablet: buildMobileHeader(context),
        mobile: buildMobileHeader(context),
      ),
    );
  }

  buildMobileHeader(BuildContext context){
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 8, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            headerLogo(),
            IconButton(
              onPressed: (){
                Globals.scaffoldKey.currentState!.openEndDrawer();
              },
              icon: Icon(Icons.menu, color: Colors.white, size: 28,),
            ),
          ],
      ),
        ),
      );

  }

  buildHeader(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          headerLogo(),
          headerTabs(context),
        ],
      ),
    );
  }

  headerLogo() {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: (){},
          child: RichText(
            text: TextSpan(
                children:[
                  TextSpan(
                    text: 'N',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: kPrimaryColor),
                  )]
            ),
          ),
        ),
      ),
    );
  }

  headerTabs(BuildContext context) {
    return ResponsiveVisibility(
      visible: false,
      visibleWhen: [
        Condition.largerThan(name: TABLET),
      ],
      child: Row(
        children: headerItems.map((item) => item.isButton ? MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: kDangerColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: item.ontap,
              child: Text(item.title, style: TextStyle(fontSize: 12, color: kNameColor, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ): MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            margin: EdgeInsets.only(right: 30),
            child: GestureDetector(
              onTap: item.ontap,
              child: Text(item.title, style: TextStyle(fontSize: 16, color: kNameColor,),
            ),
          ),
        ),
    )
      ).toList()
    ),
    );
  }
}

