import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view/about/pages/developerPages/widgets/backButton.dart';
import 'package:danisdoc/view/about/pages/developerPages/widgets/colorCover.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget aboutApp(BuildContext context) {
  return Stack(
    children: <Widget>[
      colorCover(),
      Container(
          width: SizeConfig.blockSizeHorizontal * 100,
          height: SizeConfig.blockSizeVertical * 25,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.white30),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(80.0),
              ))),
      backButton(context),
      Container(
        margin: EdgeInsets.only(
            top: SizeConfig.blockSizeVertical * 15,
            left: SizeConfig.blockSizeHorizontal * 15),
        child: Text(
          'About DocExpire',
          style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.safeBlockHorizontal * 7,
              fontWeight: FontWeight.w500),
        ),
      ),
      Container(
        margin: EdgeInsets.only(
            top: SizeConfig.blockSizeVertical * 20,
            left: SizeConfig.blockSizeHorizontal * 16),
        child: Text(
          'Learn more what for is DocExpire, and how to use it',
          style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.safeBlockHorizontal * 3,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.italic),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: SizeConfig.blockSizeVertical * 30,
            ),
            child: Icon(
              FontAwesomeIcons.smile,
              color: Colors.white,
              size: SizeConfig.safeBlockHorizontal * 10,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: SizeConfig.blockSizeVertical * 30,
            ),
            child: Text(
              'About the app',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.safeBlockHorizontal * 7,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
      Container(
        width: SizeConfig.blockSizeHorizontal * 100,
        margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 38,
          left: SizeConfig.blockSizeHorizontal * 5,
          right: SizeConfig.blockSizeHorizontal * 5,
        ),
        child: Text(
          'DocExpire is an application that allows users to control their documents, subscriptions, or any thing with an expiration date.The application does not ask you to accept any conditions, no approval to use some features of your device.Very easy to use, offline first application that will keep all important documents in one place.',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        width: SizeConfig.blockSizeHorizontal * 100,
        margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 56,
          left: SizeConfig.blockSizeHorizontal * 5,
          right: SizeConfig.blockSizeHorizontal * 5,
        ),
        child: Text(
          'The application is free. You can find it on my github profile, it will soon be available on GooglePlay and the AppStore.',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: SizeConfig.blockSizeVertical * 65,
            ),
            child: Icon(
              FontAwesomeIcons.userSecret,
              color: Colors.white,
              size: SizeConfig.safeBlockHorizontal * 10,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: SizeConfig.blockSizeVertical * 65,
            ),
            child: Text(
              'Privacy      ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.safeBlockHorizontal * 7,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
      Container(
        width: SizeConfig.blockSizeHorizontal * 100,
        margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 72,
          left: SizeConfig.blockSizeHorizontal * 5,
          right: SizeConfig.blockSizeHorizontal * 5,
        ),
        child: Text(
          'Our Privacy Policy describes how we handle the information you provide to us when you use our Services.',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        width: SizeConfig.blockSizeHorizontal * 100,
        margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 80,
          left: SizeConfig.blockSizeHorizontal * 5,
          right: SizeConfig.blockSizeHorizontal * 5,
        ),
        child: Text(
          'The application has a local database, which means that the developer has no control over the user data. The user can manage his data himself. If he wants to delete data, documents (restore the app to the factory reset), he can simply delete the cache memory of the application and its date. Or it can simply delete and install the entire application.',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
