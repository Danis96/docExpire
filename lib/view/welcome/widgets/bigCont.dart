import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget bigContainer() {
  return Container(
    margin: EdgeInsets.only(
      top: SizeConfig.blockSizeVertical * 60,
      left: SizeConfig.blockSizeHorizontal * 10,
    ),
    width: SizeConfig.blockSizeHorizontal * 90,
    height: SizeConfig.blockSizeVertical * 25,
    decoration: BoxDecoration(
        color: Color.fromRGBO(53, 38, 65, 1.0),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80.0), topLeft: Radius.circular(10.0))),
  );
}
