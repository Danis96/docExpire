

import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget textSmall() {
  return Container(
    margin: EdgeInsets.only(
      top: SizeConfig.blockSizeVertical * 84,
      left: SizeConfig.blockSizeHorizontal * 57,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('GET STARTED', style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 4, color: Colors.white),),
        Icon(Icons.arrow_forward, color: Colors.white, size: SizeConfig.safeBlockHorizontal * 5,)
      ],
    ),
  );
}