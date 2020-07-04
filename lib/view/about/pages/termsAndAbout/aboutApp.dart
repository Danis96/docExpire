import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view/about/pages/developerPages/widgets/colorCover.dart';
import 'package:flutter/material.dart';

Widget aboutApp(BuildContext context) {
  return Stack(
    children: <Widget>[
      colorCover(),
      Container(
          margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
          width: SizeConfig.blockSizeHorizontal * 100,
          height: SizeConfig.blockSizeVertical * 30,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.white30),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80.0),
              ))),
    ],
  );
}
