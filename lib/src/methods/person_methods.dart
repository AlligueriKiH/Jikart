import 'package:jikart/src/utils/jikart_client.dart';

import 'package:jikart/jikan_objects.dart';

class PersonMethods{
  final JikartClient _client;

  PersonMethods(this._client);

  Future<Person> getPerson(int id) async{
    var response = await _client.get('person/${id}');
    return Person.fromJson(response);
  }

  Future<List<Picture>> getPictures(int id) async{
    var response = await _client.get('person/${id}/pictures');
    var pictures = response['pictures'] as List;
    return List.generate(pictures.length, (i) => Picture.fromJson(pictures[i]));
  }
}
