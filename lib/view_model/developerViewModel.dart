import 'dart:io';

import 'package:danisdoc/interfaces/developerPageInterface.dart';
import 'package:danisdoc/utils/constString.dart';
import 'package:danisdoc/utils/customDialog.dart';
import 'package:danisdoc/view/about/pages/developerPages/widgets/socialModal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class DeveloperViewModel implements DeveloperPageInterface {
  @override
  Future<dynamic> launchGoogleMaps() async {
    if (await canLaunch(ConstString.adress)) {
      await launch(ConstString.adress);
    } else {
      print('Could not launch url: ' + ConstString.adress);
    }
  }

  @override
  showLoader(BuildContext context) {
    final progress = ProgressHUD.of(context);
    progress.show();
    Future.delayed(Duration(seconds: 1), () {
      progress.dismiss();
      DeveloperViewModel().launchGoogleMaps();
    });
  }

  @override
  showSocialModal(BuildContext context) {
    showMaterialModalBottomSheet(
      context: context,
      builder: (context, scrollController) => socialModal(context),
    );
  }

  @override
  Future launchInstagram() async {
    const _url = 'https://www.instagram.com/danis.dev/';
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      print('Cannot open: ' + _url);
    }
  }

  void launchWhatsApp(BuildContext context) async {
    const phoneNumber = '+38762748065';
    const message = 'Hi Danis, let me ask you a question';
    String url() {
      if (Platform.isIOS) {
        return "whatsapp://wa.me/$phoneNumber/?text=${Uri.parse(message)}";
      } else {
        return "whatsapp://send?phone=$phoneNumber&text=${Uri.parse(message)}";
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => CustomDialog(
          title: "Oooops",
          description:
              "You don't have WhatsApp installed on your device.\nClick on the button to install it.",
          buttonText: "Install WhatsApp",
          icon: FontAwesomeIcons.whatsapp,
          isWA: true,
          isViber: false,
          isEmail: false,
          color: Color.fromRGBO(37, 211, 102, 1.0),
        ),
      );
    }
  }

  @override
  Future launchStore(String appStoreW, googlePlayW) async {
    if (await canLaunch(Platform.isIOS ? appStoreW : googlePlayW)) {
      await launch(Platform.isIOS ? appStoreW : googlePlayW);
    } else {
      print('Cannot launch store');
    }
  }

  @override
  void launchViber(BuildContext context) async {
    var viberUrl = 'viber://contact?number=%2B38762748065';
    if (await canLaunch(viberUrl)) {
      await launch(viberUrl);
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => CustomDialog(
          title: "Oooops",
          description:
              "You don't have Viber installed on your device.\nClick on the button to install it.",
          buttonText: "Install Viber",
          icon: FontAwesomeIcons.viber,
          isViber: true,
          isWA: false,
          isEmail: false,
          color: Color.fromRGBO(102, 92, 172, 1.0),
        ),
      );
    }
  }

  @override
  void launchEmail(BuildContext context) async {
    String email = 'danis.preldzic@gmail.com';
    String subject = 'Contacting developer';
    String body = 'Hi, Danis\n\n';
    if (await canLaunch("mailto:$email")) {
      await launch("mailto:$email?subject=$subject&body=$body");
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) => CustomDialog(
          title: "Oooops",
          description:
              "You don't have Gmail installed on your device.\nClick on the button to install it.",
          buttonText: "Install Gmail",
          icon: FontAwesomeIcons.envelope,
          isViber: false,
          isWA: false,
          isEmail: true,
          color: Color.fromRGBO(212, 70, 56, 1.0),
        ),
      );
    }
  }

  @override
  Future launchGithub() async {
    if (await canLaunch(ConstString.githubLink)) {
      await launch(ConstString.githubLink);
    } else {
      print('No launching github');
    }
  }

  @override
  goToTerms(PageController controller) {
    controller.animateToPage(1,
        duration: Duration(seconds: 1), curve: Curves.easeInOut);
  }
}
