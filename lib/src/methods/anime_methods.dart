import 'package:jikart/src/utils/jikart_client.dart';

class AnimeMethods{
  final JikartClient _client;

  AnimeMethods(this._client);

  Future<Map> getAnime(int id){
    return(_client.get('anime/${id}'));
  }
}
