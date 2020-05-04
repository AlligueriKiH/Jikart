import 'package:jikart/jikan_objects.dart';

class Period{
  String _fromStr;
  String _toStr;
  JikanDate _from;
  JikanDate _to;
  String _string;

  Period(
      this._fromStr,
      this._toStr,
      this._from,
      this._to,
      this._string);

  factory Period.fromJson(Map<String, dynamic> json){
    var fromStr = json['from'];
    var toStr = json['to'];
    var from = JikanDate.fromJson(json['prop']['from']);
    var to = JikanDate.fromJson(json['prop']['to']);
    var string = json['string'];
    return Period(fromStr, toStr, from, to, string);
  }

  String get fromStr => _fromStr;
  String get toStr => _toStr;
  JikanDate get from => _from;
  JikanDate get to => _to;
  String get string => _string;
}
