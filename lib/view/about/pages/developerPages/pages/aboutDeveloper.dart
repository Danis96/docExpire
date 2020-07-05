import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view/about/pages/developerPages/widgets/backButton.dart';
import 'package:danisdoc/view/about/pages/developerPages/widgets/colorCover.dart';
import 'package:danisdoc/view/about/pages/developerPages/widgets/developerImage.dart';
import 'package:danisdoc/view/about/pages/developerPages/widgets/githubCont.dart';
import 'package:danisdoc/view/about/pages/developerPages/widgets/infoClickableTile.dart';
import 'package:danisdoc/view/about/pages/developerPages/widgets/programLangCont.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget developerPage(BuildContext context, PageController controller) {
  return Stack(
    children: <Widget>[
      colorCover(),
      Container(
        height: SizeConfig.blockSizeVertical * 100,
        width: SizeConfig.blockSizeHorizontal * 100,
        margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 54),
        child: imageDeveloper(),
      ),
      Container(
        height: SizeConfig.blockSizeVertical * 100,
        width: SizeConfig.blockSizeHorizontal * 100,
        decoration: BoxDecoration(
          color: Color.fromRGBO(53, 38, 65, 0.6),
        ),
      ),
      backButton(context),
      progLangRow(),
      githubProfile(),
      InfoTiles().locationTile(
          'See location', 'Checkout where am I', Icons.location_on, 60, context),
      InfoTiles().mobileDeveloper('Mobile Developer', 'Flutter app development',
          Icons.phone_android, 70),
      InfoTiles().socialMedia('Social media', 'Find me on social media',
          FontAwesomeIcons.globe, 80, context),
      InfoTiles().termsAndService('Terms & Privacy', 'Read the terms, meet the app and me',
          FontAwesomeIcons.bookOpen, 90, context, controller),
    ],
  );
}
