

import 'package:flutter/material.dart';

abstract class MenuInterface {
   goToNewDocument(BuildContext context);
   goToDocuments(BuildContext context);
   goToInfo(BuildContext context);
   Future<bool> quitDialog(BuildContext context);
}