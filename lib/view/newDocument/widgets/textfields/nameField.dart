


import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget textFName() {
  return Container(
      height: SizeConfig.blockSizeVertical * 5,
      width: SizeConfig.blockSizeHorizontal * 50,
      margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 18,
          left: SizeConfig.blockSizeHorizontal * 12),
      child: TextField(
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: 'Doc name',
          labelStyle: TextStyle(color: Colors.white.withOpacity(0.5)),
          enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        ),
      ));
}