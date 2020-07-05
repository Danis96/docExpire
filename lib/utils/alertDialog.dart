import 'dart:io';

import 'package:flutter/material.dart';

Widget alertDialog(
    BuildContext context, String title, text1, text2, Function ok) {
  return AlertDialog(
    title: Text(title),
    content: SingleChildScrollView(
      child: ListBody(
        children: <Widget>[
          Text(text1),
          Text(text2),
        ],
      ),
    ),
    actions: <Widget>[
      FlatButton(
        child: Text('Cancel'),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      FlatButton(
        child: Text('Ok'),
        onPressed: () => ok(),
      )
    ],
  );
}
