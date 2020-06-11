

import 'package:doce/utils/size_config.dart';
import 'package:doce/view/register/widgets/textDesc.dart';
import 'package:doce/view/register/widgets/textHeadline.dart';
import 'package:flutter/material.dart';

Widget headlineText(String headline, description) {
  return Container(
    margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 12),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        textHeadline(headline),
        textDesc(description),
      ],
    ),
  );
}