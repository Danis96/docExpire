

import 'package:danisdoc/interfaces/menuInterface.dart';
import 'package:danisdoc/utils/customScreenAnimation.dart';
import 'package:danisdoc/utils/emptyContainer.dart';
import 'package:danisdoc/view/about/pages/about.dart';
import 'package:danisdoc/view/newDocument/pages/newDocumentForm.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';


class MenuViewModel implements MenuInterface {
  @override
  goToDocuments(BuildContext context) {

  }

  @override
  goToInfo(BuildContext context) {
    Navigator.of(context).push(SlideAnimationTeen(widget: About()));
  }

  @override
  goToNewDocument(BuildContext context) {
    Navigator.of(context).push(SlideAnimationTeen(widget: DocumentForm()));
  }

  /// Refaktorisati, izdvojiti alert dialog i napraviti ga reusable
  @override
  Future<bool> quitDialog(BuildContext context)  {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('AlertDialog Title'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('This is a demo alert dialog.'),
                  Text('Would you like to approve of this message?'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Approve'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                child: Text('Approve'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      ) ?? true;


  }



}