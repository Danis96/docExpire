

import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view_model/welcomeViewModel.dart';
import 'package:flutter/material.dart';


Widget smallCont(BuildContext context) {
  return   GestureDetector(
    onTap: () => WelcomeViewModel().navigateToMenu(context),
    child: Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * 80,
        left: SizeConfig.blockSizeHorizontal * 50,
      ),
      width: SizeConfig.blockSizeHorizontal * 50,
      height: SizeConfig.blockSizeVertical * 10,
      decoration: BoxDecoration(
          color: Color.fromRGBO(53, 38, 65, 1.0),
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
              topLeft: Radius.circular(50.0))),
    ),
  );
}