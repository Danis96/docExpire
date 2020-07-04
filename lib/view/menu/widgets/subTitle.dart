

import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget subTitle() {
  return  Container(
    margin: EdgeInsets.only(
        left: SizeConfig.blockSizeHorizontal * 15,
        top: SizeConfig.blockSizeVertical * 8),
    child: Text(
      'Welcome to Main Menu',
      style: TextStyle(
        fontSize: SizeConfig.safeBlockHorizontal * 3.5,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.3),
      ),
    ),
  );
}