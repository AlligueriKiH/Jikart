import 'package:jikart/jikan_objects.dart';

class Period{
  String _from_string;
  String _to_string;
  JikanDate _from;
  JikanDate _to;
  String _string;

  Period(
      this._from_string,
      this._to_string,
      this._from,
      this._to,
      this._string);

  factory Period.fromJson(Map<String, dynamic> json){
    var from_string = json['from'];
    var to_string = json['to'];
    var from = JikanDate.fromJson(json['prop']['from']);
    var to = JikanDate.fromJson(json['prop']['to']);
    var string = json['string'];
    return Period(from_string, to_string, from, to, string);
  }

  String get from_string => _from_string;
  String get to_string => _to_string;
  JikanDate get from => _from;
  JikanDate get to => _to;
  String get string => _string;
}
