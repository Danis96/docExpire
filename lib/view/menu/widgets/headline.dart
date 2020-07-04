

import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget headline() {
  return Container(
    margin: EdgeInsets.only(
        left: SizeConfig.blockSizeHorizontal * 15,
        top: SizeConfig.blockSizeVertical * 4),
    child: Text(
      'DocExpire',
      style: TextStyle(
          fontSize: SizeConfig.safeBlockHorizontal * 7,
          fontWeight: FontWeight.bold),
    ),
  );
}