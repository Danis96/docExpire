import 'package:danisdoc/utils/dateUtil.dart';

class Doc {
  int id;
  String title, expiration;
  int fqYear, fqHalfYear, fqQuarter, fqMonth;

  /// when we are calling existing document
  Doc(
      {this.title,
      this.expiration,
      this.fqHalfYear,
      this.fqMonth,
      this.fqQuarter,
      this.fqYear});

  /// when we are creating new document
  Doc.withID({
    this.id,
    this.fqQuarter,
    this.fqMonth,
    this.fqHalfYear,
    this.expiration,
    this.title,
    this.fqYear,
  });

  /// [toMap()] - when we want to write into our db
  Map<String, dynamic> toMap() {

    var map = Map<String, dynamic>();

    map['title'] = this.title;
    map['expiration'] = this.expiration;
    map['fqYear'] = this.fqYear;
    map['fqHalfYear'] = this.fqHalfYear;
    map['fqQuarter'] = this.fqQuarter;
    map['fqMonth'] = this.fqMonth;

    if(id != null) {
      map['id'] = id;
    }
    return map;
  }

  /// [Doc.fromObject()] we use when we want to read data from db
  Doc.fromObject(dynamic o) {

    this.id = o['id'];
    this.title = o['title'];
    this.expiration = DateUtil.trimDate(o['expiration']);
    this.fqYear = o['fqYear'];
    this.fqHalfYear = o['fqHalfYear'];
    this.fqQuarter = o['fqQuarter'];
    this.fqMonth = o['fqMonth'];

  }



}
