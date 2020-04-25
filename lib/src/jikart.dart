import 'package:jikart/src/utils/jikart_client.dart';
import 'package:jikart/jikart_methods.dart';

class Jikart{
  JikartClient _client;

  AnimeMethods _anime;
  MangaMethods _manga;

  Jikart(){
    _client = JikartClient();
    _anime = AnimeMethods(_client);
    _manga = MangaMethods(_client);
  }

  AnimeMethods get anime => _anime;
  MangaMethods get manga => _manga;
}
