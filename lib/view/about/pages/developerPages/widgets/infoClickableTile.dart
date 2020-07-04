import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view_model/developerViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

class InfoTiles {
  Widget locationTile(String title, subtitle, IconData icon, double topMargin,
      BuildContext context) {
    return ProgressHUD(
      child: Builder(
        builder: (context) => Container(
          width: SizeConfig.safeBlockHorizontal * 100,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white30),
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          margin: EdgeInsets.only(
            top: SizeConfig.blockSizeVertical * topMargin,
            left: SizeConfig.blockSizeHorizontal * 5,
            right: SizeConfig.blockSizeHorizontal * 5,
          ),
          child: ListTile(
            onTap: () => DeveloperViewModel().showLoader(context),
            leading: Icon(
              icon,
              color: Colors.white,
              size: SizeConfig.safeBlockHorizontal * 8,
            ),
            title: Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                )),
            subtitle: Text(subtitle,
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }

  Widget mobileDeveloper(
      String title, subtitle, IconData icon, double topMargin) {
    return Container(
      width: SizeConfig.safeBlockHorizontal * 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white30),
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * topMargin,
        left: SizeConfig.blockSizeHorizontal * 5,
        right: SizeConfig.blockSizeHorizontal * 5,
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
          size: SizeConfig.safeBlockHorizontal * 8,
        ),
        title: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.safeBlockHorizontal * 5,
            )),
        subtitle: Text(subtitle,
            style: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }

  Widget socialMedia(String title, subtitle, IconData icon, double topMargin, BuildContext context) {
    return Container(
      width: SizeConfig.safeBlockHorizontal * 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white30),
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * topMargin,
        left: SizeConfig.blockSizeHorizontal * 5,
        right: SizeConfig.blockSizeHorizontal * 5,
      ),
      child: ListTile(
        onTap: () => DeveloperViewModel().showSocialModal(context),
        leading: Icon(
          icon,
          color: Colors.white,
          size: SizeConfig.safeBlockHorizontal * 8,
        ),
        title: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.safeBlockHorizontal * 5,
            )),
        subtitle: Text(subtitle,
            style: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }

  Widget termsAndService(String title, subtitle, IconData icon, double topMargin, BuildContext context) {
    return Container(
      width: SizeConfig.safeBlockHorizontal * 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white30),
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      margin: EdgeInsets.only(
        top: SizeConfig.blockSizeVertical * topMargin,
        left: SizeConfig.blockSizeHorizontal * 5,
        right: SizeConfig.blockSizeHorizontal * 5,
      ),
      child: ListTile(
        /// on tap go to down page
        leading: Icon(
          icon,
          color: Colors.white,
          size: SizeConfig.safeBlockHorizontal * 8,
        ),
        title: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.safeBlockHorizontal * 5,
            )),
        subtitle: Text(subtitle,
            style: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }
}
