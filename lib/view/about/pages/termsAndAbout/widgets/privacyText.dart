import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

class PrivacyText {
  Widget privacyText1() {
    return Container(
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
    );
  }

  Widget privacyText2() {
    return Container(
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
    );
  }
}
