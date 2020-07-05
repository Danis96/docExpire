

import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget backButton(BuildContext context) {
 return Container(
    margin: EdgeInsets.only(
      top: SizeConfig.blockSizeVertical * 5,
    ),
    child: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        color: Colors.white,
        onPressed: () => Navigator.of(context).pop()),
  );
}