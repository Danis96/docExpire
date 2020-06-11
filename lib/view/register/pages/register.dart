import 'package:doce/utils/colors.dart';
import 'package:doce/utils/size_config.dart';
import 'package:doce/view/register/widgets/headlineText.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: MyColors().registerBackground,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            headlineText('Register',
                'Welcome to DocExpire. \n Please choose  Facebook or Google, or \n you can just fill up the form to sign up.'),
            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: SizeConfig.blockSizeHorizontal * 69,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(color: MyColors().white),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1),
                    width: SizeConfig.blockSizeHorizontal * 70,
                    child: TextFormField(
                      style: TextStyle(
                        color: MyColors().white,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email, color: MyColors().white,),
                        labelText: 'Enter your email',
                        labelStyle: TextStyle(color: MyColors().white),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyColors().white.withOpacity(0.5)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: MyColors().white.withOpacity(0.5))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: MyColors().white.withOpacity(0.5))),
                      ),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
                    width: SizeConfig.blockSizeHorizontal * 69,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(color: MyColors().white),
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1),
                    width: SizeConfig.blockSizeHorizontal * 70,
                    child: TextFormField(
                      style: TextStyle(
                        color: MyColors().white,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.vpn_key, color: MyColors().white,),
                        labelText: 'Enter your password',
                        labelStyle: TextStyle(color: MyColors().white),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: MyColors().white.withOpacity(0.5)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: MyColors().white.withOpacity(0.5))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: MyColors().white.withOpacity(0.5))),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
