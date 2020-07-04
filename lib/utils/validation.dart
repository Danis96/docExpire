import 'package:danisdoc/interfaces/validationInterfaces.dart';
import 'package:danisdoc/utils/dateUtil.dart';

class Val implements ValidationInterface {
  /// here we validate title and send a message accurate to validation
  static String ValidateTitle(String val) {
    return (val != null && val != '') ? null : 'Title cant be empty';
  }

  /// here we convert the expiry date
  /// then we get now time
  /// then we calculate the difference
  /// if dd is positive we convert that value to string
  /// if dd is negative we send '0'
  static String GetExpiryStr(String expires) {
    var e = DateUtil.convertToDate(expires);
    var td = DateTime.now();

    Duration diff = e.difference(td);
    int dd = diff.inDays + 1;

    return (dd > 0) ? dd.toString() : '0';
  }

  static bool StrToBool(String str) {
    return (int.parse(str) > 0) ? true : false;
  }

  static bool IntToBool(int val) {
    return (val > 0) ? true : false;
  }

  static BoolToStr(bool val) {
    return (val == true) ? '1' : '0';
  }

  static BoolToInt(bool val) {
    return (val == true) ? 1 : 0;
  }


}
