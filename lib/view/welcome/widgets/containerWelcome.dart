import 'package:danisdoc/view/welcome/widgets/bigCont.dart';
import 'package:danisdoc/view/welcome/widgets/smallCont.dart';
import 'package:danisdoc/view/welcome/widgets/textBig.dart';
import 'package:danisdoc/view/welcome/widgets/textSmall.dart';
import 'package:flutter/material.dart';

Widget containerWelcome(BuildContext context) {
  return Scaffold(
   backgroundColor: Colors.transparent,
    body: Stack(
      children: <Widget>[
        bigContainer(),
        smallCont(context),
        textBig(),
        textSmall(),
      ],
    ),
  );
}