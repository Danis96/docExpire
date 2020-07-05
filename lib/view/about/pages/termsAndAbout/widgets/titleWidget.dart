

import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget titleWidget() {
  return Container(
    margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * 15,
        left: SizeConfig.blockSizeHorizontal * 15),
    child: Text(
      'About DocExpire',
      style: TextStyle(
          color: Colors.white,
          fontSize: SizeConfig.safeBlockHorizontal * 7,
          fontWeight: FontWeight.w500),
    ),
  );
}