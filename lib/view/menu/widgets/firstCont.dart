import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view/menu/widgets/textOnMainCont.dart';
import 'package:danisdoc/view_model/menuViewModel.dart';
import 'package:flutter/material.dart';

Widget firstContainer(BuildContext context) {
  return GestureDetector(
    onTap: () => MenuViewModel().goToNewDocument(context),
    child: Container(
        margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
        width: SizeConfig.blockSizeHorizontal * 100,
        height: SizeConfig.blockSizeVertical * 30,
        decoration: BoxDecoration(
            color: Color.fromRGBO(212, 127, 166, 1.0),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80.0),
            )),
        child: textOnMainCont(
            10.0,
            'Add new\ndocument',
            'Add new expirable document',
            Icon(
              Icons.add,
              color: Colors.white.withOpacity(0.1),
              size: SizeConfig.safeBlockHorizontal * 20,
            ))),
  );
}
