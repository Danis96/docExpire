

import 'package:flutter/cupertino.dart';

abstract class DeveloperPageInterface {
  Future<dynamic> launchGoogleMaps();
  showLoader(BuildContext context);
  showSocialModal(BuildContext context);
  Future<dynamic> launchInstagram();
  void launchWhatsApp(BuildContext context);
  Future<dynamic> launchStore(String appStoreW, googlePlayW);
  void launchViber(BuildContext context);
  void launchEmail(BuildContext context);
  Future<dynamic> launchGithub();
}