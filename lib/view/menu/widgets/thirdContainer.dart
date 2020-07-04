import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view/menu/widgets/textOnMainCont.dart';
import 'package:danisdoc/view_model/menuViewModel.dart';
import 'package:flutter/material.dart';

Widget thirdContainer(BuildContext context) {
  return GestureDetector(
    onTap: () => MenuViewModel().goToInfo(context),
    child: Container(
      margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 48),
      width: SizeConfig.blockSizeHorizontal * 100,
      height: SizeConfig.blockSizeVertical * 30,
      decoration: BoxDecoration(
          color: Color.fromRGBO(36, 19, 50, 1.0),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(80.0),
          )),
      child: textOnMainCont(10.0, 'About app and\n developer',
          'Meet the app and developer', Icon(Icons.info_outline, color: Colors.white.withOpacity(0.1),
            size: SizeConfig.safeBlockHorizontal * 20,)),
    ),
  );
}
