


import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget saveBtn() {
  return Container(
    alignment: Alignment.center,
    width: SizeConfig.blockSizeHorizontal * 100,
    child: Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * 70,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      width: SizeConfig.blockSizeHorizontal * 60,
      child: RaisedButton(
        elevation: 2,
        onPressed: () {},
        child: Text(
          'Save',
          style: TextStyle(color: Colors.white),
        ),
        color: Color.fromRGBO(138, 86, 172, 1.0),
      ),
    ),
  );
}
