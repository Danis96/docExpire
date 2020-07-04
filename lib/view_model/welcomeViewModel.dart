import 'package:danisdoc/interfaces/welcomeInterface.dart';
import 'package:danisdoc/utils/customScreenAnimation.dart';
import 'package:danisdoc/view/menu/pages/menu.dart';
import 'package:flutter/material.dart';

class WelcomeViewModel implements WelcomeInterface {
  @override
  navigateToMenu(BuildContext context) {
    Navigator.of(context).push(SlideAnimationTeen(widget:Menu()));
  }

}
