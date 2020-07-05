import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget titleCont() {
  return Container(
      width: SizeConfig.blockSizeHorizontal * 100,
      height: SizeConfig.blockSizeVertical * 25,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.white30),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
          )));
}
