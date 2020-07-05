import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view/about/pages/developerPages/pages/aboutDeveloper.dart';
import 'package:danisdoc/view/about/pages/termsAndAbout/pages/aboutApp.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          developerPage(context, _pageController),
         aboutApp(context),
        ],
      ),
    );
  }
}








