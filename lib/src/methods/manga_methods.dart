import 'package:jikart/src/utils/jikart_client.dart';

import 'package:jikart/jikan_objects.dart';

class MangaMethods{
  final JikartClient _client;

  MangaMethods(this._client);

  Future<Manga> getManga(int id) async{
    var response = await _client.get('manga/${id}');
    return Manga.fromJson(response);
  }
}
