

import 'package:doce/utils/colors.dart';
import 'package:doce/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget textDesc(String description) {
  return Container(
    margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
    child: Text(
      description,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: MyColors().white,
        fontSize: SizeConfig.safeBlockHorizontal * 4,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}