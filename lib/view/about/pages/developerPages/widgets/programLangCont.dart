
import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget progLangRow() {
  return Container(
    margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 48),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          child: Text(
            'REACT NATIVE',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: SizeConfig.safeBlockHorizontal * 4,
                color: Colors.white.withOpacity(0.5)),
          ),
        ),
        Container(
          child: Text(
            'FLUTTER',
            style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 4,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.5)),
          ),
        ),
        Container(
          child: Text(
            'ANDROID/IOS',
            style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 4,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.5)),
          ),
        ),
      ],
    ),
  );
}