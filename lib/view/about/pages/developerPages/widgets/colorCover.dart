import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget colorCover() {
  return Container(
    height: SizeConfig.blockSizeVertical * 100,
    width: SizeConfig.blockSizeHorizontal * 100,
    decoration: BoxDecoration(
      color: Color.fromRGBO(53, 38, 65, 1.0),
    ),
  );
}
