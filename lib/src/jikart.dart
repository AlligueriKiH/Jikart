import 'package:jikart/src/utils/jikart_client.dart';
import 'package:jikart/jikart_methods.dart';

class Jikart{
  JikartClient _client;

  AnimeMethods _anime;
  CharacterMethods _character;
  MangaMethods _manga;
  PersonMethods _person;
  SearchMethods _search;

  Jikart(){
    _client = JikartClient();
    _anime = AnimeMethods(_client);
    _character = CharacterMethods(_client);
    _manga = MangaMethods(_client);
    _person = PersonMethods(_client);
    _search = SearchMethods(_client);
  }

  AnimeMethods get anime => _anime;
  CharacterMethods get character => _character;
  MangaMethods get manga => _manga;
  PersonMethods get person => _person;
  SearchMethods get search => _search;
}
