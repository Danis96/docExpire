


import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget nameExpireCont() {
  return Container(
      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
      width: SizeConfig.blockSizeHorizontal * 100,
      height: SizeConfig.blockSizeVertical * 32,
      decoration: BoxDecoration(
          color: Color.fromRGBO(36, 19, 50, 1.0),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
          )));
}
