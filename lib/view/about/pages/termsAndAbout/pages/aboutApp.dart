import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view/about/pages/developerPages/widgets/backButton.dart';
import 'package:danisdoc/view/about/pages/developerPages/widgets/colorCover.dart';
import 'package:danisdoc/view/about/pages/termsAndAbout/widgets/aboutAppRow.dart';
import 'package:danisdoc/view/about/pages/termsAndAbout/widgets/aboutText.dart';
import 'package:danisdoc/view/about/pages/termsAndAbout/widgets/privacyRow.dart';
import 'package:danisdoc/view/about/pages/termsAndAbout/widgets/privacyText.dart';
import 'package:danisdoc/view/about/pages/termsAndAbout/widgets/titleContainer.dart';
import 'package:danisdoc/view/about/pages/termsAndAbout/widgets/titleDesc.dart';
import 'package:danisdoc/view/about/pages/termsAndAbout/widgets/titleWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget aboutApp(BuildContext context) {
  return Stack(
    children: <Widget>[
      colorCover(),
      titleCont(),
      backButton(context),
      titleWidget(),
      titleDesc(),
      aboutRow(),
      AboutText().aboutText1(),
      AboutText().aboutText2(),
      privacyRow(),
      PrivacyText().privacyText1(),
      PrivacyText().privacyText2(),
    ],
  );
}
