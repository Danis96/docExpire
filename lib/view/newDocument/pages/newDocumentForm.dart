import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view/menu/widgets/appExtension.dart';
import 'package:danisdoc/view/newDocument/widgets/addImage.dart';
import 'package:danisdoc/view/newDocument/widgets/extensionText.dart';
import 'package:danisdoc/view/newDocument/widgets/monthRows.dart';
import 'package:danisdoc/view/newDocument/widgets/nameExpireCont.dart';
import 'package:danisdoc/view/newDocument/widgets/saveBtn.dart';
import 'package:danisdoc/view/newDocument/widgets/textfields/expireField.dart';
import 'package:danisdoc/view/newDocument/widgets/textfields/nameField.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class DocumentForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.black.withOpacity(0.5),
              ),
              onPressed: () => Navigator.of(context).pop()),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Stack(
          children: <Widget>[
            nameExpireCont(),
            appExtension(),
            extensionText(),
            textFName(),
            textExpire(),
            addImage(),
            MonthRows().yearRow(),
            MonthRows().sixMonthRow(),
            MonthRows().threeMonthRow(),
            MonthRows().oneMonthRow(),
            saveBtn(),
          ],
        ));
  }
}








