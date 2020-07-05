import 'package:danisdoc/utils/size_config.dart';
import 'package:danisdoc/view/menu/widgets/appExtension.dart';
import 'package:danisdoc/view/menu/widgets/firstCont.dart';
import 'package:danisdoc/view/menu/widgets/headline.dart';
import 'package:danisdoc/view/menu/widgets/secondContainer.dart';
import 'package:danisdoc/view/menu/widgets/subTitle.dart';
import 'package:danisdoc/view/menu/widgets/thirdContainer.dart';
import 'package:danisdoc/view_model/menuViewModel.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 10),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.black,
                  size: SizeConfig.safeBlockHorizontal * 7,
                )),
          )
        ],
      ),
      body: WillPopScope(
        onWillPop: () => MenuViewModel().quitDialog(context),
        child: Stack(
          children: <Widget>[
            thirdContainer(context),
            secondContainer(context),
            firstContainer(context),
            /// app cont
            appExtension(),
            headline(),
            subTitle(),
          ],
        ),
      ),
    );
  }
}
