


import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget extensionText() {
  return Container(
    margin: EdgeInsets.only(
        left: SizeConfig.blockSizeHorizontal * 15,
        top: SizeConfig.blockSizeVertical * 4),
    child: Text(
      'New document',
      style: TextStyle(
          fontSize: SizeConfig.safeBlockHorizontal * 7,
          fontWeight: FontWeight.bold),
    ),
  );
}