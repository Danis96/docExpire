import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view_model/developerViewModel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



Widget socialModal(BuildContext context) {
  return Container(
      height: SizeConfig.blockSizeVertical * 30,
      color: Colors.white30,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'Contact me via social media',
                style: TextStyle(fontSize: SizeConfig.safeBlockHorizontal * 5,
                fontWeight: FontWeight.w500,
                ),
              ),
              margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 3),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                    color: Color.fromRGBO(193, 53, 132, 1.0),
                    iconSize: SizeConfig.safeBlockHorizontal * 14,
                    icon: Icon(FontAwesomeIcons.instagram),
                    onPressed: () => DeveloperViewModel().launchInstagram()),
                IconButton(
                    color: Color.fromRGBO(37,211, 102,1.0),
                    iconSize: SizeConfig.safeBlockHorizontal * 14,
                    icon: Icon(FontAwesomeIcons.whatsapp),
                    onPressed: () =>
                        DeveloperViewModel().launchWhatsApp(context))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  color: Color.fromRGBO(102, 92, 172,1.0),
                    iconSize: SizeConfig.safeBlockHorizontal * 14,
                    icon: Icon(FontAwesomeIcons.viber),
                    onPressed: () => DeveloperViewModel().launchViber(context)),
                IconButton(
                  color: Color.fromRGBO(212, 70, 56,1.0),
                    iconSize: SizeConfig.safeBlockHorizontal * 14,
                    icon: Icon(FontAwesomeIcons.envelope),
                    onPressed: () => DeveloperViewModel().launchEmail(context))
              ],
            ),
          ]));
}
