import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

Widget textOnMainCont(double topSize, String title, desc, Icon icon) {
  return Container(
    margin: EdgeInsets.only(
        left: SizeConfig.blockSizeHorizontal * 10,
        top: SizeConfig.blockSizeVertical * topSize),
    child: Row(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text(
                'DocExpire',
                style: TextStyle(
                    color: Colors.white.withOpacity(0.3),
                    fontSize: SizeConfig.safeBlockHorizontal * 3),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockSizeHorizontal * 1),
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.safeBlockHorizontal * 6,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 3),
              child: Text(
                desc,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.3),
                    fontSize: SizeConfig.safeBlockHorizontal * 4),
              ),
            )
          ],
        ),
        Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockSizeVertical * 5,
                    top: SizeConfig.blockSizeVertical * 5),
                child: icon),
          ],
        ),
      ],
    ),
  );
}
