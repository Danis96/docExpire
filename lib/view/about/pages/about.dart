import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view/about/pages/developerPages/pages/aboutDeveloper.dart';
import 'package:danisdoc/view/about/pages/termsAndAbout/aboutApp.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          developerPage(context),
         aboutApp(context),
        ],
      ),
    );
  }

}








