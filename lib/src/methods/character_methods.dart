import 'package:jikart/src/utils/jikart_client.dart';

import 'package:jikart/jikan_objects.dart';

class CharacterMethods{
  final JikartClient _client;

  CharacterMethods(this._client);

  Future<Character> getCharacter(int id) async{
    var response = await _client.get('character/${id}');
    return Character.fromJson(response);
  }

  Future<List<Picture>> getPictures(int id) async{
    var response = await _client.get('character/${id}/pictures');
    var pictures = response['pictures'] as List;
    return List.generate(pictures.length, (i) => Picture.fromJson(pictures[i]));
  }
}
