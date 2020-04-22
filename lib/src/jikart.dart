import 'package:jikart/src/utils/jikart_client.dart';
import 'package:jikart/jikart_methods.dart';

class Jikart{
  JikartClient _client;

  AnimeMethods _anime;

  Jikart(){
    _client = JikartClient();
    _anime = AnimeMethods(_client);
  }

  AnimeMethods get anime => _anime;
}
