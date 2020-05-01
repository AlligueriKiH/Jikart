import 'package:jikart/src/utils/jikart_client.dart';

import 'package:jikart/jikan_objects.dart';

class AnimeMethods{
  final JikartClient _client;

  AnimeMethods(this._client);

  Future<Anime> getAnime(int id) async{
    var response = await _client.get('anime/${id}');
    return(Anime.fromJson(response));
  }

  Future<List<Staff>> getStaff(int id) async{
    var response = await _client.get('anime/${id}/characters_staff');
    var staff_list = response['staff'] as List;
    return List.generate(staff_list.length, (i) => Staff.fromJson(staff_list[i]));
  }

  Future<List<AnimeCharacter>> getCharacters(int id) async{
    var response = await _client.get('anime/${id}/characters_staff');
    var characters = response['characters'] as List;
    return List.generate(characters.length, (i) => AnimeCharacter.fromJson(characters[i]));
  }

  Future<List<Episode>> getEpisodes(int id, {int page = 1}) async{
    var response = await _client.get('anime/${id}/episodes/${page}');
    var episodes = response['episodes'] as List;
    return List.generate(episodes.length, (i) => Episode.fromJson(episodes[i]));
  }

  Future<List<News>> getNews(int id) async{
    var response = await _client.get('anime/${id}/news');
    var news_list = response['articles'] as List;
    return List.generate(news_list.length, (i) => News.fromJson(news_list[i]));
  }

  Future<List<Picture>> getPictures(int id) async{
    var response = await _client.get('anime/${id}/pictures');
    var pictures = response['pictures'] as List;
    return List.generate(pictures.length, (i) => Picture.fromJson(pictures[i]));
  }

  Future<List<Video>> getPromos(int id) async{
    var response = await _client.get('anime/${id}/videos');
    var videos = response['promo'] as List;
    return List.generate(videos.length, (i) => Video.fromJson(videos[i]));
  }

  Future<List<Video>> getEpisodesVideos(int id) async{
    var response = await _client.get('anime/${id}/videos');
    var videos = response['episodes'] as List;
    return List.generate(videos.length, (i) => Video.fromJson(videos[i]));
  }

  Future<AnimeStats> getStats(int id) async{
    var response = await _client.get('anime/${id}/stats');
    return(AnimeStats.fromJson(response));
  }

  Future<List<Topic>> getForumTopics(int id) async{
    var response = await _client.get('anime/${id}/forum');
    var topics = response['topics'] as List;
    return List.generate(topics.length, (i) => Topic.fromJson(topics[i]));
  }

  Future<String> getMoreInfo(int id) async{
    var response = await _client.get('anime/${id}/moreinfo');
    return response['moreinfo'];
  }

  Future<List<AnimeReview>> getReviews(int id, {int page = 1}) async{
    var response = await _client.get('anime/${id}/reviews/${page}');
    var reviews = response['reviews'] as List;
    return List.generate(reviews.length, (i) => AnimeReview.fromJson(reviews[i]));
  }

  Future<List<Recommendation>> getRecommendations(int id) async{
    var response = await _client.get('anime/${id}/recommendations');
    var recommendations = response['recommendations'] as List;
    return List.generate(recommendations.length, (i) => Recommendation.fromJson(recommendations[i]));
  }

  Future<List<AnimeUserUpdate>> getUserUpdates(int id, {int page = 1}) async{
    var response = await _client.get('anime/${id}/userupdates/${page}');
    var userupdates = response['users'] as List;
    return List.generate(userupdates.length, (i) => AnimeUserUpdate.fromJson(userupdates[i]));
  }
}
