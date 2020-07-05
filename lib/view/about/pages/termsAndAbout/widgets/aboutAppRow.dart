

import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget aboutRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 30,
        ),
        child: Icon(
          FontAwesomeIcons.smile,
          color: Colors.white,
          size: SizeConfig.safeBlockHorizontal * 10,
        ),
      ),
      Container(
        margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 30,
        ),
        child: Text(
          'About the app',
          style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.safeBlockHorizontal * 7,
              fontWeight: FontWeight.w500),
        ),
      )
    ],
  );
}