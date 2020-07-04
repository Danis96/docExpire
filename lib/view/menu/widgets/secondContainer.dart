import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view/menu/widgets/textOnMainCont.dart';
import 'package:danisdoc/view_model/menuViewModel.dart';
import 'package:flutter/material.dart';

Widget secondContainer(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 26),
    width: SizeConfig.blockSizeHorizontal * 100,
    height: SizeConfig.blockSizeVertical * 30,
    decoration: BoxDecoration(
        color: Color.fromRGBO(138, 86, 172, 1.0),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(80.0),
        )),
    child: textOnMainCont(
        12.0,
        'Document',
        'Check documents that you  \nentered',
        Icon(
          Icons.import_contacts,
          color: Colors.white.withOpacity(0.1),
          size: SizeConfig.safeBlockHorizontal * 20,
        )),
  );
}
