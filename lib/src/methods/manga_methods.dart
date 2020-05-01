import 'package:jikart/src/utils/jikart_client.dart';

import 'package:jikart/jikan_objects.dart';

class MangaMethods{
  final JikartClient _client;

  MangaMethods(this._client);

  Future<Manga> getManga(int id) async{
    var response = await _client.get('manga/${id}');
    return Manga.fromJson(response);
  }

  Future<List<MangaCharacter>> getCharacters(int id) async{
    var response = await _client.get('manga/${id}/characters');
    var characters = response['characters'] as List;
    return List.generate(characters.length, (i) => MangaCharacter.fromJson(characters[i]));
  }

  Future<List<News>> getNews(int id) async{
    var response = await _client.get('manga/${id}/news');
    var news_list = response['articles'] as List;
    return List.generate(news_list.length, (i) => News.fromJson(news_list[i]));
  }

  Future<List<Picture>> getPictures(int id) async{
    var response = await _client.get('manga/${id}/pictures');
    var pictures = response['pictures'] as List;
    return List.generate(pictures.length, (i) => Picture.fromJson(pictures[i]));
  }

  Future<MangaStats> getStats(int id) async{
    var response = await _client.get('manga/${id}/stats');
    return MangaStats.fromJson(response);
  }

  Future<List<Topic>> getForumTopics(int id) async{
    var response = await _client.get('manga/${id}/forum');
    var topics = response['topics'] as List;
    return List.generate(topics.length, (i) => Topic.fromJson(topics[i]));
  }

  Future<String> getMoreInfo(int id) async{
    var response = await _client.get('manga/${id}/moreinfo');
    return response['moreinfo'];
  }

  Future<List<MangaReview>> getReviews(int id, {int page = 1}) async{
    var response = await _client.get('manga/${id}/reviews/${page}');
    var reviews = response['reviews'] as List;
    return List.generate(reviews.length, (i) => MangaReview.fromJson(reviews[i]));
  }

  Future<List<Recommendation>> getRecommendations(int id) async{
    var response = await _client.get('manga/${id}/recommendations');
    var recommendations = response['recommendations'] as List;
    return List.generate(recommendations.length, (i) => Recommendation.fromJson(recommendations[i]));
  }
}
