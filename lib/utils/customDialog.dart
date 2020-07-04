import 'package:danisdoc/utils/constString.dart';
import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view_model/developerViewModel.dart';
import 'package:flutter/material.dart';



class CustomDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;
  final IconData icon;
  final bool isViber, isWA, isEmail;
  final Color color;

  CustomDialog({
    @required this.title,
    @required this.description,
    @required this.buttonText,
    this.image,
    this.icon,
    this.isViber,
    this.isWA,
    this.color,
    this.isEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context, title, description, buttonText, icon, isViber, isWA, isEmail, color),
    );
  }
}

dialogContent(BuildContext context, String title, description, buttonText,
    IconData icon, bool isViber, isWA,isEmail, Color color,) {
  return Stack(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(
          top: Consts.avatarRadius + Consts.padding,
          bottom: Consts.padding,
          left: Consts.padding,
          right: Consts.padding,
        ),
        margin: EdgeInsets.only(top: Consts.avatarRadius),
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(Consts.padding),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: const Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // To make the card compact
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton(
                color: color,
                onPressed: () {
                  if(isWA) {
                    DeveloperViewModel().launchStore(ConstString.appStoreW, ConstString.googlePlayW);
                  } else if(isViber) {
                    DeveloperViewModel().launchStore(ConstString.appStoreV, ConstString.googlePlayV);
                  } else if(isEmail) {
                    DeveloperViewModel().launchStore(ConstString.appStoreGmail, ConstString.googlePlayGmail);
                  }
                },
                child: Text(buttonText, style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
      ),
      Positioned(
        left: Consts.padding,
        right: Consts.padding,
        child: CircleAvatar(
          backgroundColor: color,
          radius: Consts.avatarRadius,
          child: Icon(
            icon,
            size: SizeConfig.safeBlockHorizontal * 20,
          ),
        ),
      ),
    ],
  );
}

class Consts {
  Consts._();
  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}
