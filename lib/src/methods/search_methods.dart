import 'package:jikart/src/utils/jikart_client.dart';

import 'package:jikart/jikan_objects.dart';

class SearchMethods{
  final JikartClient _client;

  SearchMethods(this._client);

  Future<List<SearchAnime>> anime(String query, {int page = 1}) async{
    var response = await _client.get('search/anime', params: {'q': query, 'page': page.toString()});
    var results = response['results'] as List;
    return List.generate(results.length, (i) => SearchAnime.fromJson(results[i]));
  }
}
