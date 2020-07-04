

import 'package:danisdoc/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class MonthRows {

  Widget oneMonthRow() {
    return Container(
      margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 65,
          left: SizeConfig.blockSizeHorizontal * 10
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              'Alert for 1 month',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: SizeConfig.safeBlockHorizontal * 5),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 20),
            width: SizeConfig.blockSizeHorizontal * 15,
            height: SizeConfig.blockSizeVertical * 3,
            child: LiteRollingSwitch(
              iconOff: null,
              textOff: '',
              colorOn: Color.fromRGBO(138, 86, 172, 1.0),
              colorOff: Colors.black.withOpacity(0.5),
              value: false,
              onChanged: (bool state) {
                print('turned ${(state) ? 'on' : 'off'}');
              },
            ),
          )
        ],
      ),
    );
  }


  Widget threeMonthRow() {
    return Container(
      margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 60,
          left: SizeConfig.blockSizeHorizontal * 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              'Alert for 3 months',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: SizeConfig.safeBlockHorizontal * 5),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 16.5),
            width: SizeConfig.blockSizeHorizontal * 15,
            height: SizeConfig.blockSizeVertical * 3,
            child: LiteRollingSwitch(
              iconOff: null,
              textOff: '',
              colorOn: Color.fromRGBO(138, 86, 172, 1.0),
              colorOff: Colors.black.withOpacity(0.5),
              value: false,
              onChanged: (bool state) {
                print('turned ${(state) ? 'on' : 'off'}');
              },
            ),
          )
        ],
      ),
    );
  }


  Widget sixMonthRow() {
    return Container(
      margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 55,
          left: SizeConfig.blockSizeHorizontal * 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              'Alert for 6 months',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: SizeConfig.safeBlockHorizontal * 5),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 16.5),
            width: SizeConfig.blockSizeHorizontal * 15,
            height: SizeConfig.blockSizeVertical * 3,
            child: LiteRollingSwitch(
              iconOff: null,
              textOff: '',
              colorOn: Color.fromRGBO(138, 86, 172, 1.0),
              colorOff: Colors.black.withOpacity(0.5),
              value: false,
              onChanged: (bool state) {
                print('turned ${(state) ? 'on' : 'off'}');
              },
            ),
          )
        ],
      ),
    );
  }


  Widget yearRow() {
    return Container(
      margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 50,
          left: SizeConfig.blockSizeHorizontal * 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Text(
              'Alert for 1.5 & 1 year(s)',
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: SizeConfig.safeBlockHorizontal * 5),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: SizeConfig.blockSizeHorizontal * 5),
            width: SizeConfig.blockSizeHorizontal * 15,
            height: SizeConfig.blockSizeVertical * 3,
            child: LiteRollingSwitch(
              iconOff: null,
              textOff: '',
              colorOn: Color.fromRGBO(138, 86, 172, 1.0),
              colorOff: Colors.black.withOpacity(0.5),
              value: false,
              onChanged: (bool state) {
                print('turned ${(state) ? 'on' : 'off'}');
              },
            ),
          )
        ],
      ),
    );
  }



}