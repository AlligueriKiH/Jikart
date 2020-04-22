import 'package:http/http.dart';
import 'dart:convert';
import 'package:jikart/src/exceptions/jikartexception.dart';

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
    var json = jsonDecode(await response.stream.bytesToString());
    if(json['error'] != null){
      throw JikartException(code: json['status'], message: json['message']);
    }
    return json;
  }
}
