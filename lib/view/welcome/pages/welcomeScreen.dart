import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view/welcome/widgets/containerWelcome.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/welcome.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        containerWelcome(context),
      ]),
    );
  }
}
