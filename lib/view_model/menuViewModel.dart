import 'dart:io';

import 'package:danisdoc/interfaces/menuInterface.dart';
import 'package:danisdoc/utils/alertDialog.dart';
import 'package:danisdoc/utils/customScreenAnimation.dart';
import 'package:danisdoc/utils/emptyContainer.dart';
import 'package:danisdoc/view/about/pages/about.dart';
import 'package:danisdoc/view/newDocument/pages/newDocumentForm.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MenuViewModel implements MenuInterface {
  @override
  goToDocuments(BuildContext context) {}

  @override
  goToInfo(BuildContext context) {
    Navigator.of(context).push(SlideAnimationTeen(widget: About()));
  }

  @override
  goToNewDocument(BuildContext context) {
    Navigator.of(context).push(SlideAnimationTeen(widget: DocumentForm()));
  }

  @override
  Future<bool> quitDialog(BuildContext context) {
    return showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext context) {
            return alertDialog(
                context,
                'Do you want to exit the app?',
                'Press Ok for exiting the app.',
                'Press cancel for closing the dialog.',
                exitApp);
          },
        ) ??
        true;
  }

  @override
  exitApp() {
    exit(0);
  }


}
