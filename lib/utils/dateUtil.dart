import 'package:danisdoc/interfaces/dateInterfaces.dart';
import 'package:intl/intl.dart';

class DateUtil implements DateInterface {
  /// here we take date as input var
  /// and attempts to parse it
  /// if success we get back d, else we return null
  static DateTime convertToDate(String input) {
    try {
      var d = DateFormat('yyyy-MM-dd').parseStrict(input);
      return d;
    } catch (e) {
      return null;
    }
  }

  static String convertToDateFull(String input) {
    try {
      var d = DateFormat('yyyy-MM-dd').parseStrict(input);
      var formatter = DateFormat('dd MMM yyyy');
      return formatter.format(d);
    } catch (e) {
      return null;
    }
  }

  static String convertToDateFullDt(DateTime input) {
    try {
      var formatter = DateFormat('dd MMM yyyy');
      return formatter.format(input);
    } catch (e) {
      return null;
    }
  }

  static bool isDate(String str) {
    try {
      var d = DateFormat('yyyy-MM-dd').parseStrict(str);
      return true;
    } catch (e) {
      return false;
    }
  }

  static bool isValidate(String dt) {
    if (dt.isEmpty || !dt.contains('-') || dt.length < 10) return false;

    List<String> dtItems = dt.split('-');
    var d = DateTime(
        int.parse(dtItems[0]), int.parse(dtItems[1]), int.parse(dtItems[2]));

    return d != null && isDate(dt) && d.isAfter(DateTime.now());
  }

  /// String f
  static String daysAheadAsString(int daysAhead) {
    var now = DateTime.now();
    DateTime ft = now.add(Duration(days: daysAhead));
    return ftDaysAsString(ft);
  }

  static String ftDaysAsString(DateTime ft) {
    return ft.year.toString() +
        '-' +
        ft.month.toString().padLeft(2, '0') +
        '-' +
        ft.day.toString().padLeft(2, '0');
  }

  static String trimDate(String dt) {
    if (dt.contains(" ")) {
      List<String> p = dt.split(' ');
      return p[0];
    } else
      return dt;
  }
}
