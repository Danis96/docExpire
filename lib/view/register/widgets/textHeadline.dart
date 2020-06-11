import 'package:doce/utils/colors.dart';
import 'package:doce/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget textHeadline(String headline) {
  return Container(
    child: Text(
      headline,
      style: TextStyle(
          color: MyColors().white,
          fontSize: SizeConfig.safeBlockHorizontal * 6.3,
          fontWeight: FontWeight.w500),
    ),
  );
}