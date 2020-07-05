

import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget titleDesc() {
  return Container(
    margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * 20,
        left: SizeConfig.blockSizeHorizontal * 16),
    child: Text(
      'Learn more what for is DocExpire, and how to use it',
      style: TextStyle(
          color: Colors.white,
          fontSize: SizeConfig.safeBlockHorizontal * 3,
          fontWeight: FontWeight.w200,
          fontStyle: FontStyle.italic),
    ),
  );
}
