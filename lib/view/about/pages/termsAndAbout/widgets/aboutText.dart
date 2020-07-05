

import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';

class AboutText {
  Widget aboutText1() {
     return Container(
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
     );
  }
  Widget aboutText2() {
    return Container(
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
    );
  }

}