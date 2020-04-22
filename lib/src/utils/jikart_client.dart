import 'package:http/http.dart';
import 'dart:convert';
import 'package:jikart/src/exceptions/jikart_exception.dart';
import 'package:jikart/src/exceptions/generic_exception.dart';

class JikartClient {
  String _api_path;
  String _api_version;
  final Client _client = Client();

  JikartClient(){
    _api_path = 'api.jikan.moe';
    _api_version = 'v3';
  }

  Future<Map> get(String method) async{
    var uri = Uri.https(_api_path, '${_api_version}/${method}');
    var response = await _client.send(Request('GET', uri));
    var data = await response.stream.bytesToString();
    var json;
    try{
      json = jsonDecode(data);
    }
    catch(e){
      throw(GenericException(message: data));
    }
    if(json['error'] != null){
      throw JikartException(code: json['status'], message: json['message']);
    }
    return json;
  }
}
