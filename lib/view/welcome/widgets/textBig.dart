

import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget textBig() {
  return Container(
    margin: EdgeInsets.only(
      top: SizeConfig.blockSizeVertical * 67,
      left: SizeConfig.blockSizeHorizontal * 23,
    ),
    child: RichText(
      text: TextSpan(
        style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 9),
        text: 'Welcome to ',
        children: <TextSpan>[
          TextSpan(
              text: '\nD',
              style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text: 'oc',
              style: TextStyle(fontWeight: FontWeight.normal)),
          TextSpan(
              text: 'E', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(
              text: 'xpire',
              style: TextStyle(fontWeight: FontWeight.normal)),
        ],
      ),
    ),
  );
}