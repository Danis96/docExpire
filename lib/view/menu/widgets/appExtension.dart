

import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget appExtension() {
   return  Container(
     width: SizeConfig.blockSizeHorizontal * 100,
     height: SizeConfig.blockSizeVertical * 12,
     decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.only(
           bottomLeft: Radius.circular(80.0),
         )),
   );
}