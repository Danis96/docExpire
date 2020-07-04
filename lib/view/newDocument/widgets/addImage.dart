

import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget addImage() {
  return Container(
    margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * 40,
        left: SizeConfig.blockSizeHorizontal * 12),
    child: Row(
      children: <Widget>[
        Container(
          child: Icon(
            Icons.add_circle_outline,
            color: Colors.black.withOpacity(0.5),
            size: SizeConfig.safeBlockHorizontal * 10,
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 4),
          child: Text(
            'Add document image',
            style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: SizeConfig.safeBlockHorizontal * 5),
          ),
        )
      ],
    ),
  );
}