
import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view_model/developerViewModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// this needs to be url launcher to my github profile
Widget githubProfile() {
  return GestureDetector(
    onTap: () => DeveloperViewModel().launchGithub(),
    child: Container(
      margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 52,
          left: SizeConfig.blockSizeHorizontal * 5),
      height: SizeConfig.blockSizeVertical * 5,
      width: SizeConfig.blockSizeHorizontal * 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50)),
          color: Colors.white.withOpacity(0.2)),
      child: Center(
        child: Icon(
          FontAwesomeIcons.github,
          size: SizeConfig.safeBlockHorizontal * 10,
          color: Colors.white,
        ),
      ),
    ),
  );
}